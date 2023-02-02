unit uBillingKredit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DateUtils, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids, ZAbstractConnection,
  ZConnection, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxCustomData, cxStyles, cxTL, cxMaskEdit, cxCheckBox, cxTLdxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxInplaceContainer, cxDBTL, cxTLData,
  Vcl.StdCtrls, Vcl.Buttons, vcl.wwdialog, vcl.wwidlg, Vcl.ExtCtrls,
  cxContainer, cxEdit, cxTextEdit, cxLabel, AdvGlassButton, cxButtonEdit,
  cxDBEdit, AdvPanel, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxDropDownEdit, dxBarBuiltInMenu, cxPC,
  vcl.wwdbdatetimepicker, AdvGlowButton, AdvToolBar, cxMemo, cxCalendar,
  Vcl.DBCtrls, cxDBLabel, ZSequence, frxClass, frxDBSet, kbmMemTable, Vcl.Menus,
  AdvMenus;

const
  C_vjns_transaksi = '102';

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);

  TfrmBillingKredit = class(TForm)
    dsGuest: TDataSource;
    zqryDisplay: TZQuery;
    pnlHeader: TPanel;
    advpnlNav: TAdvPanel;
    glbtnCLose: TAdvGlassButton;
    lrgntfldDisplayid_nota: TLargeintField;
    strngfldDisplayno_nota: TStringField;
    dtmfldDisplaydt_nota: TDateTimeField;
    strngfldDisplayno_register: TStringField;
    strngfldDisplayid_tamu: TStringField;
    strngfldDisplaynama_tamu: TStringField;
    intgrfldDisplayshift: TIntegerField;
    fltfldDisplaytotal: TFloatField;
    strngfldDisplayno_kamar: TStringField;
    strngfldDisplaykelas: TStringField;
    strngfldDisplayusr_upd: TStringField;
    strngfldDisplayispost: TStringField;
    strngfldDisplayiscancel: TStringField;
    dsDetail: TDataSource;
    zqryDetail: TZQuery;
    lrgntfldDetailid_nota: TLargeintField;
    strngfldDetailkode: TStringField;
    strngfldDetaildiskripsi: TStringField;
    fltfldDetailqty: TFloatField;
    strngfldDetailsatuan: TStringField;
    fltfldDetailharga: TFloatField;
    fltfldDetaildisc_psn: TFloatField;
    fltfldDetaildisc_rp: TFloatField;
    strngfldDetailasal: TStringField;
    intgrfldDetailurut: TIntegerField;
    lrgntfldDetailid_nota_detail: TLargeintField;
    strngfldDetailno_reff: TStringField;
    strngfldDetailid_rek_gl: TStringField;
    dtmfldDetaildt_nota_detail: TDateTimeField;
    strngfldDetailno_kamar: TStringField;
    strngfldDetailistambahan: TStringField;
    fltfldDetailppn_rp: TFloatField;
    strngfldDetailkelas: TStringField;
    strngfldDetailid_nota_item: TStringField;
    fltfldDetailhpp: TFloatField;
    dtmfldDetaildt_reff: TDateTimeField;
    cxPageCtrlGuestBill: TcxPageControl;
    tsBrowse: TcxTabSheet;
    cxgrdGuest: TcxGrid;
    cxgrdbtblvwGuestDBTableView1: TcxGridDBTableView;
    cxgrdbclmnGuestDBTableView1no_nota: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1dt_nota: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1no_register: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1nomor_id: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1nama_tamu: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1no_kamar: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1kelas: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1total: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1usr_upd: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1ispost: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1iscancel: TcxGridDBColumn;
    cxgrdlvlGuest: TcxGridLevel;
    pnlSearchPanel: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    wwDbDtpFrom: TwwDBDateTimePicker;
    wwDbDtpTo: TwwDBDateTimePicker;
    edtFilter: TEdit;
    glbtnGo: TAdvGlassButton;
    tsDetail: TcxTabSheet;
    advpnlMaster: TAdvPanel;
    advpnlGrid: TAdvPanel;
    cxgrd1: TcxGrid;
    cxgrd1DBTableView1: TcxGridDBTableView;
    cxgrdbclmncxgrd1DBTableView1urut: TcxGridDBColumn;
    cxgrdbclmncxgrd1DBTableView1diskripsi: TcxGridDBColumn;
    cxgrdbclmncxgrd1DBTableView1satuan: TcxGridDBColumn;
    cxgrdbclmncxgrd1DBTableView1qty: TcxGridDBColumn;
    cxgrdbclmncxgrd1DBTableView1harga: TcxGridDBColumn;
    cxgrdbclmncxgrd1DBTableView1ColumnSubTotal: TcxGridDBColumn;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape5: TShape;
    Shape4: TShape;
    Shape7: TShape;
    Shape6: TShape;
    Shape9: TShape;
    Shape8: TShape;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    edtNoNota: TcxDBTextEdit;
    edtIndex: TcxDBTextEdit;
    edtDateNota: TcxDBDateEdit;
    edtShift: TcxDBComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    lblKamar: TLabel;
    lblNama: TLabel;
    edtCaraBayar: TcxDBComboBox;
    btnKamar: TcxDBButtonEdit;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    memKeterangan: TcxDBMemo;
    lblNoKartu: TLabel;
    edtNoKartu: TcxDBTextEdit;
    strngfldDisplaycara_bayarar: TStringField;
    strngfldDisplayno_kartu: TStringField;
    dblblNamaTamu: TcxDBLabel;
    strngfldDisplayketerangan: TStringField;
    strngfldDisplayusr_ins: TStringField;
    fltfldDisplaydisc_psn: TFloatField;
    fltfldDisplaydisc_rp: TFloatField;
    fltfldDisplayppn_rp: TFloatField;
    strngfldDisplayisdelete: TStringField;
    fltfldDisplaynet_n_ppn: TFloatField;
    sq_nota: TZSequence;
    sq_nota_detail: TZSequence;
    Get_No_Trans: TZQuery;
    Get_No_Transfn_gen_nota_number: TMemoField;
    LookKamar: TwwLookupDialog;
    LKamar: TZReadOnlyQuery;
    LKamarno_kamar: TStringField;
    LKamarnama_tamu: TStringField;
    LKamarno_register: TStringField;
    qGetBill: TZReadOnlyQuery;
    qGetBillnomor: TIntegerField;
    qGetBilldt: TDateField;
    qGetBillno_kamar: TMemoField;
    qGetBilldiskripsi: TMemoField;
    qGetBillqty: TFloatField;
    qGetBillharga: TFloatField;
    qGetBillsub_total: TFloatField;
    strngfldDisplayid_trans: TStringField;
    cxgrd1DBTableView1Column1: TcxGridDBColumn;
    qGetBillid_trans: TMemoField;
    qGetBillno_transaksi: TMemoField;
    strngfldDisplayisclosed: TStringField;
    strngfldDisplayispaket: TStringField;
    fltfldDisplaydibayar: TFloatField;
    strngfldDisplayasal: TStringField;
    fltfldDetailsubtotal: TFloatField;
    fltfldDisplaysubtotal: TFloatField;
    dtmfldDisplaydt_ins: TDateTimeField;
    dtmfldDisplaydt_upd: TDateTimeField;
    Exec: TZQuery;
    MemInfo: TkbmMemTable;
    MemInfologo: TBlobField;
    MemInfonama_perusahaan: TStringField;
    MemInfoalamat_perusahaan: TStringField;
    MemInfotlp_perusahaan: TStringField;
    MemInfokota_perusahaan: TStringField;
    MemInfoemail: TStringField;
    MemInfojudul: TStringField;
    frxdbInfo: TfrxDBDataset;
    RepNota_A4: TfrxReport;
    frxdbqryDisplay: TfrxDBDataset;
    frxdbqryDetail: TfrxDBDataset;
    qTotal: TZQuery;
    qTotaltotal_bill: TFloatField;
    AdvPanel1: TAdvPanel;
    Label7: TLabel;
    dbLabelTotal: TcxDBLabel;
    cxgrdbtblvwGuestDBTableView1Column1: TcxGridDBColumn;
    MemInfotgl_cetak: TStringField;
    MemInfousr_cetak: TStringField;
    cxgrdbtblvwGuestDBTableViewwDibayar: TcxGridDBColumn;
    qryRegDetail: TZQuery;
    qryRegDetailno_kamar: TStringField;
    qryRegDetaildt_masuk: TDateTimeField;
    qryRegDetaildt_keluar: TDateTimeField;
    qryRegDetailharga: TFloatField;
    qryRegDetailid_item: TStringField;
    qryRegDetailqty: TFloatField;
    qryRegDetailtype_kamar: TStringField;
    frxdbRegDetail: TfrxDBDataset;
    LKamarid_register: TLargeintField;
    PopUpBayar: TAdvPopupMenu;
    btnBayar: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure glbtnCLoseClick(Sender: TObject);
    procedure zqryDisplayNewRecord(DataSet: TDataSet);
    procedure zqryDisplayBeforePost(DataSet: TDataSet);
    procedure cxgrdbtblvwGuestDBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxgrdbtblvwGuestDBTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure glbtnGoClick(Sender: TObject);
    procedure cxPageCtrlGuestBillChange(Sender: TObject);
    procedure edtCaraBayarPropertiesCloseUp(Sender: TObject);
    procedure btnKamarPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdbtblvwGuestDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnKamarPropertiesChange(Sender: TObject);
    procedure wwDbDtpFromCloseUp(Sender: TObject);
    procedure btnBayarClick(Sender: TObject);

    constructor Create(AOwner: TComponent; aTag: Integer);

  private
    { Private declarations }
    DBMode: TDBMode;
    vTag: Integer;
    procedure UpdateAccessControls;

    procedure UpdateCrudControls;
    procedure InsertMemTable;
    procedure Cetak;
    procedure Bayar;

  public
    { Public declarations }
  end;

