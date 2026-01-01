unit Mrx.EditImageList;

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
  FMX.Layouts,
  FMX.Controls.Presentation,
  FMX.Edit,
  FMX.ImgList,
  ComponentViewAssistant;

type
  TMrxEditImageList = class(TFrame)
    xBackground: TRectangle;
    xEdit: TEdit;
    xIcon: TGlyph;
    procedure xEditCanFocus(Sender: TObject; var ACanFocus: Boolean);
    procedure xEditExit(Sender: TObject);
  private

  public

  end;

implementation

{$R *.fmx}

procedure TMrxEditImageList.xEditCanFocus(Sender: TObject;
  var ACanFocus: Boolean);
begin
 xBackground.Stroke.Color :=  MrxTriggerColors.Triggered;
end;

procedure TMrxEditImageList.xEditExit(Sender: TObject);
begin
 xBackground.Stroke.Color :=  MrxTriggerColors.UnTriggered;
end;

end.
