unit MrxTools;

interface

uses
  System.SysUtils,
  System.Classes,
  System.JSON,
  System.IOUtils,
  FMX.StdCtrls,
  FMX.Skia,
  FMX.Edit;

type
  TMrxLanguages = class
    class procedure TranslateUI(AFrom: TComponent);
    class procedure LanguageLoad(FilePath: string);

    class function Translate(Key: string): string;
  private
    class var
      JSON: string;
      JSONData: TJSONObject;
  public
  end;

implementation

uses
  Mrx.Text,
  Mrx.Button;

/// <summary>
/// Bu islem kullanýcýnýn arayuz dilini yeniler.
/// </summary>
/// <param name="AForm">Dil guncellemesi yapilacak form veya frame.</param>
class procedure TMrxLanguages.TranslateUI(AFrom: TComponent);
var
  I, A: Integer;
  C: TComponent;
  CMrxText: TMrxText;
  CLabel: TLabel;
  CSkiaLabel: tsklabel;
  CEdit: TEdit;
  CMrxButton: TMrxButton;
  CButton: TButton;
begin
  for I := 0 to AFrom.ComponentCount - 1 do begin
    C := AFrom.Components[I];

    if C is TMrxText then begin
      CMrxText := TMrxText(C);
      for A := 0 to CMrxText.xText.Words.Count - 1 do
        CMrxText.xText.Words[A].Text := Translate(CMrxText.xText.Words[A].Text);
    end;

    if C is TLabel then begin
      CLabel := TLabel(C);
      CLabel.Text := Translate(CLabel.Text);
    end;

    if C is TSkLabel then begin
      CSkiaLabel := TSkLabel(C);
      for A := 0 to CSkiaLabel.Words.Count - 1 do
        CSkiaLabel.Words[A].Text := Translate(CSkiaLabel.Words[A].Text);
    end;

    if C is TEdit then begin
      CEdit := TEdit(C);
      CEdit.Text := Translate(CEdit.TextPrompt);
    end;

    if C is TMrxButton then begin
      CMrxButton := TMrxButton(C);
      for A := 0 to CMrxButton.xText.Words.Count - 1 do
        CMrxButton.xText.Words[A].Text := Translate(CMrxButton.xText.Words[A].Text);
    end;

    if C is TButton then begin
      CButton := TButton(C);
      CButton.Text := Translate(CButton.Text);
    end;
  end;
end;

class function TMrxLanguages.Translate(Key: string): string;
var
  JSONValue: TJSONValue;
begin

  if not Assigned(JSONData) then
    Exit(Key);

  JSONValue := JSONData.GetValue(Key);

  if Assigned(JSONValue) then
    Result := JSONValue.Value
  else
    Result := Key;
end;

class procedure TMrxLanguages.LanguageLoad(FilePath: string);
begin
  if not FileExists(FilePath) then
    Exit;

  try
{$IF DEFINED(IOS)}
    JSON := TFile.ReadAllText(FilePath, TEncoding.ANSI);
{$ELSE}
    JSON := TFile.ReadAllText(FilePath, TEncoding.UTF8);
{$ENDIF}

    if Assigned(JSONData) then
      FreeAndNil(JSONData);

    JSONData := TJSONObject.ParseJSONValue(JSON) as TJSONObject;
  except
    on E: Exception do begin
      FreeAndNil(JSONData);
      JSON := '{}';
    end;
  end;
end;

initialization
  TMrxLanguages.JSON := '{}';
  TMrxLanguages.JSONData := nil;

finalization
  TMrxLanguages.JSONData.Free;

end.
