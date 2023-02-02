unit uExtraBed;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, AdvGlassButton,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, Data.DB, ZAbstractRODataset, ZDataset, Vcl.StdCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.DBCtrls, ZSequence,
  cxDBEdit, ZAbstractDataset, cxLabel, cxDBLabel;

type
  TfrmExtraBed = class(TForm)
    pnlHeader: TPanel;
    pnlFooter: TPanel;
    pnlBody: TPanel;
    imgLogo: TImage;
    grpXtraBed: TGroupBox;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    dsRegister: TDataSource;
    glbtn1: TAdvGlassButton;
    zseq_xtrabed: TZSequence;
    cxDbDateXtraBedTo: TcxDBDateEdit;
    dsXtraBed: TDataSource;
    cxDbDateXtraBedFrom: TcxDBDateEdit;
    zqryRegister: TZQuery;
    strngfldRegisterno_register: TStringField;
    lrgntfldRegisterid_register: TLargeintField;
    strngfldRegisterketerangan: TStringField;
    strngfldRegisternama_tamu: TStringField;
    strngfldRegisterjns_kel: TStringField;
    lrgntfldRegisterid_tp_kamar: TLargeintField;
    strngfldRegisterno_kamar: TStringField;
    dtmfldRegisterdt_masuk: TDateTimeField;
    dtmfldRegisterdt_keluar: TDateTimeField;
    glbtnSaveXtraBed: TAdvGlassButton;
    zqryXtraBed: TZQuery;
    lrgntfldXtraBedid_extra_bed1: TLargeintField;
    strngfldXtraBedno_extra_bed1: TStringField;
    strngfldXtraBedno_register1: TStringField;
    strngfldXtraBedno_kamar1: TStringField;
    dtmfldXtraBeddt_masuk1: TDateTimeField;
    dtmfldXtraBeddt_keluar1: TDateTimeField;
    dtmfldXtraBeddt_extra_bed1: TDateTimeField;
    strngfldXtraBedid_item1: TStringField;
    strngfldXtraBedid_trans1: TStringField;
    fltfldXtraBedqty1: TFloatField;
    fltfldXtraBedtarif1: TFloatField;
    strngfldXtraBedusr_ins1: TStringField;
    strngfldXtraBedusr_upd1: TStringField;
    dtmfldXtraBeddt_ins1: TDateTimeField;
    dtmfldXtraBeddt_upd1: TDateTimeField;
    strngfldXtraBedispost1: TStringField;
    strngfldXtraBediscancel1: TStringField;
    intgrfldXtraBedshift1: TIntegerField;
    strngfldXtraBedisdelete1: TStringField;
    strngfldXtraBedketerangan1: TStringField;
    cxDbEditBedRate: TcxDBTextEdit;
    Gen_noX: TZReadOnlyQuery;
    Gen_noXfn_gen_extra_bed_number: TMemoField;
    dbLabelQty: TcxDBLabel;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure glbtn1Click(Sender: TObject);
    procedure zqryXtraBedBeforeOpen(DataSet: TDataSet);
    procedure zqryXtraBedNewRecord(DataSet: TDataSet);
    procedure glbtnSaveXtraBedClick(Sender: TObject);
    procedure zqryXtraBedAfterEdit(DataSet: TDataSet);
    procedure cxDbDateXtraBedFromPropertiesChange(Sender: TObject);
    procedure cxDbDateXtraBedToPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateNumOfDays;
  public
    { Public declarations }
    vNoKamar: string;
  end;

var
  frmExtraBed: TfrmExtraBed;

implementation

uses
  uDM, System.DateUtils, uTools;

{$R *.dfm}

procedure TfrmExtraBed.cxDbDateXtraBedFromPropertiesChange(Sender: TObject);
begin
  UpdateNumOfDays;
end;

procedure TfrmExtraBed.cxDbDateXtraBedToPropertiesChange(Sender: TObject);
begin

  if (cxDbDateXtraBedTo.Date > dtmfldRegisterdt_keluar.AsDateTime) then begin
    cxDbDateXtraBedTo.Date := dtmfldRegisterdt_keluar.AsDateTime;
    MessageDlg('Cannot exceed check-out date!', mtError, [mbOK], 0);
    Exit;
  end;

  UpdateNumOfDays;
end;

procedure TfrmExtraBed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmExtraBed.FormShow(Sender: TObject);
var
  aNoReg: string;
begin
  imgLogo.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\IMAGES\bg_main.JPG');

