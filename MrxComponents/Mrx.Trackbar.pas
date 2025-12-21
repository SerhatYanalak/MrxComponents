unit Mrx.Trackbar;

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
  StrUtils,
  FMX.StdCtrls,
  Math,
  FMX.Objects,
  System.Skia,
  FMX.Skia,
  FMX.Layouts;

type
  TMrxTrackbar = class(TFrame)
    xLine: TRectangle;
    xCircle: TRectangle;
    xContent: TLayout;
    procedure xContentMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure xContentMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Single);
    procedure xContentMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
  private
    xDragging: Boolean;
    xValue: Extended;
    function GetValue: Extended;
  public
    property Value: Extended read GetValue;
  end;

implementation

{$R *.fmx}

function CalculatePercent(X, inMin, inMax, outMin, outMax: Extended): Extended;
begin
  Result := (X - inMin) * (outMax - outMin) / (inMax - inMin) + outMin;
end;

function TMrxTrackbar.GetValue: Extended;
begin
  Result := xValue;
end;

procedure TMrxTrackbar.xContentMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  xDragging := true;
end;

procedure TMrxTrackbar.xContentMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Single);
var
  xNewPos, xPercent: Single;
begin
  if xDragging then
  begin
    xNewPos := X - (xCircle.Width / 2);

    if xNewPos < 0 then
      xNewPos := 0
    else if xNewPos > (xLine.Width - xCircle.Width) then
      xNewPos := xLine.Width - xCircle.Width;

    xCircle.Margins.Left := xNewPos;
    xPercent := CalculatePercent(xNewPos, 0, xLine.Width - xCircle.Width, 0, 100);
    xValue := int(xPercent);
  end;
end;

procedure TMrxTrackbar.xContentMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  xDragging := false;
end;

end.

