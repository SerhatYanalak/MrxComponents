unit Mrx.Star;

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
  FMX.Layouts,
  FMX.Objects,
  ComponentViewAssistant;

type
  TMrxStar = class(TFrame)
    xScaled: TScaledLayout;
    xLayout: TFlowLayout;
    xStar1: TPath;
    xStar2: TPath;
    xStar3: TPath;
    xStar4: TPath;
    xStar5: TPath;
    procedure xStar1Click(Sender: TObject);
  private
    xValue: integer;
    function GetValue: integer;
  public
    property Value: integer read GetValue;
    procedure Clear;
    procedure StarValue(value: integer);
  end;

implementation

{$R *.fmx}

function TMrxStar.GetValue: integer;
begin
  Result := xValue;
end;

procedure TMrxStar.Clear;
begin
  for var i := 1 to 5 do
    TPath(FindComponent('xStar' + i.ToString)).Fill.Color := MrxTriggerColors.Untriggered;
end;

procedure TMrxStar.StarValue(value: integer);
begin
  Clear;
  xValue := value;
  for var i := 1 to value do
    TPath(FindComponent('xStar' + i.ToString)).Fill.Color := MrxTriggerColors.Triggered;
end;

procedure TMrxStar.xStar1Click(Sender: TObject);
begin
  StarValue(TPath(Sender).Tag);
end;

end.

