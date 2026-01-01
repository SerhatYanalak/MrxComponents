unit Unit1;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  Mrx.Button,
  Mrx.Trackbar,
  System.Skia,
  FMX.Skia,
  FMX.Objects,
  FMX.Layouts,
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  FMX.ListBox,
  Mrx.EditPath,
  System.ImageList,
  FMX.ImgList,
  system.Math,
  Mrx.EditImageList,
  ComponentViewAssistant,
  MrxTools,
  Mrx.Memo,
  Mrx.Text,
  Mrx.CircleProgressbar,
  Mrx.Star,
  Mrx.Acrylicbar,
  Mrx.Checkbox,
  Mrx.Switch,
  Mrx.ButtonIconTextVertical,
  Mrx.ButtonIcon,
  Mrx.QRCode,
  Mrx.Edit;

type
  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    ImageList1: TImageList;
    ScrollBox1: TScrollBox;
    MrxButton1: TMrxButton;
    MrxButton2: TMrxButton;
    MrxButtonIconVertical1: TMrxButtonIconTextVertical;
    MrxButtonIconVertical2: TMrxButtonIconTextVertical;
    MrxCheckbox1: TMrxCheckbox;
    MrxCheckbox2: TMrxCheckbox;
    MrxCircleProgressbar1: TMrxCircleProgressbar;
    MrxCircleProgressbar2: TMrxCircleProgressbar;
    MrxEditImageList1: TMrxEditImageList;
    MrxEditPath1: TMrxEditPath;
    MrxStar1: TMrxStar;
    MrxSwitch1: TMrxSwitch;
    MrxSwitch2: TMrxSwitch;
    MrxTrackbar1: TMrxTrackbar;
    MrxTrackbar2: TMrxTrackbar;
    MrxButtonIcon1: TMrxButtonIcon;
    MrxQRCode1: TMrxQRCode;
    MrxButtonIcon2: TMrxButtonIcon;
    MrxButton3: TMrxButton;
    MrxMemo1: TMrxMemo;
    MrxText1: TMrxText;
    MrxText2: TMrxText;
    MrxText3: TMrxText;
    MrxButton4: TMrxButton;
    MrxButton5: TMrxButton;
    MrxButton6: TMrxButton;
    MrxEdit1: TMrxEdit;
    MrxButton7: TMrxButton;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MrxButton3Click(Sender: TObject);
    procedure MrxButton4Click(Sender: TObject);
    procedure MrxSwitch1Click(Sender: TObject);
    procedure MrxButton5Click(Sender: TObject);
    procedure MrxButton6Click(Sender: TObject);
    procedure MrxButton7Click(Sender: TObject);
  private
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0: begin
      Form1.Fill.Color := $FFDDDADA;
      ApplyTheme(Self, xLight);
    end;
    1: begin
      Form1.Fill.Color := $FF1D1D21;
      ApplyTheme(Self, xCustom);
    end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Form1.Fill.Color := $FFDDDADA;
  MrxComponentSettings.MinRadius := 5;
  MrxComponentSettings.MaxRadius := 20;
  ApplyTheme(Self, xLight);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  MrxQRCode1.QRData('MrxComponent');
  MrxMemo1.AutoHeight := true;
end;

procedure TForm1.MrxButton3Click(Sender: TObject);
begin
  TMrxLanguages.LanguageLoad('..Attachment\ingilizce.json'); // Doðru yolu belirtiniz
  TMrxLanguages.TranslateUI(self);
end;

procedure TForm1.MrxButton4Click(Sender: TObject);
begin
  TMrxLanguages.LanguageLoad('..Attachment\türkçe.json'); // Doðru yolu belirtiniz
  TMrxLanguages.TranslateUI(self);
end;

procedure TForm1.MrxButton5Click(Sender: TObject);
begin
  MrxCircleProgressbar2.isValue(RandomRange(1, 100));
end;

procedure TForm1.MrxButton6Click(Sender: TObject);
begin
  MrxComponentSettings.MinRadius := 5;
  MrxComponentSettings.MaxRadius := 20;
  MrxComponentSettings.Thickness := 1;
  MrxComponentSettings.Transparent := true;
  ApplyTheme(Self, xLight);
end;

procedure TForm1.MrxButton7Click(Sender: TObject);
begin
  MrxComponentSettings.MinRadius := 5;
  MrxComponentSettings.MaxRadius := 20;
  MrxComponentSettings.Thickness := 1;
  MrxComponentSettings.Transparent := false;
  ApplyTheme(Self, xLight);
end;

procedure TForm1.MrxSwitch1Click(Sender: TObject);
begin
  MrxSwitch1.FrameClick(Sender);
  MrxCircleProgressbar2.isValue(RandomRange(1, 100));
end;

end.
