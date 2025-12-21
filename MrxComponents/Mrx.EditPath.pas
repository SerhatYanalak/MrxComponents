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
  FMX.Layouts;

type
  TMrxEditPath = class(TFrame)
    xBackground: TRectangle;
    xEdit: TEdit;
    xIconBackground: TLayout;
    xIcon: TPath;
  private

  public

  end;

implementation

{$R *.fmx}

end.
