unit uRegTamu;

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
  ZSequence, vcl.wwdialog, vcl.wwidlg, frxClass, kbmMemTable, frxDBSet;

type
  TRegTamuFrm = class(TForm)
    pgRegistrasi: TcxPageControl;
    pgRegister: TcxPageControl;
    DataKamar: TcxTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    edtRegTlp: TcxDBTextEdit;
    edtRegAlamat: TcxDBMemo;
    Panel4: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Panel5: TPanel;
    btnTambahTamu: TAdvGlassButton;
    btnEditTamu: TAdvGlassButton;
    btnSimpan: TAdvGlassButton;
    btnBatal: TAdvGlassButton;
    qRegister: TZQuery;
    dsRegister: TDataSource;
    qRegisterDetail: TZQuery;
    dsRegisterDetail: TDataSource;
    qRegisterDetailid_register: TLargeintField;
    qRegisterDetailid_register_detail: TLargeintField;
    qRegisterDetailno_kamar: TStringField;
    qRegisterDetaildt_masuk: TDateTimeField;
    qRegisterDetaildt_keluar: TDateTimeField;
    qRegisterDetailharga: TFloatField;
    qRegisterDetailismaster: TStringField;
    qRegisterDetailid_item: TStringField;
    qRegisterDetailqty: TFloatField;
    qRegisterDetaildiskripsi: TStringField;
    qRegisterDetailismoving: TStringField;
    qKamar: TZQuery;
    BindSourceDB1: TBindSourceDB;
    dsKamar: TDataSource;
    DataTamu: TcxTabSheet;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    AdvGlassButton1: TAdvGlassButton;
    btnCancel: TAdvGlassButton;
    DataEdit: TcxTabSheet;
    Panel9: TPanel;
    Panel11: TPanel;
    AdvGlassButton2: TAdvGlassButton;
    AdvGlassButton3: TAdvGlassButton;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    edtNamaTamu: TEdit;
    edtNoID: TEdit;
    edtTlp: TEdit;
    Label14: TLabel;
    edtEmail: TEdit;
    Panel10: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    edtJnsID: TComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    DBComboBox1: TDBComboBox;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxDBTextEdit4: TcxDBTextEdit;
    qDataTamu: TZQuery;
    dsDataTamu: TDataSource;
    qDataTamuid_tamu: TStringField;
    qDataTamunama_tamu: TStringField;
    qDataTamujns_kel: TStringField;
    qDataTamualamat: TStringField;
    qDataTamutelepon: TStringField;
    qDataTamujenis_id: TStringField;
    qDataTamunomor_id: TStringField;
    qDataTamuemail: TStringField;
    Label20: TLabel;
    edtJenisKelamin: TComboBox;
    Label21: TLabel;
    DBComboBox2: TDBComboBox;
    qgenNo_Reg: TZReadOnlyQuery;
    qgenNo_Regfn_gen_reg_number: TMemoField;
    sq_register: TZSequence;
    Gen_id_tamu: TZReadOnlyQuery;
    Gen_id_tamufn_gen_id_tamu_baru: TMemoField;
    qExec: TZQuery;
    edtAlamat: TcxMemo;
    edtRegNama: TcxDBTextEdit;
    edtRegId: TcxDBTextEdit;
    btnFindGuest: TAdvGlassButton;
    LookTamu: TwwLookupDialog;
    sq_register_detail: TZSequence;
    qKamarno_kamar: TStringField;
    qKamarid_tp_kamar: TLargeintField;
    qKamartarif: TFloatField;
    qKamarisdetail: TStringField;
    qKamarlvl: TIntegerField;
    qKamardiskripsi: TStringField;
    qKamartotal_bed: TStringField;
    qKamardt_ins: TDateTimeField;
    qKamardt_upd: TDateTimeField;
    qKamarusr_ins: TStringField;
    qKamarusr_upd: TStringField;
    qKamaris_isi: TStringField;
    qKamarid_parent: TStringField;
    qKamarno_bed: TStringField;
    qKamartp_kamar: TStringField;
    qKamartipe: TStringField;
    btnPrint: TAdvGlassButton;
    frxdbqryDetail: TfrxDBDataset;
    MemInfo: TkbmMemTable;
    MemInfologo: TBlobField;
    MemInfonama_perusahaan: TStringField;
    MemInfoalamat_perusahaan: TStringField;
    MemInfotlp_perusahaan: TStringField;
    MemInfokota_perusahaan: TStringField;
    MemInfoemail: TStringField;
    MemInfojudul: TStringField;
    MemInfotgl_cetak: TStringField;
    MemInfousr_cetak: TStringField;
    frxdbInfo: TfrxDBDataset;
    RepNota_A4: TfrxReport;
    frxdbqryDisplay: TfrxDBDataset;
    qRegisterDetailtotal_tarif: TFloatField;
    EditDataTamu: TZQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    dsEditDataTamu: TDataSource;
    GroupBox1: TGroupBox;
    edtJnsReservasi: TcxDBLookupComboBox;
    qReservasi: TZReadOnlyQuery;
    dsReservasi: TDataSource;
    qReservasidiskripsi: TStringField;
    qCeckTime: TZReadOnlyQuery;
    qCeckTimecharge_time: TFloatField;
    qRegisterDetailci_charge_psn: TFloatField;
    Label23: TLabel;
    edtNoRegister: TcxDBTextEdit;
    dbLabelTarif: TcxDBLabel;
    dbLabelHari: TcxDBLabel;
    dbLabelKamar: TcxDBLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label9: TLabel;
    dbLabelTipeKamar: TcxDBLabel;
    Label22: TLabel;
    Label26: TLabel;
    dbLabelTotDeposit: TcxDBLabel;
    dbLabelCI: TcxDBLabel;
    dbLabelCO: TcxDBLabel;
    edtRegCeckOut: TcxDateEdit;
    qRegisterid_register: TLargeintField;
    qRegisterno_register: TStringField;
    qRegisterid_trans: TStringField;
    qRegisterdt_register: TDateTimeField;
    qRegisterketerangan: TStringField;
    qRegisteriscancel: TStringField;
    qRegisterispost: TStringField;
    qRegisterdt_ins: TDateTimeField;
    qRegisterdt_upd: TDateTimeField;
    qRegisterusr_ins: TStringField;
    qRegisterusr_upd: TStringField;
    qRegisterisclosed: TStringField;
    qRegisterjenis: TStringField;
    qRegistershift: TIntegerField;
    qRegisterno_antrian: TIntegerField;
    qRegisterno_reservasi: TStringField;
    qRegisternomor_id: TStringField;
    qRegisterjns_id: TStringField;
    qRegistertgl_lahir: TDateField;
    qRegisterjns_kel: TStringField;
    qRegisteralamat: TStringField;
    qRegisterkota: TStringField;
    qRegisterstate: TStringField;
    qRegisternegara: TStringField;
    qRegisterkebangsaan: TStringField;
    qRegistertelepon: TStringField;
    qRegisterno_hp: TStringField;
    qRegisteremail: TStringField;
    qRegisternama_tamu: TStringField;
    qRegisternama_tamu2: TStringField;
    qRegisternama_tamu3: TStringField;
    qRegistersub_total: TFloatField;
    qRegistertotal: TFloatField;
    qRegisteriscekout: TStringField;
    qRegisterid_tp_kamar: TLargeintField;
    qRegisterinc_deposit: TFloatField;
    qRegisterdeposit: TFloatField;
    edtInsDeposit: TcxTextEdit;
    Label27: TLabel;
    dbLabelTotal: TcxDBLabel;
    edtRegCeckIn: TcxDateEdit;
    qRegisterDetaildiskon: TFloatField;
    Label28: TLabel;
    edtDiskon: TcxTextEdit;
    qKamartarif_traveloka: TFloatField;
    qKamartarif_tiket_com: TFloatField;
    qKamartarif_pegi_pegi: TFloatField;
    qKamartarif_booking_com: TFloatField;
    qKamartarif_phone: TFloatField;
    procedure btnBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qRegisterBeforePost(DataSet: TDataSet);
    procedure qRegisterNewRecord(DataSet: TDataSet);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnTambahTamuClick(Sender: TObject);
    procedure btnEditTamuClick(Sender: TObject);
    procedure AdvGlassButton3Click(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure edtRegCeckOutExit(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure DataTamuShow(Sender: TObject);
    procedure btnFindGuestClick(Sender: TObject);
    procedure qRegisterDetailNewRecord(DataSet: TDataSet);
    procedure qRegisterDetailBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlassButton2Click(Sender: TObject);
    procedure edtRegCeckOutPropertiesChange(Sender: TObject);
    procedure edtRegCeckInPropertiesChange(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure qRegisterDetailCalcFields(DataSet: TDataSet);
    procedure edtJnsReservasiKeyPress(Sender: TObject; var Key: Char);
    procedure edtJnsReservasiEnter(Sender: TObject);
    procedure edtDepositKeyPress(Sender: TObject; var Key: Char);
    procedure edtInsDepositPropertiesEditValueChanged(Sender: TObject);
    procedure edtJnsReservasiPropertiesEditValueChanged(Sender: TObject);

  private
    { Private declarations }
    y,m,d,h,min,sec: Word;

    procedure UpdateBookDays;

  public
    { Public declarations }
  frmDash: TForm;
  vNoKamar : string;
  EditModeOnly: Boolean;
  end;

var
  RegTamuFrm: TRegTamuFrm;

implementation

{$R *.dfm}

uses uDM, uDash, uUserLogin, MD5;

procedure TRegTamuFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= caFree;
 RegTamuFrm:=nil;
end;

procedure TRegTamuFrm.FormShow(Sender: TObject);
var vNow: TDateTime;
vTarif, vTotal, vQty: Float64;
Ci, Co : String;
begin

  pgRegister.HideTabs:= True;
  pgRegister.ActivePageIndex:= 0;

  DataModule1.vSysDate.Close;
  DataModule1.vSysDate.Open;

  DataModule1.qryShift.Close;
  DataModule1.qryShift.Open;

  qRegister.Close;
  qRegister.Params.ParamByName('no_register').Value:= DataModule1.GetNoRegByRoomNo(vNoKamar);//; '-';
  qRegister.Open;
//  qRegister.Append;

  qRegisterDetail.Close;
  qRegisterDetail.Params.ParamByName('id_register').Value:= qRegisterid_register.Value;
  qRegisterDetail.Open;
//  qRegisterDetail.Append;

  qKamar.Close;
  qKamar.Params.ParamByName('no_kamar').Value:= vNoKamar;
  qKamar.Open;
  vTarif:= 0;

  qReservasi.Close;
  qReservasi.Open;

//  edtRegCeckIn.Date:= Now;
//  DecodeDate(edtRegCeckIn.Date,y,m,d);
//  edtRegCeckOut.Date:= IncDay(edtRegCeckIn.Date);
//  vQty:= (DaySpan(edtRegCeckIn.EditValue, TDateTime(edtRegCeckOut.EditValue)));
//  dbLabelHari.Caption:= FloatToStr(vQty);

  if not EditModeOnly then begin

    qRegister.Append;
    qRegisterDetail.Append;

    btnTambahTamu.Enabled := True;
    btnEditTamu.Enabled := True;
    btnFindGuest.Enabled := True;
    dbLabelCI.Visible:= False;
    dbLabelCO.Visible:= False;

    edtRegCeckIn.Date:= Now;
    DecodeDate(edtRegCeckIn.Date,y,m,d);
    edtRegCeckOut.Date:= IncDay(edtRegCeckIn.Date);
    vQty:= (DaySpan(edtRegCeckIn.EditValue, TDateTime(edtRegCeckOut.EditValue)));
    dbLabelHari.Caption:= FloatToStr(vQty);
    dbLabelTarif.Caption:= FloatToStr(vTarif);

    dbLabelTipeKamar.Caption:= qKamartp_kamar.AsString;
    dbLabelKamar.Caption:= vNoKamar;

    vTotal:= vQty*vTarif;
    dbLabelTotal.Caption:= vTotal.ToString;
    edtInsDeposit.Text:= '0';
    edtDiskon.Text:= '0';

  end
  else begin

    qRegister.Edit;
    qRegisterDetail.Edit;

    btnTambahTamu.Enabled := False;
    btnFindGuest.Enabled := False;
    btnEditTamu.Enabled := False;
    edtJnsReservasi.Enabled:= False;
    edtRegCeckIn.Visible:= False;
    edtRegCeckOut.Visible:= False;
    dbLabelCI.Visible:= True;
    dbLabelCO.Visible:= True;

    edtRegNama.Text := qRegisternama_tamu.AsString;
    edtRegId.Text := qRegisternomor_id.AsString;
    edtRegTlp.Text := qRegistertelepon.AsString;
    edtRegAlamat.Text := qRegisteralamat.AsString;

    dbLabelKamar.Caption:= qRegisterDetailno_kamar.AsString;
    dbLabelHari.Caption:= FloatToStr(qRegisterDetailqty.AsFloat);
    dbLabelTipeKamar.Caption:= qRegisterDetaildiskripsi.AsString;
    dbLabelTarif.Caption:= FloatToStr(qRegisterDetailharga.AsFloat);
    edtInsDeposit.Text:= '0';
    dbLabelTotDeposit.Caption:= FloatToStr(qRegisterdeposit.AsFloat);
    dbLabelTotal.Caption:= FloatToStr(qRegisterDetailtotal_tarif.AsFloat);
    edtDiskon.Text:= FloatToStr(qRegisterDetaildiskon.AsFloat);

    Ci:= FormatDateTime('dd mmmm yyyy hh:mm', qRegisterDetaildt_masuk.AsDateTime);
    Co:= FormatDateTime('dd mmmm yyyy', qRegisterDetaildt_keluar.AsDateTime);

    dbLabelCI.Caption:= Trim(Ci);
    dbLabelCO.Caption:= Trim(Co+' 13:00');

  end;

end;

procedure TRegTamuFrm.qRegisterBeforePost(DataSet: TDataSet);
var
new_reg: string;
qty, tarif: Float64;
begin
    if (qRegisterjenis.IsNull) or (qRegisterjenis.AsString='') then begin
        MessageDlg('Jenis Reservasi Harus di isi !!!', mtError, [mbOK], 0);
        Exit;
    end;

    qty:= StrToFloat(dbLabelHari.Caption);
    tarif:= StrToFloat(dbLabelTarif.Caption);

    if Trim(qRegisterno_register.AsString)='' then begin
       qgenNo_Reg.Close;
       qgenNo_Reg.Open;
       new_reg:= qgenNo_Regfn_gen_reg_number.AsString;
       qRegisterno_register.AsString:= new_reg;
    end;

    if qRegister.State=dsInsert then begin
       qRegisterusr_ins.AsString:= DataModule1.UserConnect;
       qRegisterusr_upd.AsString:= DataModule1.UserConnect;
       qRegistersub_total.AsFloat:= qty*tarif;
    end else if qRegister.State=dsEdit then
       qRegisterusr_upd.AsString:= DataModule1.UserConnect;
       dbLabelTotal.Caption:= FloatToStr(qRegistersub_total.AsFloat);

end;

procedure TRegTamuFrm.qRegisterDetailBeforePost(DataSet: TDataSet);
begin

  qCeckTime.Close;
  qCeckTime.Open;

  qRegisterDetailno_kamar.AsString:= dbLabelKamar.Caption;
  qRegisterDetaildt_masuk.AsDateTime:= edtRegCeckIn.Date;
  qRegisterDetaildt_keluar.AsDateTime:= edtRegCeckOut.Date;

  if edtJnsReservasi.Text= 'WALK IN' then begin
     qRegisterDetailharga.AsFloat:= qKamartarif.AsFloat;
     dbLabelTarif.Caption:= FloatToStr(qKamartarif.AsFloat);
  end
  else
  if edtJnsReservasi.Text= 'PHONE' then begin
     qRegisterDetailharga.AsFloat:= qKamartarif_phone.AsFloat;
     dbLabelTarif.Caption:= FloatToStr(qKamartarif_phone.AsFloat);
  end
  else
  if edtJnsReservasi.Text= 'BOOKING.COM' then begin
     qRegisterDetailharga.AsFloat:= qKamartarif_booking_com.AsFloat;
     dbLabelTarif.Caption:= FloatToStr(qKamartarif_booking_com.AsFloat);
  end
  else
  if edtJnsReservasi.Text= 'TRAVELOKA' then begin
     qRegisterDetailharga.AsFloat:= qKamartarif_traveloka.AsFloat;
     dbLabelTarif.Caption:= FloatToStr(qKamartarif_traveloka.AsFloat);
  end
  else
  if edtJnsReservasi.Text= 'PEGI.PEGI' then begin
     qRegisterDetailharga.AsFloat:= qKamartarif_pegi_pegi.AsFloat;
     dbLabelTarif.Caption:= FloatToStr(qKamartarif_pegi_pegi.AsFloat);
  end
  else
  if edtJnsReservasi.Text= 'TICKET.COM' then begin
     qRegisterDetailharga.AsFloat:= qKamartarif_tiket_com.AsFloat;
     dbLabelTarif.Caption:= FloatToStr(qKamartarif_tiket_com.AsFloat);
  end
  else
  if edtJnsReservasi.Text= '' then begin
     qRegisterDetailharga.AsFloat:= 0;
     dbLabelTarif.Caption:= '0';
  end;

  qRegisterDetailqty.AsFloat:= (DaySpan(edtRegCeckIn.EditValue,
                                          TDateTime(edtRegCeckOut.EditValue)));
  qRegisterDetaildiskripsi.AsString:= dbLabelTipeKamar.Caption;
  qRegisterDetailci_charge_psn.AsFloat:= qCeckTimecharge_time.AsFloat;

end;

procedure TRegTamuFrm.qRegisterDetailCalcFields(DataSet: TDataSet);
begin
  qRegisterDetailtotal_tarif.AsFloat:= qRegisterDetailharga.AsFloat*qRegisterDetailqty.AsFloat;
  dbLabelTotal.Caption:= FloatToStr(qRegisterDetailtotal_tarif.AsFloat);
end;

procedure TRegTamuFrm.qRegisterDetailNewRecord(DataSet: TDataSet);
begin
  qRegisterDetailid_register.AsInteger:= qRegisterid_register.AsInteger;
  qRegisterDetailid_register_detail.AsInteger:= sq_register_detail.GetNextValue;
  qRegisterDetailismaster.AsString:= '1';
  qRegisterDetailid_item.AsString:= 'KU001';
  qRegisterDetailismoving.AsString:= '0';
end;

procedure TRegTamuFrm.qRegisterNewRecord(DataSet: TDataSet);
begin
  qRegisterid_register.AsInteger:= sq_register.GetNextValue;

  qRegisterdt_register.AsDateTime:= DataModule1.vSysDatedt_server.AsDateTime;
  qRegisterdt_ins.AsDateTime:= DataModule1.vSysDatedt_server.AsDateTime;
  qRegisterdt_upd.AsDateTime:= DataModule1.vSysDatedt_server.AsDateTime;
  qRegistershift.AsInteger:= DataModule1.intgrfldShiftshift_server.AsInteger;
  qRegisterid_trans.AsString:= '101';
  qRegisterispost.AsString:= '1';
  qRegisteriscancel.AsString:= '0';
  qRegisterisclosed.AsString:= '0';
  qRegisteriscekout.AsString:= '0';
  qRegistertotal.AsFloat:= 0;
  qRegisterdeposit.AsFloat:= 0;
  qRegisterinc_deposit.AsFloat:= 0;

end;

procedure TRegTamuFrm.UpdateBookDays;
begin

  if (VarIsNull(edtRegCeckIn.EditValue)) or (VarIsNull(edtRegCeckOut.EditValue)) then begin
    dbLabelHari.Caption := FloatToStr(0);
  end
  else begin
    dbLabelHari.Caption := FloatToStr(DaySpan(edtRegCeckIn.EditValue,
                                          TDateTime(edtRegCeckOut.EditValue)));
  end;

end;

procedure TRegTamuFrm.AdvGlassButton1Click(Sender: TObject);
var s, vIdTamu: string;
begin
    if (Trim(edtNamaTamu.Text)='') then begin
       raise Exception.Create('NAMA TAMU HARUS DI ISI !');
       edtNamaTamu.SetFocus;
    end else
    if (Trim(edtJnsID.Text)='') then begin
       raise Exception.Create('JENIS ID HARUS DI ISI !');
       edtJnsID.SetFocus;
    end else
    if (Trim(edtNoID.Text)='') then begin
       raise Exception.Create('NOMOR ID HARUS DI ISI !');
       edtNoID.SetFocus;
    end else
    if (Trim(edtJenisKelamin.Text)='') then begin
       raise Exception.Create('KOLOM JENIS KELAMIN HARUS DI ISI !');
       edtJenisKelamin.SetFocus;
    end else
    if (Trim(edtTlp.Text)='') then begin
       raise Exception.Create('NOMOR TELEPON HARUS DI ISI !');
       edtTlp.SetFocus;
    end else
    if (Trim(edtNamaTamu.Text)='') then begin
       raise Exception.Create('NAMA TAMU HARUS DI ISI !');
       edtNamaTamu.SetFocus;
    end else
    if (Trim(edtAlamat.Text)='') then begin
       raise Exception.Create('ALAMAT HARUS DI ISI !');
       edtAlamat.SetFocus;
    end;

  Gen_id_tamu.Close;
  Gen_id_tamu.Open;
  vIdTamu:= Gen_id_tamufn_gen_id_tamu_baru.AsString;

    try
      try
        qExec.Close;
        qExec.SQL.Clear;
        qExec.Params.Clear;
        s:= 'insert into master.mtamu (id_tamu, nama_tamu, jns_kel,';
        s:= s+ ' alamat, kota, agama,';
        s:= s+ ' telepon, sts_pasien, usr_ins, usr_upd, pekerjaan, gelar,';
        s:= s+ ' nomor_id, jenis_id, negara, email) values ( ';
        s:= s+ QuotedStr(vIdTamu)+', '+QuotedStr(edtNamaTamu.Text);
        s:= s+ ', '+QuotedStr(edtJenisKelamin.Text)+', '+QuotedStr(edtAlamat.Text)+', '+QuotedStr('')+', '+QuotedStr('');
        s:= s+ ', '+QuotedStr(edtTlp.Text)+', '+QuotedStr('0');
        s:= s+ ', '+QuotedStr(DataModule1.UserConnect)+', '+QuotedStr(DataModule1.UserConnect)+', '+QuotedStr('')+', '+QuotedStr('');
        s:= s+ ', '+QuotedStr(edtNoID.Text)+','+QuotedStr(edtJnsID.Text);
        s:= s+ ', '+QuotedStr('INDONESIA')+', '+QuotedStr(edtEmail.Text)+')';
        qExec.SQL.Add(s);
        qExec.ExecSQL;
      except
        on E: Exception do
        MessageDlg(E.Message, mtError, [mbOK], 0);
      end;
    finally

      qRegisternama_tamu.AsString:= edtNamaTamu.Text;
      qRegisternomor_id.AsString:= edtNoID.Text;
      qRegistertelepon.AsString:= edtTlp.Text;
      qRegisteralamat.AsString:= edtAlamat.Text;

      pgRegister.ActivePageIndex:= 0;
      edtRegCeckOut.SetFocus;
    end;
    //qRegister.Post;

end;

procedure TRegTamuFrm.AdvGlassButton2Click(Sender: TObject);
begin
  qRegisternama_tamu.AsString:= cxDBTextEdit1.Text;
  qRegisternomor_id.AsString:= cxDBTextEdit2.Text;
  qRegistertelepon.AsString:= cxDBTextEdit3.Text;
  qRegisteralamat.AsString:= cxDBMemo1.Text;
  qRegisterjns_kel.AsString:= DBComboBox2.Text;
  qRegisterjns_id.AsString:= DBComboBox1.Text;
  qRegisterusr_upd.AsString:= DataModule1.UserConnect;

  EditDataTamu.Post;
  pgRegister.ActivePageIndex:= 0;
  edtRegCeckOut.SetFocus;
end;

procedure TRegTamuFrm.AdvGlassButton3Click(Sender: TObject);
begin
  pgRegister.ActivePageIndex:= 0;
  pgRegister.HideTabs:= True;
end;

procedure TRegTamuFrm.btnFindGuestClick(Sender: TObject);
begin

   try
     qDataTamu.Close;
     qDataTamu.Open;

     if LookTamu.Execute then begin
        qRegister.Edit;
        qRegisternama_tamu.AsString:= qDataTamunama_tamu.AsString;
        qRegisternomor_id.AsString:= qDataTamunomor_id.AsString;
        qRegistertelepon.AsString:= qDataTamutelepon.AsString;
        qRegisteralamat.AsString:= qDataTamualamat.AsString;
     end;
   except
      on E: Exception do begin
        MessageDlg('Error has been encountered !',mtError, [mbOK], 0);
      end;
   end;

end;

procedure TRegTamuFrm.btnPrintClick(Sender: TObject);
var tglCetak : String;
begin
  try
   DataModule1.qPerusahaan.Close;
   DataModule1.qPerusahaan.Open;

   MemInfo.Close;
   MemInfo.Open;
   MemInfo.Append;
   MemInfonama_perusahaan.AsString:= DataModule1.strngfldPerusahaanperusahaan.AsString;
   MemInfoalamat_perusahaan.AsString:= DataModule1.strngfldPerusahaanalamat.AsString;
   MemInfotlp_perusahaan.AsString:= 'Telp. : '+DataModule1.strngfldPerusahaantelepon.AsString;
   MemInfoemail.AsString:= 'Email : '+DataModule1.strngfldPerusahaanemail.AsString;
   MemInfokota_perusahaan.AsString:= DataModule1.strngfldPerusahaankota.AsString;
   MemInfologo.LoadFromFile(ExtractFilePath(Application.ExeName)+'\images\logo.jpg');
   MemInfojudul.AsString:= 'NOTA DEPOSIT';
   MemInfousr_cetak.AsString:= DataModule1.UserConnect;
   MemInfotgl_cetak.AsString:= FormatDateTime('dd/mm/yyyy hh:mm:',now);
   MemInfo.Post;
  except
    on E: Exception do begin
      MessageDlg(E.Message, mtError, [mbOK], 0);
    end
  end;
  RepNota_A4.ShowReport;

end;

procedure TRegTamuFrm.btnBatalClick(Sender: TObject);
begin

  try
   qRegisterDetail.Cancel;
   qRegister.Cancel;
   qRegisterDetail.CancelUpdates;
   qRegister.CancelUpdates;
  except
   on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;
  close;

end;

procedure TRegTamuFrm.btnCancelClick(Sender: TObject);
begin
  pgRegister.ActivePageIndex:= 0;
  pgRegister.HideTabs:= True;
end;

procedure TRegTamuFrm.btnEditTamuClick(Sender: TObject);
var
f: TfrmUserLogin;
user, pwd: string;
begin

     if DataModule1.isSuperUser then begin
        pgRegister.ActivePageIndex:= 2;
        pgRegister.HideTabs:= True;
        EditDataTamu.Close;
        EditDataTamu.Params.ParamByName('nama_tamu').Value:= qRegisternama_tamu.Value;
        EditDataTamu.Open;
        EditDataTamu.Edit;
     end
     else begin
         f:= TfrmUserLogin.Create(Application);
         if f.ShowModal=mrOK then begin

            user:= f.cxEdtUsername.Text;
            pwd:=  MD5Print(MD5String(Trim(f.cxEdtPassword.Text)));

            qExec.Close;
            qExec.SQL.Clear;
            qExec.Params.Clear;
            qExec.SQL.Add('select vusr_admin from master.vadmin where lower(vusr_admin)=lower(:usr) and vpwd_admin=:pwd');
            qExec.Params.ParseSQL(qExec.SQL.Text, True);
            qExec.ParamByName('usr').Value:=user;
            qExec.ParamByName('pwd').Value:=pwd;
            qExec.Open;
            if qExec.RecordCount=1 then begin
               pgRegister.ActivePageIndex:= 2;
               pgRegister.HideTabs:= True;
               EditDataTamu.Close;
               EditDataTamu.Params.ParamByName('nama_tamu').Value:= qRegisternama_tamu.Value;
               EditDataTamu.Open;
               EditDataTamu.Edit;
            end else begin
            MessageDlg('User / Password Salah !!!', mtError, [mbOK], 0);
            Exit;
            end;

         end;
     end;

//  pgRegister.ActivePageIndex:= 2;
//  pgRegister.HideTabs:= True;
//  qDataTamu.Edit;
end;

procedure TRegTamuFrm.btnSimpanClick(Sender: TObject);
var s :string;
begin

  qRegisterjenis.AsString:= edtJnsReservasi.Text;

  if not EditModeOnly then begin
     qRegister.Post;
     qRegisterDetail.Post;
  end else begin
     qRegister.Post;
  end;
  //update diskon

  try
    qExec.Close;
    qExec.SQL.Clear;
    qExec.Params.Clear;
    s:= 'update transaksi.register_tamu_detail set diskon='+QuotedStr(edtDiskon.text);
    s:= s+' where id_register='+IntToStr(qRegisterDetailid_register.AsInteger);
    qExec.SQL.Add(s);
    qExec.ExecSQL;
  except
    on E: Exception do
    MessageDlg(E.Message, mtError, [mbOK], 0);
  end;

  try
    qExec.Close;
    qExec.SQL.Clear;
    qExec.Params.Clear;
    s:= 'update master.mkamar set is_isi='+QuotedStr('1');
    s:= s+' where no_kamar='+QuotedStr(vNoKamar);
    qExec.SQL.Add(s);
    qExec.ExecSQL;
  except
    on E: Exception do
    MessageDlg(E.Message, mtError, [mbOK], 0);
  end;
  (frmDash as TfrmDash).RebuildRoomList;
  Close;

end;

procedure TRegTamuFrm.btnTambahTamuClick(Sender: TObject);
begin
  pgRegister.ActivePageIndex:= 1;
  pgRegister.HideTabs:= True;
end;

procedure TRegTamuFrm.DataTamuShow(Sender: TObject);
begin
 edtAlamat.Text:= '';
end;

procedure TRegTamuFrm.edtDepositKeyPress(Sender: TObject; var Key: Char);
begin
  btnSimpan.SetFocus;
end;

procedure TRegTamuFrm.edtInsDepositPropertiesEditValueChanged(Sender: TObject);
var
InsDeposit : Float64;
begin
  qRegister.Edit;
  InsDeposit:= StrToFloat(edtInsDeposit.Text);
  qRegisterinc_deposit.AsFloat:= InsDeposit;
  qRegisterdeposit.AsFloat:= InsDeposit+qRegisterdeposit.AsFloat;
  qRegisterinc_deposit.AsFloat:= 0;
  edtInsDeposit.Text:= '0';
  btnSimpan.SetFocus;
end;

procedure TRegTamuFrm.edtJnsReservasiEnter(Sender: TObject);
begin

  try
    qReservasi.Close;
    qReservasi.Open;
  except
    on E: Exception do
    MessageDlg(E.Message, mtError, [mbOK], 0);
  end;

end;

procedure TRegTamuFrm.edtJnsReservasiKeyPress(Sender: TObject; var Key: Char);
begin
  if qRegister.State<>dsBrowse then
     Exit;

  if Key=#13 then
     SelectNext(ActiveControl, True, True);
  if Key=#27 then
     SelectNext(ActiveControl, False, True);
end;

procedure TRegTamuFrm.edtJnsReservasiPropertiesEditValueChanged(
  Sender: TObject);
var
vTarif : String;
begin

  if edtJnsReservasi.Text= 'WALK IN' then
     vTarif:= FloatToStr(qKamartarif.AsFloat)
  else
    if edtJnsReservasi.Text= 'PHONE' then
    vTarif:= FloatToStr(qKamartarif_phone.AsFloat)
  else
    if edtJnsReservasi.Text= 'BOOKING.COM' then
     vTarif:= FloatToStr(qKamartarif_booking_com.AsFloat)
  else
    if edtJnsReservasi.Text= 'TRAVELOKA' then
     vTarif:= FloatToStr(qKamartarif_traveloka.AsFloat)
  else
    if edtJnsReservasi.Text= 'PEGI.PEGI' then
     vTarif:= FloatToStr(qKamartarif_pegi_pegi.AsFloat)
  else
    if edtJnsReservasi.Text= 'TICKET.COM' then
     vTarif:= FloatToStr(qKamartarif_tiket_com.AsFloat)
  else
    if edtJnsReservasi.Text= '' then
     vTarif:= '0';

  dbLabelTarif.Caption:= vTarif;
end;

procedure TRegTamuFrm.edtRegCeckInPropertiesChange(Sender: TObject);
begin
  UpdateBookDays;
end;

procedure TRegTamuFrm.edtRegCeckOutExit(Sender: TObject);
begin
//  ShowMessage('out');
end;

procedure TRegTamuFrm.edtRegCeckOutPropertiesChange(Sender: TObject);
begin
  UpdateBookDays;
end;


end.

