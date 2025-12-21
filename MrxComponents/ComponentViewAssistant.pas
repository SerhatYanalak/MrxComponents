unit ComponentViewAssistant;

interface

uses
  System.SysUtils,
  System.Classes,
  System.UITypes,
  FMX.Forms,
  FMX.Types,
  System.Math,
  System.UIConsts;

type
  TMrxThemeColorTypes = (colorTypeBackground, colorTypeFont, colorTypeTriggered, colorTypeUntriggered, colorTypeDefault);

  TMrxThemes = (xLight, xDark, xCustom);

  TMrxComponents = (xMrxQRCode, xMrxButtonIcon, xMrxStar, xMrxCircleProgressbar, xMrxLabel, xMrxAcrylicbar, xMrxButton, xMrxCheckbox, xMrxEditImageList, xMrxEditPath, xMrxMemo, xMrxSwitch, xMrxTrackbar, xMrxButtonIconVertical);

  TThemePalette = record
    Background: TAlphaColor;
    Font: TAlphaColor;
    Triggered: TAlphaColor;
    Untriggered: TAlphaColor;
    Default: TAlphaColor;
  end;

  TMrxTriggerColors = record
    Untriggered: TAlphaColor;
    Triggered: TAlphaColor;
    Font: TAlphaColor;
  end;

var
  MrxTriggerColors: TMrxTriggerColors;

procedure ApplyTheme(AForm: TFmxObject; ATheme: TMrxThemes);

implementation

uses
  Mrx.Acrylicbar,
  Mrx.Button,
  Mrx.Checkbox,
  Mrx.EditImageList,
  Mrx.EditPath,
  Mrx.Memo,
  Mrx.Switch,
  Mrx.Trackbar,
  Mrx.ButtonIconTextVertical,
  Mrx.Text,
  Mrx.CircleProgressbar,
  Mrx.Star,
  Mrx.ButtonIcon,
  Mrx.QRCode,
  Themes;

var
  MrxThemeInitialized: Boolean = False;

function GetThemeColor(ATheme: TMrxThemes; AType: TMrxThemeColorTypes): TAlphaColor;
begin
  case AType of
    colorTypeBackground:
      Result := ThemePalettes[ATheme].Background;
    colorTypeFont:
      Result := ThemePalettes[ATheme].Font;
    colorTypeTriggered:
      Result := ThemePalettes[ATheme].Triggered;
    colorTypeUntriggered:
      Result := ThemePalettes[ATheme].Untriggered;
    colorTypeDefault:
      Result := ThemePalettes[ATheme].Default;
  else
    Result := $FFFFFFFF;
  end;
end;

function DarkenColor(const AColor: TAlphaColor; const Factor: Single = 0.85): TAlphaColor;

  function MakeColor(const R, G, B, A: Byte): TAlphaColor; inline;
  begin
    Result := (A shl 24) or (R shl 16) or (G shl 8) or B;
  end;

var
  A, R, G, B: Byte;
  rF, gF, bF: Integer;
begin
  A := TAlphaColorRec(AColor).A;
  rF := Round(TAlphaColorRec(AColor).R * Factor);
  gF := Round(TAlphaColorRec(AColor).G * Factor);
  bF := Round(TAlphaColorRec(AColor).B * Factor);

  R := Byte(EnsureRange(rF, 0, 255));
  G := Byte(EnsureRange(gF, 0, 255));
  B := Byte(EnsureRange(bF, 0, 255));

  Result := MakeColor(R, G, B, A);
end;

procedure ApplyTheme(AForm: TFmxObject; ATheme: TMrxThemes);
var
  I: Integer;
  C: TComponent;
  MrxComponent: TMrxComponents;
  CMrxButton: TMrxButton;
  CMrxAcrylicbar: TMrxAcrylicbar;
  CMrxCheckbox: TMrxCheckbox;
  CMrxSwitch: TMrxSwitch;
  CMrxTrackbar: TMrxTrackbar;
  CMrxEditImageList: TMrxEditImageList;
  CMrxEditPath: TMrxEditPath;
  CMrxMemo: TMrxMemo;
  CMrxButtonIconVertical: TMrxButtonIconTextVertical;
  CMrxText: TMrxText;
  CMrxCircleProgressbar: TMrxCircleProgressbar;
  CMrxStar: TMrxStar;
  CMrxButtonIcon: TMrxButtonIcon;
  CMrxQRCode: TMrxQRCode;