var
  frmBillingKredit: TfrmBillingKredit;

implementation

uses
  uDM, uBayarNotaKredit;

{$R *.dfm}

procedure TfrmBillingKredit.InsertMemTable;
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
   MemInfojudul.AsString:= Label2.Caption;
   MemInfousr_cetak.AsString:= DataModule1.UserConnect;
   MemInfotgl_cetak.AsString:= FormatDateTime('dd-mmm-yyyy hh:mm:ss',now);
   MemInfo.Post;
  except
    on E: Exception do begin
      MessageDlg(E.Message, mtError, [mbOK], 0);
    end
  end;

end;

procedure TfrmBillingKredit.Cetak;
begin
  InsertMemTable;
  qryRegDetail.Close;
  qryRegDetail.Params.ParamByName('pno_reg').Value:= strngfldDisplayno_register.Value;
  qryRegDetail.Open;
  RepNota_A4.ShowReport;
end;

constructor TfrmBillingKredit.Create(AOwner: TComponent; aTag: Integer);
begin
  inherited Create(AOwner);
  vTag := aTag;
end;

procedure TfrmBillingKredit.Bayar;
begin
    try
      zqryDisplay.Edit;
      strngfldDisplayisclosed.AsString:= '1';
      zqryDisplay.Post;
     except
        on E: Exception do begin
          MessageDlg('Error has been encountered !',mtError, [mbOK], 0);
        end;
     end;
