unit Mrx.ButtonIcon;

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
  FMX.Ani,
  FMX.Skia,
  FMX.Objects,
  FMX.ImgList;

type
  TMrxButtonIcon = class(TFrame)
    xBackground: TRectangle;
    xAniColor: TColorAnimation;
    xAniRadiusX: TFloatAnimation;
    xAniRadiusY: TFloatAnimation;
    xIcon: TGlyph;
  private
  public
  end;

implementation

{$R *.fmx}

end.
