unit Mrx.QRCode;

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
  QrCode.Tools,
  FMX.Ani;

type
  TMrxQRCode = class(TFrame)
    xBackground: TRectangle;
    xQRCode: TImage;
  private
    xValue: string;
    function GetValue: string;
  public
    procedure QRData(Value: string);
    property Value: string read GetValue;
  end;

implementation

{$R *.fmx}

function TMrxQRCode.GetValue: string;
begin
  Result := xValue;
end;

procedure TMrxQRCode.QRData(Value: string);
begin
  xValue := Value;
  TQrCodeTools.Generate(Value, xQRCode);
end;

end.

