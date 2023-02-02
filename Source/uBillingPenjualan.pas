unit uBillingPenjualan;

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
  Vcl.DBCtrls, cxDBLabel, ZSequence, frxClass, frxDBSet, kbmMemTable, uDM,
  cxDBLookupComboBox, cxEditRepositoryItems, cxDBEditRepository;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);

  TfrmBillingPenjualan = class(TForm)
    dsGuest: TDataSource;
    zqryDisplay: TZQuery;
    pnlHeader: TPanel;
    advpnlNav: TAdvPanel;
    pnlCrudCtrl: TPanel;
    glbtnAddNew: TAdvGlassButton;
    glbtnEdit: TAdvGlassButton;
    glbtnDel: TAdvGlassButton;
    pnlCrudAct: TPanel;
    glbtnCrudSave: TAdvGlassButton;
    glbtnCrudCancel: TAdvGlassButton;
    glbtnRefresh: TAdvGlassButton;
    glbtnCLose: TAdvGlassButton;
    dsDetail: TDataSource;
    zqryDetail: TZQuery;
    cxPageCtrlGuestBill: TcxPageControl;
    tsBrowse: TcxTabSheet;
    pnlSearchPanel: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    wwDbDtpFrom: TwwDBDateTimePicker;
    wwDbDtpTo: TwwDBDateTimePicker;
    edtFilter: TEdit;
    glbtnGo: TAdvGlassButton;
    tsDetail: TcxTabSheet;
    advpnlMaster: TAdvPanel;
    advtlbrDetailNav: TAdvToolBar;
    advglowbtnEdit: TDBAdvGlowButton;
    advglowbtnAdd: TDBAdvGlowButton;
    advglowbtnDEL: TDBAdvGlowButton;
    advglowbtnSave: TDBAdvGlowButton;
    advglowbtnCancel: TDBAdvGlowButton;
    advglowbtnRefresh: TDBAdvGlowButton;
    advpnlGrid: TAdvPanel;
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
    GroupBox2: TGroupBox;
    Label11: TLabel;
    memKeterangan: TcxDBMemo;
    sq_nota: TZSequence;
    sq_nota_detail: TZSequence;
    Get_No_Trans: TZQuery;
    LookKamar: TwwLookupDialog;
    LKamar: TZReadOnlyQuery;
    qGetBill: TZReadOnlyQuery;
    qGetBillnomor: TIntegerField;
    qGetBilldt: TDateField;
    qGetBillno_kamar: TMemoField;
    qGetBilldiskripsi: TMemoField;
    qGetBillqty: TFloatField;
    qGetBillharga: TFloatField;
    qGetBillsub_total: TFloatField;
    qGetBillid_trans: TMemoField;
    qGetBillno_transaksi: TMemoField;
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
    AdvGlbtnPrint: TAdvGlassButton;
    qTotal: TZQuery;
    AdvPanel1: TAdvPanel;
    Label7: TLabel;
    dbLabelTotal: TcxDBLabel;
    zqryDisplayid_nota: TLargeintField;
    zqryDisplayno_nota: TStringField;
    zqryDisplaydt_nota: TDateTimeField;
    zqryDisplayispost: TStringField;
    zqryDisplayiscancel: TStringField;
    zqryDisplayusr_ins: TStringField;
    zqryDisplayusr_upd: TStringField;
    zqryDisplayketerangan: TStringField;
    zqryDisplayid_trans: TStringField;
    zqryDisplaydisc_psn: TFloatField;
    zqryDisplaydisc_rp: TFloatField;
    zqryDisplaycara_bayar: TStringField;
    zqryDisplaytotal: TFloatField;
    zqryDisplayppn_rp: TFloatField;
    zqryDisplayno_register: TStringField;
    zqryDisplaysubtotal: TFloatField;
    zqryDisplayshift: TIntegerField;
    zqryDisplayisclosed: TStringField;
    zqryDisplaydt_ins: TDateTimeField;
    zqryDisplaydt_upd: TDateTimeField;
    zqryDisplaydibayar: TFloatField;
    zqryDisplayno_kamar: TStringField;
    zqryDetailid_nota: TLargeintField;
    zqryDetailid_nota_detail: TLargeintField;
    zqryDetailid_item: TStringField;
    zqryDetaildiskripsi: TStringField;
    zqryDetailqty: TFloatField;
    zqryDetailsatuan: TStringField;
    zqryDetailnomor: TIntegerField;
    zqryDetailharga: TFloatField;
    zqryDetaildisc_psn: TFloatField;
    zqryDetaildisc_rp: TFloatField;
    zqryDetailppn_rp: TFloatField;
    zqryDetailbiaya_servis: TFloatField;
    cxgrdGuest: TcxGrid;
    cxgrdbtblvwGuestDBTableView1: TcxGridDBTableView;
    cxgrdbclmnGuestDBTableView1no_nota: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1dt_nota: TcxGridDBColumn;
    cxgrdbtblvwGuestDBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1no_register: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1no_kamar: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1subtotal: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1cara_bayar: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1iscancel: TcxGridDBColumn;
    cxgrdbtblvwGuestDBTableView1ispost: TcxGridDBColumn;
    cxgrdbtblvwGuestDBTableView1Column1: TcxGridDBColumn;
    cxgrdlvlGuest: TcxGridLevel;
    Label8: TLabel;
    edtMeja: TcxDBTextEdit;
    Label9: TLabel;
    edtCaraBayar: TcxDBComboBox;
    lblKamar: TLabel;
    btnKamar: TcxDBButtonEdit;
    zqryDisplaysts: TStringField;
    cxgrdbtblvwGuestDBTableView1Column3: TcxGridDBColumn;
    zqryDisplayisdelete: TStringField;
    Get_No_Transfn_gen_nota_penjualan_number: TMemoField;
    zqryDetailsub_total: TFloatField;
    qTotaltotal_bill: TFloatField;
    LKamarno_kamar: TStringField;
    LKamarno_register: TStringField;
    LKamarnama_tamu: TStringField;
    LItem: TZReadOnlyQuery;
    LItemid_item: TStringField;
    LItemitem_name: TStringField;
    LItemsatuan: TStringField;
    LItemhrg_jual: TFloatField;
    LookItem: TwwLookupDialog;
    btnGetRoomSvcData: TBitBtn;
    grdDetail: TcxGrid;
    grddbtvDetail: TcxGridDBTableView;
    grddbtvDetailurut: TcxGridDBColumn;
    grddbtvDetailkode: TcxGridDBColumn;
    grddbtvDetaildiskripsi: TcxGridDBColumn;
    grddbtvDetailqty: TcxGridDBColumn;
    grddbtvDetailhrg_jual: TcxGridDBColumn;
    grddbtvDetailjns_bayar: TcxGridDBColumn;
    grddbtvDetailsub_total: TcxGridDBColumn;
    grdlvlDetail: TcxGridLevel;
    ER_Item: TcxEditRepository;
    ER_ID_ITEM: TcxEditRepositoryLookupComboBoxItem;
    ER_NAMA_ITEM: TcxEditRepositoryLookupComboBoxItem;
    ER_TEXT_ITEM: TcxEditRepositoryTextItem;
    dsItem: TDataSource;
    MemInfotgl_cetak: TStringField;
    MemInfousr_cetak: TStringField;
    zqryDisplayjns_bayar: TStringField;
    zqryDisplayno_kartu: TStringField;
    constructor Create(AOwner: TComponent; kdDept: TDept; aTag: Integer);
    procedure FormShow(Sender: TObject);
    procedure glbtnAddNewClick(Sender: TObject);
    procedure glbtnEditClick(Sender: TObject);
    procedure glbtnDelClick(Sender: TObject);
    procedure glbtnCrudSaveClick(Sender: TObject);
    procedure glbtnCrudCancelClick(Sender: TObject);
    procedure glbtnRefreshClick(Sender: TObject);
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
    procedure zqryDetailNewRecord(DataSet: TDataSet);
    procedure zqryDetailBeforePost(DataSet: TDataSet);
    procedure cxgrdbtblvwGuestDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure wwDbDtpFromCloseUp(Sender: TObject);
    procedure AdvGlbtnPrintClick(Sender: TObject);
    procedure zqryDetailAfterPost(DataSet: TDataSet);
    procedure zqryDetailCalcFields(DataSet: TDataSet);
    procedure btnGetRoomSvcDataClick(Sender: TObject);
    procedure grddbtvDetailkodeGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure ER_ID_ITEMPropertiesCloseUp(Sender: TObject);
    procedure ER_NAMA_ITEMPropertiesCloseUp(Sender: TObject);
    procedure ER_ID_ITEMPropertiesInitPopup(Sender: TObject);
    procedure ER_NAMA_ITEMPropertiesInitPopup(Sender: TObject);
    procedure grddbtvDetaildiskripsiGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure tsDetailShow(Sender: TObject);
    procedure zqryDisplayAfterOpen(DataSet: TDataSet);

  private
    { Private declarations }
    DBMode: TDBMode;
    vDept: TDept;
    C_vjns_transaksi, vCatitem: string;

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
  frmBillingPenjualan: TfrmBillingPenjualan;

