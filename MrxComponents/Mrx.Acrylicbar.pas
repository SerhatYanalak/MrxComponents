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
  ComponentViewAssistant;

type
  TRectangle = class(FMX.Objects.TRectangle)
  protected
    procedure Paint; override;
  end;

type
  TMrxAcrylicbar = class(TFrame)
    xBackground: TRectangle;
  private
    fEnabled: Boolean;

  public
    property EffectEnabled: Boolean read fEnabled write fEnabled;
  end;

implementation

{$R *.fmx}

uses
  System.Skia,
  FMX.Skia.Canvas;

procedure TRectangle.Paint;
var
  LCanvas: ISkCanvas;
  LSaveCount: Integer;
begin

  if (Canvas is TSkCanvasCustom) and (TMrxAcrylicbar(Parent).EffectEnabled) then
  begin
    LCanvas := TSkCanvasCustom(Canvas).Canvas;
    LSaveCount := LCanvas.Save;
    try
      LCanvas.ClipRect(LocalRect, TSkClipOp.Intersect, True);
      LCanvas.SaveLayer(LocalRect, nil, TSkImageFilter.MakeBlur(10, 10, nil, TSkTileMode.Clamp), [TSkSaveLayerFlag.InitWithPrevious]);
      inherited;
    finally
      LCanvas.RestoreToCount(LSaveCount);
    end;
  end
  else
    inherited;
end;

end.

