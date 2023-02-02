unit uChangePass;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, AdvGlowButton, AdvReflectionImage, cxTextEdit,
  Vcl.StdCtrls, Vcl.ExtCtrls, AdvPanel, uDM;

type
  TfrmChangePass = class(TForm)
    advpnlTop: TAdvPanel;
    lbl4: TLabel;
    lbl5: TLabel;
    Image1: TImage;
    Shape1: TShape;
    edtOldPassword: TcxTextEdit;
    Shape4: TShape;
    Label1: TLabel;
    Shape5: TShape;
    Label2: TLabel;
    Shape2: TShape;
    edtNewPassword: TcxTextEdit;
    Shape3: TShape;
    edtConfirmPassword: TcxTextEdit;
    Shape6: TShape;
    Label3: TLabel;
    lblHeaderComment: TLabel;
    lblDescription: TLabel;
    btnOK: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure edtConfirmPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure edtOldPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure edtNewPasswordKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  frmChangePass: TfrmChangePass;

implementation

{$R *.dfm}

procedure TfrmChangePass.edtConfirmPasswordKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    ModalResult:= mrOK
end;

procedure TfrmChangePass.edtNewPasswordKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
    SelectNext(ActiveControl,true,true)
end;

procedure TfrmChangePass.edtOldPasswordKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
    SelectNext(ActiveControl,true,true)
end;

procedure TfrmChangePass.FormShow(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\images\bg_main.JPG');
end;

end.
