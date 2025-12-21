unit Mrx.Switch;

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
  FMX.Ani,
  System.math,
  FMX.Effects;

type
  TMrxSwitch = class(TFrame)
    xBackground: TRectangle;
    xCircle: TRectangle;
    xAniTrue: TFloatAnimation;
    xAniFalse: TFloatAnimation;
    xAniColorTrue: TColorAnimation;
    xAniColorFalse: TColorAnimation;
    xAniCircleColorTrue: TColorAnimation;
    xAniCircleColorFalse: TColorAnimation;
    procedure FrameClick(Sender: TObject);
  private
    xValue: boolean;
    function GetValue: Boolean;
  public
    procedure isSwitched(status: boolean);
    property Value: Boolean read GetValue;
  end;

implementation

{$R *.fmx}

procedure TMrxSwitch.FrameClick(Sender: TObject);
begin
  isSwitched(IfThen(xValue.ToInteger = 1, 0, 1).ToBoolean);
end;

function TMrxSwitch.GetValue: Boolean;
begin
  Result := xValue;
end;

procedure TMrxSwitch.isSwitched(status: boolean);
begin
  xValue := status;
  case status of
    true:
      begin
        xAniTrue.Start;
        xAniColorTrue.Start;
        xAniCircleColorTrue.Start;
      end;
    false:
      begin
        xAniFalse.Start;
        xAniColorFalse.Start;
        xAniCircleColorFalse.Start;
      end;
  end;
end;

end.