//  cxDtEdtChkOut.Properties.MinDate := Date; // idiot...

  aNoReg := DataModule1.GetNoRegByRoomNo(vNoKamar);

  //register
  try
     zqryRegister.Close;
     zqryRegister.Params.ParamByName('pno_reg').AsString:= aNoReg;// 'TR-180800001';
     zqryRegister.Open;

     grpXtraBed.Caption := ' Extra Bed - Room ' + strngfldRegisterno_kamar.Value + ' ';

   except
    on E: Exception do
      MessageDlg('Register:: ' + E.Message, mtError, [mbOK], 0);
   end;

  //xtrabed
  try
     zqryXtraBed.Close;
     zqryXtraBed.Open;


     if zqryXtraBed.RecordCount > 0 then begin
        zqryXtraBed.Edit;
//       cxDbDateXtraBedFrom.Date := dtmfldXtraBeddt_extra_bed1.AsDateTime;
//       cxDbDateXtraBedTo.Date := dtmfldXtraBeddt_keluar1.AsDateTime;
     end
     else begin
       zqryXtraBed.Insert;
       cxDbDateXtraBedFrom.Date := Now;
       cxDbDateXtraBedTo.Date := dtmfldRegisterdt_keluar.AsDateTime;
     end;

   except
    on E: Exception do
      MessageDlg('XtraBed:: ' + E.Message, mtError, [mbOK], 0);
   end;

  UpdateNumOfDays;

end;

procedure TfrmExtraBed.glbtn1Click(Sender: TObject);
begin
    Close;
end;

procedure TfrmExtraBed.glbtnSaveXtraBedClick(Sender: TObject);
var
NmTamu: String;
begin

  NmTamu:= strngfldRegisternama_tamu.AsString;

  try
    zqryXtraBed.Post;
    MessageDlg('Input Extra Bed Room : '+vNoKamar+' Atas Nama '+UpperCase(NmTamu)+' Success..!!', mtInformation, [mbOK], 0);
  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;

  UpdateNumOfDays;

end;

procedure TfrmExtraBed.UpdateNumOfDays;
begin
  dbLabelQty.Caption := GetStrDaysBetweenDates(cxDbDateXtraBedFrom.Date, cxDbDateXtraBedTo.Date);
end;

procedure TfrmExtraBed.zqryXtraBedAfterEdit(DataSet: TDataSet);
begin
  if zqryXtraBed.State = dsEdit then begin
    dtmfldXtraBeddt_masuk1.Value := dtmfldRegisterdt_masuk.AsDateTime;
    dtmfldXtraBeddt_keluar1.Value := dtmfldRegisterdt_keluar.AsDateTime;
    dtmfldXtraBeddt_extra_bed1.Value := Now;
  end;
end;

procedure TfrmExtraBed.zqryXtraBedBeforeOpen(DataSet: TDataSet);
begin
  zqryXtraBed.Params.ParamByName('nreg').Value:= strngfldRegisterno_register.AsString;
end;

procedure TfrmExtraBed.zqryXtraBedNewRecord(DataSet: TDataSet);
begin

  Gen_noX.Close;
  Gen_noX.Open;
  strngfldXtraBedno_extra_bed1.AsString:= Gen_noXfn_gen_extra_bed_number.AsString;

  lrgntfldXtraBedid_extra_bed1.Value := zseq_xtrabed.GetNextValue;
  strngfldXtraBedno_register1.Value := strngfldRegisterno_register.AsString;
  strngfldXtraBedno_kamar1.Value := vNoKamar;
  dtmfldXtraBeddt_masuk1.Value := dtmfldRegisterdt_masuk.AsDateTime;
  dtmfldXtraBeddt_keluar1.Value := dtmfldRegisterdt_keluar.AsDateTime;
  dtmfldXtraBeddt_extra_bed1.Value := Date;
  strngfldXtraBedid_item1.Value := 'KU004';
  strngfldXtraBedid_trans1.Value := '107';
  fltfldXtraBedqty1.Value := 1.0;
  fltfldXtraBedtarif1.Value := 200000.0;
  strngfldXtraBedusr_ins1.Value := DataModule1.UserConnect;
  strngfldXtraBedusr_upd1.Value := DataModule1.UserConnect;
  dtmfldXtraBeddt_ins1.Value := Date;
  dtmfldXtraBeddt_upd1.Value := Date;
  strngfldXtraBedispost1.Value := '1';
  strngfldXtraBediscancel1.Value := '0';
  intgrfldXtraBedshift1.Value := 0;
  strngfldXtraBedisdelete1.Value := '0';
  strngfldXtraBedketerangan1.Value := 'Extra Bed';

end;

end.

