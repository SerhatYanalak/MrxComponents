program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  FMX.Skia,
  Unit1 in 'Unit1.pas' {Form1},
  Mrx.Button in 'MrxComponents\Mrx.Button.pas' {MrxButton: TFrame},
  Mrx.Trackbar in 'MrxComponents\Mrx.Trackbar.pas' {MrxTrackbar: TFrame},
  Mrx.Switch in 'MrxComponents\Mrx.Switch.pas' {MrxSwitch: TFrame},
  Mrx.Checkbox in 'MrxComponents\Mrx.Checkbox.pas' {MrxCheckbox: TFrame},
  Mrx.Acrylicbar in 'MrxComponents\Mrx.Acrylicbar.pas' {MrxAcrylicbar: TFrame},
  Mrx.EditPath in 'MrxComponents\Mrx.EditPath.pas' {MrxEditPath: TFrame},
  Mrx.EditImageList in 'MrxComponents\Mrx.EditImageList.pas' {MrxEditImageList: TFrame},
  Mrx.Memo in 'MrxComponents\Mrx.Memo.pas' {MrxMemo: TFrame},
  Mrx.ComponentViewAssistant in 'MrxComponents\Mrx.ComponentViewAssistant.pas',
  Themes in 'MrxComponents\Themes.pas',
  Mrx.ButtonIconTextVertical in 'MrxComponents\Mrx.ButtonIconTextVertical.pas' {MrxButtonIconTextVertical: TFrame},
  Mrx.Text in 'MrxComponents\Mrx.Text.pas' {MrxText: TFrame},
  Mrx.CircleProgressbar in 'MrxComponents\Mrx.CircleProgressbar.pas' {MrxCircleProgressbar: TFrame},
  Mrx.Star in 'MrxComponents\Mrx.Star.pas' {MrxStar: TFrame},
  Mrx.ButtonIcon in 'MrxComponents\Mrx.ButtonIcon.pas' {MrxButtonIcon: TFrame},
  Mrx.QRCode in 'MrxComponents\Mrx.QRCode.pas' {MrxQRCode: TFrame},
  DelphiZXingQRCode.FMX in 'MrxComponents\QRCodeLib\DelphiZXingQRCode.FMX.pas',
  QrCode.Tools in 'MrxComponents\QRCodeLib\QrCode.Tools.pas',
  MrxTools in 'MrxComponents\MrxTools.pas',
  Mrx.Edit in 'MrxComponents\Mrx.Edit.pas' {MrxEdit: TFrame},
  Mrx.StyleBook in 'MrxComponents\Mrx.StyleBook.pas';

{$R *.res}

begin
  GlobalUseSkia := True;
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := true;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