end;

procedure TfrmBillingKredit.btnBayarClick(Sender: TObject);
var f : TBayarNotaKredit;
s, vNow: string;
begin
  if cxPageCtrlGuestBill.ActivePageIndex=0 then
     cxPageCtrlGuestBill.ActivePageIndex:= 1;

  DataModule1.vSysDate.Close;
  DataModule1.vSysDate.Open;
  vNow:= FormatDateTime('yyyy/mm/dd hh:mm:ss', DataModule1.vSysDatedt_server.AsDateTime);

  if strngfldDisplayisclosed.AsString='0' then begin
    try
     f:= TBayarNotaKredit.Create(Application);
     f.vId_nota:= lrgntfldDisplayid_nota.AsLargeInt;
     if f.ShowModal=mrOk then begin

        Exec.Close;
        Exec.SQL.Clear;
        Exec.Params.Clear;
        s:= 'UPDATE transaksi.nota ';
        s:= s+' SET dibayar='+FloatToStr(f.qNotadibayar.AsFloat)+',';
        s:= s+' dt_nota='+QuotedStr(vNow);
        s:= s+' where id_nota='+IntToStr(lrgntfldDisplayid_nota.AsLargeInt);
        Exec.SQL.Add(s);
        Exec.ExecSQL;

     end else
     Exit;
    finally
     f.Free;
    end;

  end;
     Cetak;
     Bayar;
     glbtnGo.Click;