implementation

{$R *.dfm}

uses uBayar;

constructor TfrmBillingPenjualan.Create(AOwner: TComponent; kdDept: TDept; aTag: Integer);
begin
  inherited Create(AOwner);
  vDept := kdDept;
  vTag := aTag;
end;

procedure TfrmBillingPenjualan.InsertMemTable;
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

procedure TfrmBillingPenjualan.tsDetailShow(Sender: TObject);
begin
// if (zqryDisplay.State= dsInsert) or (zqryDisplay.State= dsEdit) then
//    Exit;
// if (zqryDetail.State= dsInsert) or (zqryDetail.State= dsEdit) then
//    Exit;
end;

procedure TfrmBillingPenjualan.Cetak;
begin
  InsertMemTable;
  RepNota_A4.ShowReport;
end;

procedure TfrmBillingPenjualan.AdvGlbtnPrintClick(Sender: TObject);
var f : TBayar;
s: string;
begin
  if cxPageCtrlGuestBill.ActivePageIndex=0 then
     cxPageCtrlGuestBill.ActivePageIndex:= 1;

  if zqryDisplayisclosed.AsString='0' then begin
    try
     f:= TBayar.Create(Application);
//     f.dblblTotal.Caption:= zqryDisplaytotal.AsFloat;
     f.vId_nota:= zqryDisplayid_nota.AsLargeInt;
     if f.ShowModal=mrOk then begin

        s:= 'UPDATE transaksi.nota_penjualan ';
        s:= s+' SET jns_bayar='+QuotedStr(f.edtCaraBayar.Text);
        s:= s+', dibayar='+FloatToStr(f.qNotadibayar.AsFloat);
        s:= s+', no_kartu='+QuotedStr(f.edtNoKartu.Text);
        s:= s+' where id_nota='+IntToStr(zqryDisplayid_nota.AsLargeInt);

     end else
     Exit;
    finally
     f.Free;
    end;
  end;
  if zqryDisplaycara_bayar.AsString= 'BILLING KAMAR' then begin
     Cetak;
  //     glbtnGo.Click;
  end else begin
     Cetak;
     Bayar;
  //     glbtnGo.Click;
  end;
