unit Mrx.Text;

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
  System.Skia,
  System.Math,
  FMX.Skia;

type
  TMrxText = class(TFrame)
    xText: TSkLabel;
    procedure xTextResized(Sender: TObject);
  private
    xAutoHeight: Boolean;
    procedure SetAutoHeight(const Value: Boolean);
  public
    property AutoHeight: Boolean read xAutoHeight write SetAutoHeight default True;
  end;

implementation

{$R *.fmx}

procedure TMrxText.SetAutoHeight(const Value: Boolean);
begin
  xAutoHeight := Value;
  if Value then
    self.Height := Max(xText.Height, 40);
end;

procedure TMrxText.xTextResized(Sender: TObject);
var
  NewH: Single;
begin
  if xAutoHeight then
  begin
    NewH := Max(xText.Height + 20, 40);
    if not SameValue(Self.Height, NewH, 0.1) then
      Self.Height := NewH;
  end;
end;

end.