end;

procedure TfrmBillingKredit.btnKamarPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   try
     LKamar.Close;
     LKamar.Open;
     if LookKamar.Execute then begin
        zqryDisplay.Edit;
        strngfldDisplayno_kamar.AsString:= LKamarno_kamar.AsString;
        strngfldDisplaynama_tamu.AsString:= LKamarnama_tamu.AsString;
        strngfldDisplayno_register.AsString:= LKamarno_register.AsString;
//        zqryDisplay.Post;
     end;
   except
      on E: Exception do begin
        MessageDlg('Error has been encountered !',mtError, [mbOK], 0);
      end;
   end;

end;

procedure TfrmBillingKredit.btnKamarPropertiesChange(Sender: TObject);
begin
//  if btnKamar.Text= '-' then begin
//     btnGetRoomSvcData.Enabled:= False;
//  end else
//  if btnKamar.text= '' then begin
//     btnGetRoomSvcData.Enabled:= False;
//  end else begin
//     btnGetRoomSvcData.Enabled:= True;
//  end;

end;

procedure TfrmBillingKredit.cxgrdbtblvwGuestDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if (zqryDisplay.State= dsInsert) or (zqryDisplay.State= dsEdit) then
     Exit;
  if cxPageCtrlGuestBill.ActivePageIndex=0 then
     cxPageCtrlGuestBill.ActivePageIndex:= 1;
     DBMode:= dmBrowse;
     UpdateCrudControls;
end;

procedure TfrmBillingKredit.cxgrdbtblvwGuestDBTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
//  if (zqryDisplay.State <> dsBrowse) then
//    APrevFocusedItem.Focused := False;
end;

procedure TfrmBillingKredit.cxgrdbtblvwGuestDBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
//  if (zqryDisplay.State <> dsBrowse) then
//    APrevFocusedRecord.Focused := False;
end;

procedure TfrmBillingKredit.cxPageCtrlGuestBillChange(Sender: TObject);
begin
  if TcxPageControl(Sender).ActivePageIndex=1 then begin
     zqryDetail.Close;
     zqryDetail.Params.ParamByName('id_nota').Value:= lrgntfldDisplayid_nota.Value;
     zqryDetail.Open;
  end;
end;

procedure TfrmBillingKredit.edtCaraBayarPropertiesCloseUp(Sender: TObject);
begin
  if (edtCaraBayar.Text= 'DEBIT') or (edtCaraBayar.Text= 'TRANSFER') then begin
     lblNoKartu.Visible:= True;
     edtNoKartu.Visible:= True;
  end else begin
     lblNoKartu.Visible:= False;
     edtNoKartu.Visible:= False;
  end;

end;

procedure TfrmBillingKredit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmBillingKredit.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  //CanClose:= (zqryDisplay.State=dsInactive) or (zqryDisplay.State=dsBrowse);
  CanClose:= (DBMode=dmNone) or (DBMode=dmBrowse);
  if not CanClose then
    MessageDlg('Please save data or cancel editing first!', mtError, [mbOK], 0);