end;

procedure TfrmBillingPenjualan.Bayar;
begin
    try
      zqryDisplay.Edit;
      zqryDisplayisclosed.AsString:= '1';
      zqryDisplay.Post;
     except
        on E: Exception do begin
          MessageDlg('Error has been encountered !',mtError, [mbOK], 0);
        end;
     end;
end;

procedure TfrmBillingPenjualan.btnGetRoomSvcDataClick(Sender: TObject);
begin
   try
     LItem.Close;
     LItem.Params.ParamByName('id_item').Value:= vCatitem;
     LItem.Open;
     if LookItem.Execute then begin
        zqryDetail.Append;
        zqryDetaildiskripsi.AsString:= LItemitem_name.AsString;
        zqryDetailid_item.AsString:= LItemid_item.AsString;
        zqryDetailsatuan.AsString:= LItemsatuan.AsString;
        zqryDetailharga.AsFloat:= LItemhrg_jual.AsFloat;
        zqryDetail.Post;
     end;
   except
      on E: Exception do begin
        MessageDlg('Error has been encountered !',mtError, [mbOK], 0);
      end;
   end;
end;

procedure TfrmBillingPenjualan.btnKamarPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   try
     LKamar.Close;
     LKamar.Open;
     if LookKamar.Execute then begin
        zqryDisplay.Edit;
        zqryDisplayno_kamar.AsString:= LKamarno_kamar.AsString;
        zqryDisplayno_register.AsString:= LKamarno_register.AsString;
