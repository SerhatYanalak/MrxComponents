unit Mrx.ButtonIconTextVertical;

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
  FMX.Layouts,
  FMX.ImgList;

type
  TMrxButtonIconTextVertical = class(TFrame)
    xBackground: TRectangle;
    xText: TSkLabel;
    xAniColor: TColorAnimation;
    xAniRadiusX: TFloatAnimation;
    xAniRadiusY: TFloatAnimation;
    xLayer: TLayout;
    xIcon: TGlyph;
  private
  public
  end;

implementation

{$R *.fmx}

end.

