unit Mrx.Edit;

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
  FMX.ImgList,
  FMX.Controls.Presentation,
  FMX.Edit,
  FMX.Objects,
  ComponentViewAssistant;

type
  TMrxEdit = class(TFrame)
    xBackground: TRectangle;
    xEdit: TEdit;
    procedure xEditCanFocus(Sender: TObject; var ACanFocus: Boolean);
    procedure xEditExit(Sender: TObject);
  private

  public

  end;

implementation

{$R *.fmx}

procedure TMrxEdit.xEditCanFocus(Sender: TObject; var ACanFocus: Boolean);
begin
 xBackground.Stroke.Color :=  MrxTriggerColors.Triggered;
end;

procedure TMrxEdit.xEditExit(Sender: TObject);
begin
 xBackground.Stroke.Color :=  MrxTriggerColors.UnTriggered;
end;

end.
