unit Mrx.Button;

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
  System.Skia,
  FMX.Skia,
  FMX.Ani;

type
  TMrxButton = class(TFrame)
    xBackground: TRectangle;
    xText: TSkLabel;
    xAniColor: TColorAnimation;
    xAniRadiusX: TFloatAnimation;
    xAniRadiusY: TFloatAnimation;
  private
  public
  end;

implementation

{$R *.fmx}

end.

