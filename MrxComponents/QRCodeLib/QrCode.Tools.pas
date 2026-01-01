unit QrCode.Tools;

interface

uses
  FMX.Objects,
  Classes,
  System.UITypes,
  FMX.Graphics,
  DelphiZXingQRCode.FMX,
  ComponentViewAssistant;

type
  TQrCodeTools = class
    class procedure Generate(const AText: string; AImage: TImage);
  end;

implementation

uses
  System.Types,
  System.Math,
  System.SysUtils;


class procedure TQrCodeTools.Generate(const AText: string; AImage: TImage);
var
  QrCode: TDelphiZXingQRCode;
  Row, Column: Integer;
  QRCodeBitmap: TBitmap;
  PixelSize: Integer;
  OffsetX, OffsetY: Single;
  Rect: TRectF;
  BitmapSize: Integer;
begin
  QrCode := TDelphiZXingQRCode.Create;
  QRCodeBitmap := nil;
  try
    QrCode.Data := AText;
    QrCode.Encoding := TQRCodeEncoding.qrAuto;

    BitmapSize := Round(Min(AImage.Width, AImage.Height));
    QRCodeBitmap := TBitmap.Create(BitmapSize, BitmapSize);
    QRCodeBitmap.Clear(TAlphaColors.Null);

    PixelSize := Floor(BitmapSize / QrCode.Rows);

    OffsetX := (BitmapSize - (QrCode.Columns * PixelSize)) / 2;
    OffsetY := (BitmapSize - (QrCode.Rows * PixelSize)) / 2;

    QRCodeBitmap.Canvas.BeginScene;
    try
      QRCodeBitmap.Canvas.Fill.Color := MrxTriggerColors.Font;

      for Row := 0 to QrCode.Rows - 1 do begin
        for Column := 0 to QrCode.Columns - 1 do begin
          if QrCode.IsBlack[Row, Column] then begin
            Rect :=
                TRectF.Create(
                    OffsetX + Column * PixelSize,
                    OffsetY + Row * PixelSize,
                    OffsetX + (Column + 1) * PixelSize,
                    OffsetY + (Row + 1) * PixelSize
                );
            QRCodeBitmap.Canvas.FillRect(Rect, 0, 0, [], 1);
          end;
        end;
      end;
    finally
      QRCodeBitmap.Canvas.EndScene;
    end;

    AImage.Bitmap.Assign(QRCodeBitmap);
    AImage.WrapMode := TImageWrapMode.Stretch;
  finally
    QrCode.Free;
    QRCodeBitmap.Free;
  end;
end;

end.