//        zqryDisplay.Post;
     end;
   except
      on E: Exception do begin
        MessageDlg('Error has been encountered !',mtError, [mbOK], 0);
      end;
   end;

end;

procedure TfrmBillingPenjualan.cxgrdbtblvwGuestDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if (zqryDisplay.State= dsInsert) or (zqryDisplay.State= dsEdit) then
     Exit;
  if zqryDetail.State= dsEdit then
     Exit;
  if cxPageCtrlGuestBill.ActivePageIndex=0 then
     cxPageCtrlGuestBill.ActivePageIndex:= 1;
     DBMode:= dmBrowse;
     UpdateCrudControls;
end;

procedure TfrmBillingPenjualan.cxgrdbtblvwGuestDBTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
//  if (zqryDisplay.State <> dsBrowse) then
//    APrevFocusedItem.Focused := False;
end;

procedure TfrmBillingPenjualan.cxgrdbtblvwGuestDBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
//  if (zqryDisplay.State <> dsBrowse) then
//    APrevFocusedRecord.Focused := False;
end;

procedure TfrmBillingPenjualan.cxPageCtrlGuestBillChange(Sender: TObject);
begin
  if TcxPageControl(Sender).ActivePageIndex=1 then begin
     zqryDetail.Close;
     zqryDetail.Params.ParamByName('pid_nota').Value:= zqryDisplayid_nota.Value;
     zqryDetail.Open;
  end;
end;

procedure TfrmBillingPenjualan.edtCaraBayarPropertiesCloseUp(Sender: TObject);
begin
  if edtCaraBayar.Text= 'TUNAI' then begin
     lblKamar.Visible:= False;
     btnKamar.Visible:= False;
  end else begin
     lblKamar.Visible:= True;
     btnKamar.Visible:= True;
  end;
end;

procedure TfrmBillingPenjualan.ER_ID_ITEMPropertiesCloseUp(Sender: TObject);
begin
  if zqryDetail.State= dsBrowse then
     Exit;
     zqryDetaildiskripsi.AsString:= LItemitem_name.AsString;
//     zqryDetailid_item.AsString:= LItemid_item.AsString;
     zqryDetailsatuan.AsString:= LItemsatuan.AsString;
     zqryDetailharga.AsFloat:= LItemhrg_jual.AsFloat;

end;

procedure TfrmBillingPenjualan.ER_ID_ITEMPropertiesInitPopup(Sender: TObject);
begin
  try
    LItem.Close;
    LItem.Open;
  except
    on E: Exception do
       MessageDlg(E.Message, mtError, [mbOK], 0);
  end;
end;

procedure TfrmBillingPenjualan.ER_NAMA_ITEMPropertiesCloseUp(Sender: TObject);
begin
  if zqryDetail.State= dsBrowse then
     Exit;
//     zqryDetaildiskripsi.AsString:= LItemitem_name.AsString;
     zqryDetailid_item.AsString:= LItemid_item.AsString;
     zqryDetailsatuan.AsString:= LItemsatuan.AsString;
     zqryDetailharga.AsFloat:= LItemhrg_jual.AsFloat;
