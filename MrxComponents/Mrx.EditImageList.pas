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
  FMX.ImgList;

type
  TMrxEditImageList = class(TFrame)
    xBackground: TRectangle;
    xEdit: TEdit;
    xIcon: TGlyph;
  private

  public

  end;

implementation

{$R *.fmx}

end.
