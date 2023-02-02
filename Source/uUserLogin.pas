unit uUserLogin;

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
  Vcl.StdCtrls, Vcl.ExtCtrls, AdvPanel;

type
  TfrmUserLogin = class(TForm)
    shp2: TShape;
    shp4: TShape;
    lbl1: TLabel;
    lbl2: TLabel;
    cxEdtUsername: TcxTextEdit;
    cxEdtPassword: TcxTextEdit;
    lblHeaderComment: TLabel;
    lblDescription: TLabel;
    btnOK: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    advpnlTop: TAdvPanel;
    lbl4: TLabel;
    lbl5: TLabel;
    btnExit: TAdvGlowButton;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure cxEdtUsernameKeyPress(Sender: TObject; var Key: Char);
    procedure cxEdtPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    QuitLogin: Boolean;
  end;

var
  frmUserLogin: TfrmUserLogin;

implementation

{$R *.dfm}

procedure TfrmUserLogin.btnExitClick(Sender: TObject);
begin
  QuitLogin := True;
//  Application.Terminate;
end;

procedure TfrmUserLogin.cxEdtPasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    ModalResult:= mrOk;
end;

procedure TfrmUserLogin.cxEdtUsernameKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    SelectNext(ActiveControl,true,true);
end;

procedure TfrmUserLogin.FormShow(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\images\bg_main.JPG');
  QuitLogin := False;
  cxedtUsername.Text:='';
  cxedtPassword.Text:='';
end;

end.