end;

procedure TfrmBillingPenjualan.ER_NAMA_ITEMPropertiesInitPopup(Sender: TObject);
begin
  try
    LItem.Close;
    LItem.Open;
  except
    on E: Exception do
       MessageDlg(E.Message, mtError, [mbOK], 0);
  end;
end;

procedure TfrmBillingPenjualan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmBillingPenjualan.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  //CanClose:= (zqryDisplay.State=dsInactive) or (zqryDisplay.State=dsBrowse);
  CanClose:= (DBMode=dmNone) or (DBMode=dmBrowse);
  if not CanClose then
    MessageDlg('Please save data or cancel editing first!', mtError, [mbOK], 0);
end;

procedure TfrmBillingPenjualan.FormShow(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\images\bg_main.JPG');
  case vDept of
    tdResto: begin
      C_vjns_transaksi := '103';
      Label2.Caption := 'BILLING RESTAURANT';
      Label1.Caption := 'Nota Transaksi Penjualan Restaurant';
      tsBrowse.Caption := 'Browse Transaksi';
      tsDetail.Caption := 'Detail Transaksi';
      vCatitem:= 'RO';
    end;
    tdPool: begin
      C_vjns_transaksi := '201';
      Label2.Caption := 'BILLING POOL';
      Label1.Caption := 'Nota Penjualan Item Kolam Renang';
      tsBrowse.Caption := 'Browse Transaksi';
      tsDetail.Caption := 'Detail Transaksi';
      vCatitem:= 'KR';
    end;
    tdHouseKeeping: begin
      C_vjns_transaksi := '202';
      Label2.Caption := 'BILLING HOUSE KEEPING';
      Label1.Caption := 'Nota Transaksi Item House Keeping';
      tsBrowse.Caption := 'Browse Transaksi';
      tsDetail.Caption := 'Detail Transaksi';
      vCatitem:= 'LY';
    end;
  end;

  zqryDisplay.Active := True;
  UpdateCrudControls;
  cxPageCtrlGuestBill.ActivePageIndex:= 0;
  cxPageCtrlGuestBill.HideTabs:= True;
  UpdateAccessControls;
end;

procedure TfrmBillingPenjualan.glbtnAddNewClick(Sender: TObject);
begin

  if zqryDisplay.State<>dsBrowse then
    Exit;

  if cxPageCtrlGuestBill.ActivePageIndex=0 then
     cxPageCtrlGuestBill.ActivePageIndex:= 1;

  try
    zqryDisplay.Append;
    zqryDetail.Close;
    zqryDetail.Params.ParamByName('pid_nota').Value:= -1;
    zqryDetail.Open;
    DBMode:= dmInsert;
  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;

  UpdateCrudControls;
  UpdateAccessControls;

end;

procedure TfrmBillingPenjualan.glbtnCLoseClick(Sender: TObject);
begin
  if cxPageCtrlGuestBill.ActivePageIndex= 1 then
     cxPageCtrlGuestBill.ActivePageIndex:= 0
  else begin
     Close;
  end;

end;

procedure TfrmBillingPenjualan.glbtnCrudCancelClick(Sender: TObject);
begin

  if (zqryDisplay.State<>dsEdit) and (zqryDisplay.State<>dsInsert) then
    Exit;

  try
    zqryDetail.Cancel;
    zqryDisplay.Cancel;
    zqryDetail.CancelUpdates;
    zqryDisplay.CancelUpdates;
  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;
  DBMode:= dmBrowse;
  if cxPageCtrlGuestBill.ActivePageIndex= 1 then
     cxPageCtrlGuestBill.ActivePageIndex:= 0;
  UpdateCrudControls;

  cxgrdGuest.Visible := True;
  //pnlFooter.Align := alBottom;

end;

procedure TfrmBillingPenjualan.glbtnCrudSaveClick(Sender: TObject);
var s: string;
begin

//  if (zqryDisplay.State<>dsEdit) and (zqryDisplay.State<>dsInsert) then
//      zqryDisplay.Post;
//  if (zqryDetail.State<>dsEdit) and (zqryDetail.State<>dsInsert) then
//      zqryDetail.Post;
//  zqryDisplay.Edit;
//  strngfldDisplayisclosed.AsString:= '1';
//  zqryDisplay.Post;

  try
    zqryDisplay.ApplyUpdates;
    zqryDetail.ApplyUpdates;
    zqryDisplay.CommitUpdates;
    zqryDetail.CommitUpdates;
  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;
  DBMode:= dmNone;
  cxPageCtrlGuestBill.ActivePageIndex:= 0;
  UpdateCrudControls;
  glbtnGo.Click;

  cxgrdGuest.Visible := True;

end;

procedure TfrmBillingPenjualan.glbtnDelClick(Sender: TObject);
begin
  if zqryDisplay.State<>dsBrowse then
    Exit;

  if MessageDlg('Delete selected data?', mtConfirmation, [mbYes, mbNo], 0) = mrYes  then begin
    try
      zqryDisplay.Delete;
    except
      on E: Exception do
        MessageDlg(E.Message, mtError, [mbOK], 0);
    end;
  end;

  UpdateCrudControls;
  UpdateAccessControls;

end;

procedure TfrmBillingPenjualan.glbtnEditClick(Sender: TObject);
begin
  if cxPageCtrlGuestBill.ActivePageIndex=0 then
     cxPageCtrlGuestBill.ActivePageIndex:= 1;
    try
      zqryDisplay.Edit;
      DBMode:= dmEdit;
    except
      on E: Exception do begin
        DBMode:= dmBrowse;
        MessageDlg(E.Message, mtError, [mbOK], 0);
      end;
    end;

  UpdateCrudControls;
  UpdateAccessControls;

end;

procedure TfrmBillingPenjualan.glbtnGoClick(Sender: TObject);
var s, dt0, dt1, dti, dtf : String;
begin

     dt0:= QuotedStr(FormatDateTime('dd/mm/yyyy',wwDbDtpFrom.Date));
     dt1:= QuotedStr(FormatDateTime('dd/mm/yyyy',wwDbDtpTo.Date));
     dtf:= QuotedStr('dd/mm/yyyy');

      s:= 'SELECT z.* FROM (';
      s:= s+' select a.id_nota, a.no_nota, a.dt_nota, a.ispost, a.iscancel, a.usr_ins, a.usr_upd, ';
      s:= s+' a.keterangan, a.id_trans, a.disc_psn, a.disc_rp, a.cara_bayar, a.total, a.ppn_rp, a.no_register, a.subtotal, ';
      s:= s+' a.shift, a.isclosed, a.dt_ins, a.dt_upd, a.dibayar, a.no_kamar, a.sts, a.isdelete, a.jns_bayar, a.no_kartu';
      s:= s+' FROM transaksi.nota_penjualan a';
      s:= s+' WHERE a.isdelete='+QuotedStr('0')+' AND a.id_trans='+QuotedStr(C_vjns_transaksi);
      s:= s+' and a.dt_nota between to_timestamp('+dt0+','+dtf+') and to_timestamp('+dt1+','+dtf+') +  interval '+QuotedStr('23 hours 59 min');
      s:= s+') AS z';
      s:= s+' WHERE 1=1 ';

      s:= s+' AND (z.no_nota LIKE '+QuotedStr('%'+edtFilter.Text+'%');
      s:= s+' OR upper(z.no_register) LIKE '+QuotedStr('%'+UpperCase(edtFilter.Text)+'%');
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

procedure TfrmBillingPenjualan.glbtnRefreshClick(Sender: TObject);
begin

  if zqryDisplay.State<>dsBrowse then
    Exit;

  try
    zqryDisplay.Refresh;
  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;

  UpdateCrudControls;
  UpdateAccessControls;

end;

procedure TfrmBillingPenjualan.grddbtvDetaildiskripsiGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
    if zqryDetail.State in [dsInsert,dsedit] then begin
       AProperties := ER_NAMA_ITEM.Properties;
    end
    else
       AProperties := ER_TEXT_ITEM.Properties;
end;

procedure TfrmBillingPenjualan.grddbtvDetailkodeGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
    if zqryDetail.State in [dsInsert,dsedit] then begin
       AProperties := ER_ID_ITEM.Properties;
    end
    else
       AProperties := ER_TEXT_ITEM.Properties;

end;

procedure TfrmBillingPenjualan.UpdateAccessControls;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if zqryDisplay.State<>dsInactive then begin

    isEmpty := zqryDisplay.RecordCount <= 0;
    DataModule1.GetAccessRights(vTag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    zqryDisplay.Active := accbrowse;
    glbtnGo.enabled := accbrowse;
//    glbtnAddNew.Visible:= isBrowse;
    glbtnAddNew.Enabled:= accinsert;
//    glbtnEdit.Visible:= isBrowse;
    glbtnEdit.Enabled:= not isEmpty and accedit;
//    glbtnDel.Visible:= isBrowse;
    glbtnDel.Enabled:= not isEmpty and accdelete;
    AdvGlbtnPrint.Enabled := accprint;

  end;
end;

procedure TfrmBillingPenjualan.UpdateCrudControls;
begin

  case zqryDisplay.State of
    dsInactive, dsBrowse: begin
      pnlCrudAct.Visible := False;
      pnlCrudCtrl.Visible := True;
      pnlCrudCtrl.Left := 10;
      glbtnCLose.Visible:= True;
      if zqryDisplaycara_bayar.AsString= 'TUNAI' then begin
         lblKamar.Visible:= False;
         btnKamar.Visible:= False;
      end else begin
         lblKamar.Visible:= True;
         btnKamar.Visible:= True;
      end;
      edtCaraBayar.Enabled:= False;
      btnKamar.Enabled:= False;
      edtMeja.Enabled:= False;
      edtDateNota.Enabled:= False;
      edtShift.Enabled:= False;
      memKeterangan.Enabled:= False;
      advtlbrDetailNav.Enabled:= False;
      btnGetRoomSvcData.Enabled:= False;
      //cxGrid.Enabled := True;
      //pnlFooter.Visible := False;
    end;

    dsEdit, dsInsert: begin
      pnlCrudAct.Visible := True;
      pnlCrudAct.Left := 10;
      glbtnCLose.Visible:= False;
      pnlCrudCtrl.Visible := False;
      lblKamar.Visible:= False;
      btnKamar.Visible:= False;
      btnKamar.Enabled:= True;
      edtCaraBayar.Enabled:= True;
      btnKamar.Enabled:= True;
      edtMeja.Enabled:= True;
      edtDateNota.Enabled:= True;
      edtShift.Enabled:= True;
      memKeterangan.Enabled:= True;
      advtlbrDetailNav.Enabled:= True;
      btnGetRoomSvcData.Enabled:= True;
      //cxDBTreeListRoomData.Enabled := False;
      //pnlFooter.Visible := True;
    end;

  end;

end;

procedure TfrmBillingPenjualan.wwDbDtpFromCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
    DecodeDate(wwDbDtpFrom.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    wwDbDtpTo.Date:=IncDay(IncMonth(dt, 1),-1);
end;

procedure TfrmBillingPenjualan.zqryDetailAfterPost(DataSet: TDataSet);
begin
    zqryDisplay.Edit;
    qTotal.Close;
    qTotal.Params.ParamByName('pid_nota').Value:= zqryDisplayid_nota.Value;
    qTotal.Open;
    zqryDisplaytotal.AsFloat:= qTotaltotal_bill.AsFloat;
    zqryDisplay.Post;
end;

procedure TfrmBillingPenjualan.zqryDetailBeforePost(DataSet: TDataSet);
begin
  if zqryDisplay.State=dsInsert then begin
     zqryDisplay.Post;

    if zqryDetail.State=dsInsert then
       zqryDetailid_nota.AsLargeInt:= zqryDisplayid_nota.AsLargeInt;
  end;

end;

procedure TfrmBillingPenjualan.zqryDetailCalcFields(DataSet: TDataSet);
begin
  zqryDetailsub_total.AsFloat:= zqryDetailqty.AsFloat*zqryDetailharga.AsFloat;
end;

procedure TfrmBillingPenjualan.zqryDetailNewRecord(DataSet: TDataSet);
begin
  zqryDetailid_nota_detail.AsLargeInt:= sq_nota_detail.GetNextValue;
  zqryDetailid_nota.AsLargeInt:= zqryDisplayid_nota.AsLargeInt;
  zqryDetailqty.AsFloat:= 1;
  zqryDetaildisc_psn.AsFloat:= 0;
  zqryDetaildisc_rp.AsFloat:= 0;
  zqryDetailharga.AsFloat:= 0;
  zqryDetailppn_rp.AsFloat:= 0;

  if zqryDetail.RecNo=0 then
  zqryDetailnomor.AsInteger:= 1
  else
  zqryDetailnomor.AsInteger:= zqryDetail.RecNo;

end;

procedure TfrmBillingPenjualan.zqryDisplayAfterOpen(DataSet: TDataSet);
begin
  UpdateAccessControls;
end;

procedure TfrmBillingPenjualan.zqryDisplayBeforePost(DataSet: TDataSet);
begin

    if zqryDisplay.State=dsInsert then begin
        zqryDisplayid_nota.AsLargeInt:= sq_nota.GetNextValue;
        zqryDisplayusr_ins.AsString:= DataModule1.UserConnect;
        zqryDisplayusr_upd.AsString:= DataModule1.UserConnect;
        Get_No_Trans.Close;
        Get_No_Trans.Params.ParamByName('pid_trans').Value:= C_vjns_transaksi;
        Get_No_Trans.Open;
        zqryDisplayno_nota.AsString:= Get_No_Transfn_gen_nota_penjualan_number.AsString;
    end else if zqryDisplay.State=dsEdit then
        zqryDisplayusr_upd.AsString:= DataModule1.UserConnect;
    if  zqryDisplayid_nota.AsLargeInt= -1 then
        raise Exception.Create('Error Internal (id_nota tidak terisi). Semua input dibatalkan !');

end;

procedure TfrmBillingPenjualan.zqryDisplayNewRecord(DataSet: TDataSet);
begin
  DataModule1.vSysDate.Close;
  DataModule1.vSysDate.Open;
  DataModule1.qryShift.Close;
  DataModule1.qryShift.Open;

    zqryDisplayid_nota.AsLargeInt:= -1;
    zqryDisplaydt_nota.AsDateTime:= DataModule1.vSysDatedt_server.AsDateTime;
    zqryDisplayshift.AsInteger:= DataModule1.intgrfldShiftshift_server.AsInteger;
    zqryDisplayno_register.AsString:= '-';
    zqryDisplayno_kamar.AsString:= '-';
    zqryDisplayispost.AsString:= '1';
    zqryDisplayiscancel.AsString:= '0';
    zqryDisplayisdelete.AsString:= '0';
    zqryDisplayisclosed.AsString:= '0';
    zqryDisplaysts.AsString:= '0';
    zqryDisplayid_trans.AsString:= C_vjns_transaksi;
    zqryDisplaytotal.AsFloat:=0;
    zqryDisplaysubtotal.AsFloat:=0;
    zqryDisplaydisc_psn.AsFloat:= 0;
    zqryDisplaydisc_rp.AsFloat:= 0;
    zqryDisplayppn_rp.AsFloat:= 0;
    zqryDisplaydibayar.AsFloat:= 0;
    zqryDisplaycara_bayar.AsString:= 'TUNAI';
    zqryDisplayketerangan.AsString:= '-';
    zqryDisplaysts.AsString:= '-';

end;

end.

