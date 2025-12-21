unit Mrx.Memo;

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
  FMX.StdCtrls,
  FMX.Objects,
  FMX.Memo.Types,
  FMX.Controls.Presentation,
  FMX.ScrollBox,
  FMX.Memo,
  System.Skia,
  Math,
  FMX.Ani,
  FMX.Skia;

type
  TMrxMemo = class(TFrame)
    xBackground: TRectangle;
    xMemo: TMemo;
    procedure xMemoChangeTracking(Sender: TObject);
  private
    xAutoHeight: Boolean;
    procedure SetAutoHeight(const Value: Boolean);
  public
    property AutoHeight: Boolean read xAutoHeight write SetAutoHeight default False;
  end;

implementation

{$R *.fmx}

procedure TMrxMemo.SetAutoHeight(const Value: Boolean);
begin
  xAutoHeight := Value;
end;

procedure TMrxMemo.xMemoChangeTracking(Sender: TObject);
var
  xValue: Single;
begin
  xValue := (xMemo.Content.Height + 35);
  if xAutoHeight then
    TAnimator.AnimateFloat(self, 'Height', max(xValue, 100), 0.1);
end;

end.
