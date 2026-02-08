unit Mrx.EditPath;

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
  FMX.Controls.Presentation,
  FMX.Edit,
  FMX.Layouts,
  Mrx.ComponentViewAssistant;

type
  TMrxEditPath = class(TFrame)
    xBackground: TRectangle;
    xEdit: TEdit;
    xIconBackground: TLayout;
    xIcon: TPath;
    procedure xEditCanFocus(Sender: TObject; var ACanFocus: Boolean);
    procedure xEditExit(Sender: TObject);
  private

  public

  end;

implementation

{$R *.fmx}

procedure TMrxEditPath.xEditCanFocus(Sender: TObject;
  var ACanFocus: Boolean);
begin
xBackground.Stroke.Color :=  MrxTriggerColors.Triggered;
end;

procedure TMrxEditPath.xEditExit(Sender: TObject);
begin
 xBackground.Stroke.Color :=  MrxTriggerColors.UnTriggered;
end;

end.
