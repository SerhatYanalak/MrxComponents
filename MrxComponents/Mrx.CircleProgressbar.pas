unit Mrx.CircleProgressbar;

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
  System.Skia,
  FMX.Skia,
  System.Math,
  FMX.Ani;

type
  TMrxCircleProgressbar = class(TFrame)
    xScaled: TScaledLayout;
    xBackground: TArc;
    xText: TSkLabel;
    xLine: TArc;
    xAniProgress: TFloatAnimation;
  private
    xValue: Extended;
    function GetValue: Extended;

  public
    procedure isValue(value: extended);
    property Value: Extended read GetValue;
  end;

implementation

{$R *.fmx}

function CalculatePercent(X, inMin, inMax, outMin, outMax: Extended): Extended;
begin
  Result := (X - inMin) * (outMax - outMin) / (inMax - inMin) + outMin;
end;

function TMrxCircleProgressbar.GetValue: Extended;
begin
  Result := xValue;
end;

/// <param name="value">
/// Progress percentage (takes values between 0 and 100, otherwise restricted)
/// </param>
procedure TMrxCircleProgressbar.isValue(value: extended);
begin
  xValue := value;
  xValue := IfThen(xValue > 100, 100, xValue);

  xAniProgress.StartValue := xLine.EndAngle;
  xAniProgress.StopValue := CalculatePercent(xValue, 0, 100, 0, 360);
  xAniProgress.Start;
  xText.Text := (xValue).ToString + '%';
end;

end.

