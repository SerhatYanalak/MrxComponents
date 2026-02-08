unit Mrx.Acrylicbar;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Graphics,
  FMX.Controls,
  FMX.Forms,
  FMX.Dialogs,
  FMX.Objects,
  FMX.StdCtrls,
  Mrx.ComponentViewAssistant;

type
  TRectangle = class(FMX.Objects.TRectangle)
  protected
    procedure Paint; override;
  end;

type
  TMrxAcrylicbar = class(TFrame)
    xBackground: TRectangle;
  private
    FEnabled: Boolean;

  public
    property EffectEnabled: Boolean read FEnabled write FEnabled;
  end;

implementation

{$R *.fmx}

uses
  System.Skia,
  FMX.Skia.Canvas,
  System.Math;

procedure TRectangle.Paint;
var
  LCanvas: ISkCanvas;
  LSave: Integer;
  B: ISkPathBuilder;
  P: ISkPath;
  R: TRectF;
  RX, RY: Single;
begin
  if (Canvas is TSkCanvasCustom) and (Parent is TMrxAcrylicbar) and TMrxAcrylicbar(Parent).EffectEnabled then begin
    LCanvas := TSkCanvasCustom(Canvas).Canvas;
    LSave := LCanvas.Save;
    try
      R := LocalRect;
      RX := XRadius;
      RY := YRadius;

      B := TSkPathBuilder.Create;

      B.MoveTo(R.Left + RX, R.Top);
      B.LineTo(R.Right - RX, R.Top);
      B.QuadTo(R.Right, R.Top, R.Right, R.Top + RY);

      B.LineTo(R.Right, R.Bottom - RY);
      B.QuadTo(R.Right, R.Bottom, R.Right - RX, R.Bottom);

      B.LineTo(R.Left + RX, R.Bottom);
      B.QuadTo(R.Left, R.Bottom, R.Left, R.Bottom - RY);

      B.LineTo(R.Left, R.Top + RY);
      B.QuadTo(R.Left, R.Top, R.Left + RX, R.Top);

      B.Close;

      P := B.Detach;

      LCanvas.ClipPath(P, TSkClipOp.Intersect, True);

      LCanvas.SaveLayer(
          R,
          nil,
          TSkImageFilter.MakeBlur(
              IfThen(MrxAcrylicbarSettings.Blur <> 0, MrxAcrylicbarSettings.Blur, 10),
              IfThen(MrxAcrylicbarSettings.Blur <> 0, MrxAcrylicbarSettings.Blur, 10)
          ),
          []
      );

      inherited;
    finally
      LCanvas.RestoreToCount(LSave);
    end;
  end
  else
    inherited;
end;

end.
