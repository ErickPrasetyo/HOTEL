unit uBayarNota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, DateUtils, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxBarBuiltInMenu, cxContainer, cxEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, Vcl.StdCtrls, Vcl.ExtCtrls, cxMemo, cxTextEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxPC,
  AdvGlassButton, cxLabel, cxDBLabel, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.ComCtrls, dxCore, cxDateUtils, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.DBCtrls,
  ZSequence, vcl.wwdialog, vcl.wwidlg, kbmMemTable;

type
  TBayarNota = class(TForm)
    pgRegistrasi: TcxPageControl;
    pgRegister: TcxPageControl;
    qNota: TZQuery;
    dsNota: TDataSource;
    qNotaid_nota: TLargeintField;
    qNotano_nota: TStringField;
    qNotadt_nota: TDateTimeField;
    qNotano_register: TStringField;
    qNotacara_bayar: TStringField;
    qNotatotal: TFloatField;
    Panel5: TPanel;
    btnBayar: TAdvGlassButton;
    btnBatal: TAdvGlassButton;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dblblSisa: TcxDBLabel;
    Panel2: TPanel;
    lblCaraBayar: TLabel;
    lblNoKartu: TLabel;
    lblTotal: TLabel;
    dblblTotal: TcxDBLabel;
    Panel1: TPanel;
    edtBayar: TcxDBTextEdit;
    qNotadibayar: TFloatField;
    qNotasisa: TFloatField;
    edtCaraBayar: TcxDBComboBox;
    edtNoKartu: TcxDBTextEdit;
    qNotano_kartu: TStringField;
    procedure btnBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qNotaCalcFields(DataSet: TDataSet);
    procedure edtBayarPropertiesEditValueChanged(Sender: TObject);
    procedure edtCaraBayarPropertiesCloseUp(Sender: TObject);
    procedure btnBayarClick(Sender: TObject);
    procedure edtBayarKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }

  public
    { Public declarations }
  frmBillingPenjualan : TForm;
  vId_nota: Integer;

  end;

var
  BayarNota: TBayarNota;

implementation

{$R *.dfm}

uses uDM, uDash;



procedure TBayarNota.btnBatalClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

procedure TBayarNota.btnBayarClick(Sender: TObject);
begin
  if (qNota.State<>dsBrowse)  then
      qNota.Post;
  ModalResult:= mrOk;
end;

procedure TBayarNota.edtBayarKeyPress(Sender: TObject; var Key: Char);
begin
  if  (qNotacara_bayar.IsNull) or (qNotacara_bayar.AsString='') then
      raise Exception.Create('ISI JENIS PEMBAYARAN TERLEBIH DAHULU !!');

 //selain angka (0..9)& backspace( #8 ), input dimatikan
  if not(key in['0'..'9',#8,#13,#27]) then
    key:=#0;

  if Key=#13 then btnBayar.SetFocus;

//      SelectNext(ActiveControl, True, True);
  if Key=#27 then
    SelectNext(ActiveControl, False, True);
end;

procedure TBayarNota.edtBayarPropertiesEditValueChanged(Sender: TObject);
begin
  qNota.Edit;
  qNotasisa.AsFloat:= qNotatotal.AsFloat-qNotadibayar.AsFloat;
end;

procedure TBayarNota.edtCaraBayarPropertiesCloseUp(Sender: TObject);
begin
  if (edtCaraBayar.Text= 'DEBIT') or (edtCaraBayar.Text= 'TRANSFER') then begin
     lblNoKartu.Visible:= True;
     edtNoKartu.Visible:= True;
  end else begin
     lblNoKartu.Visible:= False;
     edtNoKartu.Visible:= False;
  end;
end;

procedure TBayarNota.FormShow(Sender: TObject);
begin
  pgRegister.HideTabs:= True;
  qNota.Close;
  qNota.Params.ParamByName('pid_nota').Value:= vId_nota;
  qNota.Open;
  edtBayar.Text:= '0';
  edtNoKartu.Text:= Trim(qNotano_kartu.AsString);
  edtCaraBayar.Text:= Trim(qNotacara_bayar.AsString);

  if (edtCaraBayar.Text= 'DEBIT') or (edtCaraBayar.Text= 'TRANSFER') then begin
      lblNoKartu.Visible:= True;
      edtNoKartu.Visible:= True;
  end
  else begin
      lblNoKartu.Visible:= False;
      edtNoKartu.Visible:= False;
  end;


end;

procedure TBayarNota.qNotaCalcFields(DataSet: TDataSet);
begin
//  qNotasisa.AsFloat:= qNotatotal.AsFloat-qNotadibayar.AsFloat;
end;

end.