begin

  MrxTriggerColors.Untriggered := GetThemeColor(ATheme, colorTypeUntriggered);
  MrxTriggerColors.Triggered := GetThemeColor(ATheme, colorTypeTriggered);
  MrxTriggerColors.Font := GetThemeColor(ATheme, colorTypeFont);

  for MrxComponent := Low(TMrxComponents) to High(TMrxComponents) do
  begin
    for I := 0 to AForm.ComponentCount - 1 do
    begin
      C := AForm.Components[I];

      case MrxComponent of
        xMrxAcrylicbar:
          if C is TMrxAcrylicbar then
          begin
            CMrxAcrylicbar := TMrxAcrylicbar(C);
            with CMrxAcrylicbar do
            begin
              xBackground.Fill.Color := GetThemeColor(ATheme, colorTypeBackground);
            end;
          end;
        xMrxButton:
          if C is TMrxButton then
          begin
            CMrxButton := TMrxButton(C);
            with CMrxButton do
            begin
              CMrxButton.xAniColor.StartValue := GetThemeColor(ATheme, colorTypeBackground);
              CMrxButton.xAniColor.StopValue := (DarkenColor(CMrxButton.xAniColor.StartValue));

              xAniRadiusX.StartValue := Min(Width, Height) / 4;
              xAniRadiusX.StopValue := Min(Width, Height) / 2;
              xAniRadiusY.StartValue := Min(Width, Height) / 4;
              xAniRadiusY.StopValue := Min(Width, Height) / 2;

              xBackground.XRadius := Min(Width, Height) / 4;
              xBackground.YRadius := Min(Width, Height) / 4;

              xText.TextSettings.FontColor := GetThemeColor(ATheme, colorTypeFont);
              xBackground.Fill.Color := GetThemeColor(ATheme, colorTypeBackground);
            end;
          end;
        xMrxCheckbox:
          if C is TMrxCheckbox then
          begin
            CMrxCheckbox := TMrxCheckbox(C);
            with CMrxCheckbox do
            begin
              xCheckBackground.Fill.Color := MrxTriggerColors.Untriggered;
              xCheckPath.Fill.Color := MrxTriggerColors.Untriggered;
              xText.TextSettings.FontColor := GetThemeColor(ATheme, colorTypeFont);
            end;
          end;
        xMrxSwitch:
          if C is TMrxSwitch then
          begin
            CMrxSwitch := TMrxSwitch(C);
            with CMrxSwitch do
            begin
              if xCircle.Margins.Left = 0 then
              begin
                xBackground.Fill.Color := MrxTriggerColors.Untriggered;
                xCircle.Fill.Color := GetThemeColor(ATheme, colorTypeBackground);
              end
              else
              begin
                xBackground.Fill.Color := MrxTriggerColors.triggered;
                xCircle.Fill.Color := GetThemeColor(ATheme, colorTypeUntriggered);
              end;

              xAniColorTrue.StartValue := MrxTriggerColors.Untriggered;
              xAniColorTrue.StopValue := MrxTriggerColors.triggered;
              xAniColorFalse.StartValue := MrxTriggerColors.triggered;
              xAniColorFalse.StopValue := MrxTriggerColors.Untriggered;

              xAniCircleColorTrue.StartValue := GetThemeColor(ATheme, colorTypeBackground);
              xAniCircleColorTrue.StopValue := GetThemeColor(ATheme, colorTypeUntriggered);

              xAniCircleColorFalse.StartValue := GetThemeColor(ATheme, colorTypeUntriggered);
              xAniCircleColorFalse.StopValue := GetThemeColor(ATheme, colorTypeBackground);
            end;
          end;
        xMrxTrackbar:
          if C is TMrxTrackbar then
          begin
            CMrxTrackbar := TMrxTrackbar(C);
            with CMrxTrackbar do
            begin
              CMrxTrackbar.xLine.Fill.Color := GetThemeColor(ATheme, colorTypeUntriggered);
              CMrxTrackbar.xCircle.Fill.Color := GetThemeColor(ATheme, colorTypeTriggered);
            end;
          end;
        xMrxEditImageList:
          if C is TMrxEditImageList then
          begin
            CMrxEditImageList := TMrxEditImageList(C);
            with CMrxEditImageList do
            begin
              xBackground.Fill.Color := GetThemeColor(ATheme, colorTypeDefault);
              xEdit.FontColor := GetThemeColor(ATheme, colorTypeFont);
            end;
          end;
        xMrxEditPath:
          if C is TMrxEditPath then
          begin
            CMrxEditPath := TMrxEditPath(C);
            with CMrxEditPath do
            begin
              xBackground.Fill.Color := GetThemeColor(ATheme, colorTypeDefault);
              xEdit.FontColor := GetThemeColor(ATheme, colorTypeFont);
              xIcon.Fill.Color := GetThemeColor(ATheme, colorTypeFont);
            end;
          end;
        xMrxMemo:
          if C is TMrxMemo then
          begin
            CMrxMemo := TMrxMemo(C);
            with CMrxMemo do
            begin
              xBackground.Fill.Color := GetThemeColor(ATheme, colorTypeDefault);
              xMemo.FontColor := GetThemeColor(ATheme, colorTypeFont);
            end;
          end;
        xMrxButtonIconVertical:
          if C is TMrxButtonIconTextVertical then
          begin
            CMrxButtonIconVertical := TMrxButtonIconTextVertical(C);
            with CMrxButtonIconVertical do
            begin
              CMrxButtonIconVertical.xAniColor.StartValue := GetThemeColor(ATheme, colorTypeBackground);
              CMrxButtonIconVertical.xAniColor.StopValue := (DarkenColor(CMrxButtonIconVertical.xAniColor.StartValue));

              xAniRadiusX.StartValue := Min(Width, Height) / 3;
              xAniRadiusX.StopValue := Min(Width, Height) / 2;
              xAniRadiusY.StartValue := Min(Width, Height) / 3;
              xAniRadiusY.StopValue := Min(Width, Height) / 2;

              xBackground.XRadius := Min(Width, Height) / 4;
              xBackground.YRadius := Min(Width, Height) / 4;

              xText.TextSettings.FontColor := GetThemeColor(ATheme, colorTypeFont);
              xBackground.Fill.Color := GetThemeColor(ATheme, colorTypeBackground);
            end;
          end;
        xMrxLabel:
          if C is TMrxText then
          begin
            CMrxText := TMrxText(C);
            with CMrxText do
            begin
              xtext.TextSettings.FontColor := GetThemeColor(ATheme, colorTypeFont);
            end;
          end;
        xMrxCircleProgressbar:
          if C is TMrxCircleProgressbar then
          begin
            CMrxCircleProgressbar := TMrxCircleProgressbar(C);
            with CMrxCircleProgressbar do
            begin
              xBackground.Stroke.Color := GetThemeColor(ATheme, colorTypeUntriggered);
              xLine.Stroke.Color := GetThemeColor(ATheme, colorTypeTriggered);
              xtext.TextSettings.FontColor := GetThemeColor(ATheme, colorTypeFont);
            end;
          end;
        xMrxStar:
          if C is TMrxStar then
          begin
            CMrxStar := TMrxStar(C);
            with CMrxStar do
            begin
              CMrxStar.StarValue(CMrxStar.Value);
            end;
          end;
        xMrxButtonIcon:
          if C is TMrxButtonIcon then
          begin
            CMrxButtonIcon := TMrxButtonIcon(C);
            with CMrxButtonIcon do
            begin
              CMrxButtonIcon.xAniColor.StartValue := GetThemeColor(ATheme, colorTypeBackground);
              CMrxButtonIcon.xAniColor.StopValue := (DarkenColor(CMrxButtonIcon.xAniColor.StartValue));

              xAniRadiusX.StartValue := Min(Width, Height) / 4;
              xAniRadiusX.StopValue := Min(Width, Height) / 2;
              xAniRadiusY.StartValue := Min(Width, Height) / 4;
              xAniRadiusY.StopValue := Min(Width, Height) / 2;

              xBackground.XRadius := Min(Width, Height) / 4;
              xBackground.YRadius := Min(Width, Height) / 4;

              xBackground.Fill.Color := GetThemeColor(ATheme, colorTypeBackground);
            end;
          end;
        xMrxQRCode:
          if C is TMrxQRCode then
          begin
            CMrxQRCode := TMrxQRCode(C);
            with CMrxQRCode do
            begin
              xBackground.XRadius := Min(Width, Height) / 4;
              xBackground.YRadius := Min(Width, Height) / 4;
              xBackground.Fill.Color := GetThemeColor(ATheme, colorTypeDefault);
              QRData(Value);
            end;
          end;
      end;
    end;
  end;
end;

end.