end;

procedure TfrmBillingKredit.FormShow(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\images\bg_main.JPG');
  zqryDisplay.Active := True;
  UpdateCrudControls;
  cxPageCtrlGuestBill.ActivePageIndex:= 0;
  cxPageCtrlGuestBill.HideTabs:= True;

  UpdateAccessControls;

end;

procedure TfrmBillingKredit.glbtnCLoseClick(Sender: TObject);
begin
  if cxPageCtrlGuestBill.ActivePageIndex= 1 then
     cxPageCtrlGuestBill.ActivePageIndex:= 0
  else begin
     Close;
  end;

end;

procedure TfrmBillingKredit.glbtnGoClick(Sender: TObject);
var s, dt0, dt1, dti, dtf : String;
begin

     dt0:= QuotedStr(FormatDateTime('dd/mm/yyyy',wwDbDtpFrom.Date));
     dt1:= QuotedStr(FormatDateTime('dd/mm/yyyy',wwDbDtpTo.Date));
     dtf:= QuotedStr('dd/mm/yyyy');

      s:= 'SELECT z.* FROM (';
      s:= s+' select a.id_nota, a.no_nota, a.dt_nota, a.cara_bayar, a.no_kartu, a.no_register, a.id_tamu, ';
      s:= s+' a.nama_tamu, a.disc_psn, a.disc_rp, a.ppn_rp, a.shift, a.total, a.no_kamar, a.kelas, a.id_trans, a.usr_ins, a.usr_upd, a.ispost, a.iscancel, a.keterangan, ';
      s:= s+' a.dt_ins, a.dt_upd, a.asal, a.dibayar, a.ispaket, a.isclosed, a.isdelete, a.subtotal, a.net_n_ppn';
      s:= s+' FROM transaksi.nota a';
      s:= s+' WHERE a.isdelete='+QuotedStr('0')+' AND a.id_trans='+QuotedStr(C_vjns_transaksi)+' AND a.cara_bayar='+QuotedStr('KREDIT')+' AND a.isclosed='+QuotedStr('0');
      s:= s+' and a.dt_nota between to_timestamp('+dt0+','+dtf+') and to_timestamp('+dt1+','+dtf+') +  interval '+QuotedStr('23 hours 59 min');
      s:= s+') AS z';
      s:= s+' WHERE 1=1 ';

      s:= s+' AND (z.no_nota LIKE '+QuotedStr('%'+edtFilter.Text+'%');
      s:= s+' OR upper(z.nama_tamu) LIKE '+QuotedStr('%'+UpperCase(edtFilter.Text)+'%');
      s:= s+') order by z.no_nota';

      try
        DataModule1.PrepareQuery(zqryDisplay);
        DataModule1.OpenQuery(zqryDisplay,s);
      except
        on E: Exception do begin
          MessageDlg(E.Message, mtError, [mbOK], 0);
        end
      end;

end;

procedure TfrmBillingKredit.UpdateAccessControls;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if zqryDisplay.State<>dsInactive then begin
    DataModule1.GetAccessRights(vTag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    if not accbrowse then begin
      MessageDlg('Not authorized!', mtError, [mbOK], 0);
      Close;
    end;

  end;
end;

procedure TfrmBillingKredit.UpdateCrudControls;
begin

  case zqryDisplay.State of
    dsInactive, dsBrowse: begin

      if (strngfldDisplaycara_bayarar.AsString= 'DEBIT') or (strngfldDisplaycara_bayarar.AsString= 'TRANSFER') then begin
         lblNoKartu.Visible:= True;
         edtNoKartu.Visible:= True;
      end else
         lblNoKartu.Visible:= False;
         edtNoKartu.Visible:= False;
      btnKamar.Enabled:= False;
      edtCaraBayar.Enabled:= False;
      //cxGrid.Enabled := True;
      //pnlFooter.Visible := False;
    end;

    dsEdit, dsInsert: begin

      lblNoKartu.Visible:= False;
      edtNoKartu.Visible:= False;
      btnKamar.Enabled:= True;
      edtCaraBayar.Enabled:= True;
      //cxDBTreeListRoomData.Enabled := False;
      //pnlFooter.Visible := True;
    end;

  end;

end;

procedure TfrmBillingKredit.wwDbDtpFromCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
    DecodeDate(wwDbDtpFrom.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    wwDbDtpTo.Date:=IncDay(IncMonth(dt, 1),-1);
end;

procedure TfrmBillingKredit.zqryDisplayBeforePost(DataSet: TDataSet);
begin
  DataModule1.vSysDate.Close;
  DataModule1.vSysDate.Open;

    if zqryDisplay.State=dsInsert then begin
        lrgntfldDisplayid_nota.AsLargeInt:= sq_nota.GetNextValue;
        strngfldDisplayusr_ins.AsString:= DataModule1.UserConnect;
        strngfldDisplayusr_upd.AsString:= DataModule1.UserConnect;
//        dtmfldDisplaydt_ins.AsDateTime:= DataModule1.vSysDatedt_server.AsDateTime;
//        dtmfldDisplaydt_upd.AsDateTime:= DataModule1.vSysDatedt_server.AsDateTime;
        Get_No_Trans.Close;
        Get_No_Trans.Open;
        strngfldDisplayno_nota.AsString:= Get_No_Transfn_gen_nota_number.AsString;
    end else if zqryDisplay.State=dsEdit then
        strngfldDisplayusr_upd.AsString:= DataModule1.UserConnect;
//        dtmfldDisplaydt_upd.AsDateTime:= DataModule1.vSysDatedt_server.AsDateTime;
    if  lrgntfldDisplayid_nota.AsLargeInt= -1 then
        raise Exception.Create('Error Internal (id_nota tidak terisi). Semua input dibatalkan !');

end;

procedure TfrmBillingKredit.zqryDisplayNewRecord(DataSet: TDataSet);
begin
  DataModule1.vSysDate.Close;
  DataModule1.vSysDate.Open;

  strngfldDisplayno_nota.AsString:= '-';
  strngfldDisplayno_register.AsString:= '-';
  strngfldDisplayid_tamu.AsString:= '-';
  strngfldDisplaynama_tamu.AsString:= '-';
  strngfldDisplayno_kamar.AsString:= '-';
  strngfldDisplaykelas.AsString:= '-';
  strngfldDisplayusr_upd.AsString:= DataModule1.UserConnect;
  strngfldDisplayusr_ins.AsString:= DataModule1.UserConnect;
  strngfldDisplayispost.AsString:= '1';
  strngfldDisplayiscancel.AsString:= '0';
  strngfldDisplaycara_bayarar.AsString:= 'TUNAI';
  strngfldDisplayno_kartu.AsString:= '-';
  strngfldDisplayketerangan.AsString:= '-';
  strngfldDisplayisdelete.AsString:= '0';
  strngfldDisplayid_trans.AsString:= '102';
  strngfldDisplayisclosed.AsString:= '0';
  strngfldDisplayispaket.AsString:= '0';
  strngfldDisplayasal.AsString:= '2';

  dtmfldDisplaydt_nota.AsDateTime:= DataModule1.vSysDatedt_server.AsDateTime;

  fltfldDisplaydibayar.AsFloat:= 0;
  fltfldDisplaytotal.AsFloat:= 0;
  fltfldDisplaydisc_psn.AsFloat:= 0;
  fltfldDisplaydisc_rp.AsFloat:= 0;
  fltfldDisplayppn_rp.AsFloat:= 0;
  fltfldDisplaysubtotal.AsFloat:= 0;
  fltfldDisplaynet_n_ppn.AsFloat:= 0;

  DataModule1.qryShift.Close;
  DataModule1.qryShift.Open;
  intgrfldDisplayshift.AsInteger:= DataModule1.intgrfldShiftshift_server.AsInteger;
  lrgntfldDisplayid_nota.AsLargeInt:= -1;

end;

end.

