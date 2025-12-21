unit Mrx.Checkbox;

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
  ComponentViewAssistant,
  FMX.Ani;

type
  TMrxCheckbox = class(TFrame)
    xBackground: TLayout;
    xCheckBackground: TRectangle;
    xCheckPath: TPath;
    xText: TSkLabel;
    procedure FrameClick(Sender: TObject);
  private
    xChecked: Boolean;
    function GetValue: Boolean;
  public
    procedure isChecked(status: boolean);
    property Checked: Boolean read GetValue;
  end;

implementation


{$R *.fmx}

procedure TMrxCheckbox.isChecked(status: boolean);
begin
  xChecked := status;
  case status of
    true:
      xCheckBackground.Fill.Color := MrxTriggerColors.Triggered;
    false:
      xCheckBackground.Fill.Color := MrxTriggerColors.Untriggered
  end;
end;

procedure TMrxCheckbox.FrameClick(Sender: TObject);
begin
  isChecked(IfThen(Checked.ToInteger = 1, 0, 1).ToBoolean);
end;

function TMrxCheckbox.GetValue: Boolean;
begin
  Result := xChecked;
end;

end.

