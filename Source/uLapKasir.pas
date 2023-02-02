unit uLapKasir;

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
  Vcl.DBCtrls, cxDBLabel, ZSequence, frxClass, frxDBSet, kbmMemTable, uDM;

//const
//  C_vjns_transaksi = '108';

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);

  TfrmLapKasir = class(TForm)
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
    cxgrdGuest: TcxGrid;
    cxgrdbtblvwGuestDBTableView1: TcxGridDBTableView;
    cxgrdbclmnGuestDBTableView1no_nota: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1dt_nota: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1no_register: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1nomor_id: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1nama_tamu: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1no_kamar: TcxGridDBColumn;
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
    advtlbrDetailNav: TAdvToolBar;
    advglowbtnEdit: TDBAdvGlowButton;
    advglowbtnAdd: TDBAdvGlowButton;
    advglowbtnDEL: TDBAdvGlowButton;
    advglowbtnSave: TDBAdvGlowButton;
    advglowbtnCancel: TDBAdvGlowButton;
    advglowbtnRefresh: TDBAdvGlowButton;
    btnGetRoomSvcData: TBitBtn;
    advpnlGrid: TAdvPanel;
    cxgrd1: TcxGrid;
    cxgrd1DBTableView1: TcxGridDBTableView;
    cxgrdbclmncxgrd1DBTableView1urut: TcxGridDBColumn;
    cxgrdbclmncxgrd1DBTableView1diskripsi: TcxGridDBColumn;
    cxgrdbclmncxgrd1DBTableView1satuan: TcxGridDBColumn;
    cxgrdbclmncxgrd1DBTableView1qty: TcxGridDBColumn;
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
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    lblKamar: TLabel;
    edtShift: TcxDBComboBox;
    btnNamaPetugas: TcxDBButtonEdit;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    memKeterangan: TcxDBMemo;
    sq_kasir: TZSequence;
    Get_No_Trans: TZQuery;
    LookUser: TwwLookupDialog;
    LUser: TZReadOnlyQuery;
    qGetBill: TZReadOnlyQuery;
    cxgrd1DBTableView1Column1: TcxGridDBColumn;
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
    Get_No_Transfn_gen_kasir_number: TMemoField;
    zqryDisplaykd_kasir: TLargeintField;
    zqryDisplayno_kasir: TStringField;
    zqryDisplayan: TStringField;
    zqryDisplayid_rek_gl: TStringField;
    zqryDisplayusr_ins: TStringField;
    zqryDisplayusr_upd: TStringField;
    zqryDisplaydt_ins: TDateTimeField;
    zqryDisplaydt_upd: TDateTimeField;
    zqryDisplayispost: TStringField;
    zqryDisplayiscancel: TStringField;
    zqryDisplayisdelete: TStringField;
    zqryDisplayisclosed: TStringField;
    zqryDisplayid_trans: TStringField;
    zqryDisplaytotal: TFloatField;
    zqryDisplaydt_kasir: TDateTimeField;
    zqryDisplayketerangan: TStringField;
    zqryDisplayshift: TIntegerField;
    zqryDisplaydt_transaksi: TDateTimeField;
    zqryDetailkd_kasir: TLargeintField;
    zqryDetailno_nota: TStringField;
    zqryDetailurut: TIntegerField;
    zqryDetailno_register: TStringField;
    zqryDetailcara_bayar: TStringField;
    zqryDetailid_trans: TStringField;
    zqryDetailid_rek_gl: TStringField;
    zqryDetaildibayar: TFloatField;
    zqryDetailusr_ins: TStringField;
    zqryDetaildt_nota: TDateTimeField;
    zqryDetailketerangan: TStringField;
    zqryDetailjns_pembayaran: TStringField;
    zqryDetailnk: TStringField;
    qTotaltotal_pendapatan: TFloatField;
    LUservuser: TStringField;
    LUserfull_name: TStringField;
    Label6: TLabel;
    edtDateLap: TcxDBDateEdit;
    qGetBillno_nota: TStringField;
    qGetBilldt_nota: TDateTimeField;
    qGetBillcara_bayar: TStringField;
    qGetBillusr_upd: TStringField;
    qGetBillnama_tamu: TStringField;
    qGetBillno_kamar: TStringField;
    qGetBilltotal: TFloatField;
    qGetBilldescription: TStringField;
    MemInfousr_cetak: TStringField;
    MemInfotgl_cetak: TStringField;
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
    procedure zqryDetailNewRecord(DataSet: TDataSet);
    procedure zqryDetailBeforePost(DataSet: TDataSet);
    procedure btnGetRoomSvcDataClick(Sender: TObject);
    procedure cxgrdbtblvwGuestDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure wwDbDtpFromCloseUp(Sender: TObject);
    procedure zqryDetailAfterPost(DataSet: TDataSet);
    procedure btnNamaPetugasPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure AdvGlbtnPrintClick(Sender: TObject);
    procedure edtShiftPropertiesCloseUp(Sender: TObject);
    procedure zqryDisplayAfterOpen(DataSet: TDataSet);
    procedure zqryDetailAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    DBMode: TDBMode;
    vDept: TDept;
    C_vjns_transaksi, vIdtrans: string;

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
  frmLapKasir: TfrmLapKasir;

implementation

{$R *.dfm}

procedure TfrmLapKasir.btnGetRoomSvcDataClick(Sender: TObject);
var dt, dt2 : TDateTime;
    y,m,d: Word;
begin
    zqryDetail.Refresh;

   if zqryDisplay.State<>dsBrowse then
      zqryDisplay.Post;

    DecodeDate(edtDateLap.Date,y,m,d);

    if zqryDisplayshift.AsInteger=3 then
       dt2:= EncodeDate(y,m,d+1)
    else dt2:= zqryDisplaydt_kasir.AsDateTime;

     try
         qGetBill.Close;
         qGetBill.Params.ParamByName('pid_trans').Value:= vIdtrans;
         qGetBill.Params.ParamByName('pshift').Value:= zqryDisplayshift.Value;
         qGetBill.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',zqryDisplaydt_kasir.AsDateTime);
         qGetBill.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',dt2);
         qGetBill.Open;

         if qGetBill.RecordCount>0 then begin
            qGetBill.First;
            while not qGetBill.Eof do begin
                zqryDetail.Append;
                zqryDetailno_nota.AsString:= qGetBillno_nota.AsString;
                zqryDetailcara_bayar.AsString:= qGetBillcara_bayar.AsString;
                zqryDetaildibayar.AsFloat:= qGetBilltotal.AsFloat;
                zqryDetaildt_nota.AsDateTime:= qGetBilldt_nota.AsDateTime;
                zqryDetailketerangan.AsString:= qGetBillnama_tamu.AsString;
                zqryDetailjns_pembayaran.AsString:= qGetBilldescription.AsString;
                zqryDetail.Post;
                qGetBill.Next;
            end;
         end else begin
            MessageDlg('ITEM TIDAK DITEMUKAN !',mtError, [mbOK], 0);
         end;
     except
        on E: Exception do begin
        MessageDlg('Error has been encountered !',mtError, [mbOK], 0);
        end;
     end;
     zqryDisplay.Edit;
end;

procedure TfrmLapKasir.btnNamaPetugasPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
  begin
   try
     LUser.Close;
     LUser.Open;
     if LookUser.Execute then begin
        zqryDisplay.Edit;
        zqryDisplayan.AsString:= LUserfull_name.AsString;
//        zqryDisplay.Post;
     end;
   except
      on E: Exception do begin
        MessageDlg('Error has been encountered !',mtError, [mbOK], 0);
      end;
   end;
end;

constructor TfrmLapKasir.Create(AOwner: TComponent; kdDept: TDept; aTag: Integer);
begin
  inherited Create(AOwner);
  vDept := kdDept;
  vTag := aTag;
end;

procedure TfrmLapKasir.InsertMemTable;
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
   MemInfousr_cetak.AsString:= 'test';
   MemInfotgl_cetak.AsString:= FormatDateTime('dd-mmm-yyyy hh:mm:ss',now);
   MemInfo.Post;
  except
    on E: Exception do begin
      MessageDlg(E.Message, mtError, [mbOK], 0);
    end
  end;

end;

procedure TfrmLapKasir.Cetak;
begin
  InsertMemTable;
  RepNota_A4.ShowReport;
end;

procedure TfrmLapKasir.AdvGlbtnPrintClick(Sender: TObject);
begin
  if cxPageCtrlGuestBill.ActivePageIndex=0 then
     cxPageCtrlGuestBill.ActivePageIndex:= 1;
     Cetak;
     Bayar;
     glbtnGo.Click;
end;

procedure TfrmLapKasir.Bayar;
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

procedure TfrmLapKasir.cxgrdbtblvwGuestDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if zqryDisplay.State= dsInsert then
     Exit;
  if cxPageCtrlGuestBill.ActivePageIndex=0 then
     cxPageCtrlGuestBill.ActivePageIndex:= 1;
     DBMode:= dmBrowse;
     UpdateCrudControls;
end;

procedure TfrmLapKasir.cxgrdbtblvwGuestDBTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
//  if (zqryDisplay.State <> dsBrowse) then
//    APrevFocusedItem.Focused := False;
end;

procedure TfrmLapKasir.cxgrdbtblvwGuestDBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
//  if (zqryDisplay.State <> dsBrowse) then
//    APrevFocusedRecord.Focused := False;
end;

procedure TfrmLapKasir.cxPageCtrlGuestBillChange(Sender: TObject);
begin
  if TcxPageControl(Sender).ActivePageIndex=1 then begin
     zqryDetail.Close;
     zqryDetail.Params.ParamByName('pkd_kasir').Value:= zqryDisplaykd_kasir.Value;
     zqryDetail.Open;
  end;
end;

procedure TfrmLapKasir.edtShiftPropertiesCloseUp(Sender: TObject);
begin
  if edtShift.Text= '' then begin
     btnGetRoomSvcData.Enabled:= False;
  end else begin
     btnGetRoomSvcData.Enabled:= True;
  end;
end;

procedure TfrmLapKasir.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmLapKasir.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  //CanClose:= (zqryDisplay.State=dsInactive) or (zqryDisplay.State=dsBrowse);
  CanClose:= (DBMode=dmNone) or (DBMode=dmBrowse);
  if not CanClose then
    MessageDlg('Please save data or cancel editing first!', mtError, [mbOK], 0);
end;

procedure TfrmLapKasir.FormShow(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\images\bg_main.JPG');
  case vDept of
    tdResto: begin
      C_vjns_transaksi := '109';
      vIdtrans := '103';
      Label2.Caption := 'LAPORAN KASIR RESTAURANT';
      Label1.Caption := 'Rekap Pendapatan Restaurant per Shift';
      tsBrowse.Caption := 'Browse Transaksi';
      tsDetail.Caption := 'Detail Transaksi';
    end;
    tdPool: begin
      C_vjns_transaksi := '110';
      vIdtrans := '201';
      Label2.Caption := 'LAPORAN KASIR KOLAM RENANG';
      Label1.Caption := 'Rekap Pendapatan Kolam Renang per Shift';
      tsBrowse.Caption := 'Browse Transaksi';
      tsDetail.Caption := 'Detail Transaksi';
    end;
  end;
  zqryDisplay.Active := True;
  UpdateCrudControls;
  cxPageCtrlGuestBill.ActivePageIndex:= 0;
  cxPageCtrlGuestBill.HideTabs:= True;
  UpdateAccessControls;
end;

procedure TfrmLapKasir.glbtnAddNewClick(Sender: TObject);
begin

  if zqryDisplay.State<>dsBrowse then
    Exit;

  if cxPageCtrlGuestBill.ActivePageIndex=0 then
     cxPageCtrlGuestBill.ActivePageIndex:= 1;

  try
    zqryDisplay.Append;
    zqryDetail.Close;
    zqryDetail.Params.ParamByName('pkd_kasir').Value:= -1;
    zqryDetail.Open;
    DBMode:= dmInsert;
  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;

  UpdateCrudControls;
  UpdateAccessControls;

end;

procedure TfrmLapKasir.glbtnCLoseClick(Sender: TObject);
begin
  if cxPageCtrlGuestBill.ActivePageIndex= 1 then
     cxPageCtrlGuestBill.ActivePageIndex:= 0
  else begin
     Close;
  end;

end;

procedure TfrmLapKasir.glbtnCrudCancelClick(Sender: TObject);
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

procedure TfrmLapKasir.glbtnCrudSaveClick(Sender: TObject);
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

  try
   Exec.Close;
   Exec.SQL.Clear;
   Exec.Params.Clear;
   s:= 'update transaksi.nota set isclosed='+QuotedStr('1');
   s:= s+', usr_upd='+QuotedStr('test_upd');
   s:= s+' where no_nota='+QuotedStr(zqryDetailno_nota.AsString);
   Exec.SQL.Add(s);
   Exec.ExecSQL;
  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;
  DBMode:= dmNone;
  cxPageCtrlGuestBill.ActivePageIndex:= 0;
  UpdateCrudControls;
  glbtnGo.Click;

  cxgrdGuest.Visible := True;
  //pnlFooter.Align := alBottom;

end;

procedure TfrmLapKasir.glbtnDelClick(Sender: TObject);
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

procedure TfrmLapKasir.glbtnEditClick(Sender: TObject);
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

procedure TfrmLapKasir.glbtnGoClick(Sender: TObject);
var s, dt0, dt1, dti, dtf : String;
begin

     dt0:= QuotedStr(FormatDateTime('dd/mm/yyyy',wwDbDtpFrom.Date));
     dt1:= QuotedStr(FormatDateTime('dd/mm/yyyy',wwDbDtpTo.Date));
     dtf:= QuotedStr('dd/mm/yyyy');

      s:= 'SELECT z.* FROM (';
      s:= s+' select a.kd_kasir, a.no_kasir, a.an, a.id_rek_gl, a.usr_ins, a.usr_upd, ';
      s:= s+' a.dt_ins, a.dt_upd, a.ispost, a.iscancel, a.isdelete, a.isclosed, a.id_trans, a.total, a.dt_kasir, a.keterangan, ';
      s:= s+' a.shift, a.dt_transaksi';
      s:= s+' FROM accfin.kasir a';
      s:= s+' WHERE a.isdelete='+QuotedStr('0')+' AND a.id_trans='+QuotedStr(C_vjns_transaksi);
      s:= s+' and a.dt_kasir between to_timestamp('+dt0+','+dtf+') and to_timestamp('+dt1+','+dtf+') +  interval '+QuotedStr('23 hours 59 min');
      s:= s+') AS z';
      s:= s+' WHERE 1=1 ';

      s:= s+' AND (z.no_kasir LIKE '+QuotedStr('%'+edtFilter.Text+'%');
      s:= s+' OR upper(z.an) LIKE '+QuotedStr('%'+UpperCase(edtFilter.Text)+'%');
      s:= s+') order by z.no_kasir';

      try
        DataModule1.PrepareQuery(zqryDisplay);
        DataModule1.OpenQuery(zqryDisplay,s);
      except
        on E: Exception do begin
          MessageDlg(E.Message, mtError, [mbOK], 0);
        end
      end;

end;

procedure TfrmLapKasir.glbtnRefreshClick(Sender: TObject);
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

procedure TfrmLapKasir.UpdateAccessControls;
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

procedure TfrmLapKasir.UpdateCrudControls;
begin

  case zqryDisplay.State of
    dsInactive, dsBrowse: begin
      pnlCrudAct.Visible := False;
      pnlCrudCtrl.Visible := True;
      pnlCrudCtrl.Left := 10;
      btnGetRoomSvcData.Enabled:= False;
      btnNamaPetugas.Enabled:= False;
      edtDateLap.Enabled:= False;
      edtShift.Enabled:= False;
      //cxGrid.Enabled := True;
      //pnlFooter.Visible := False;
    end;

    dsEdit, dsInsert: begin
      pnlCrudAct.Visible := True;
      pnlCrudAct.Left := 10;
      pnlCrudCtrl.Visible := False;
      btnGetRoomSvcData.Enabled:= False;
      btnNamaPetugas.Enabled:= True;
      edtDateLap.Enabled:= True;
      edtShift.Enabled:= True;
      //cxDBTreeListRoomData.Enabled := False;
      //pnlFooter.Visible := True;
    end;

  end;

end;

procedure TfrmLapKasir.wwDbDtpFromCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
    DecodeDate(wwDbDtpFrom.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    wwDbDtpTo.Date:=IncDay(IncMonth(dt, 1),-1);
end;

procedure TfrmLapKasir.zqryDetailAfterOpen(DataSet: TDataSet);
begin
  UpdateAccessControls;
end;

procedure TfrmLapKasir.zqryDetailAfterPost(DataSet: TDataSet);
begin
    zqryDisplay.Edit;
    qTotal.Close;
    qTotal.Params.ParamByName('pkd_kasir').Value:= zqryDisplaykd_kasir.Value;
    qTotal.Open;
    zqryDisplaytotal.AsFloat:= qTotaltotal_pendapatan.AsFloat;
end;

procedure TfrmLapKasir.zqryDetailBeforePost(DataSet: TDataSet);
begin
  if zqryDetail.State=dsInsert then
     zqryDetailusr_ins.AsString:= 'test';

end;

procedure TfrmLapKasir.zqryDetailNewRecord(DataSet: TDataSet);
begin
    zqryDetailkd_kasir.AsLargeInt:= zqryDisplaykd_kasir.AsLargeInt;
    if zqryDetail.RecNo=0 then
    zqryDetailurut.AsInteger:= 1
    else
    zqryDetailurut.AsInteger:= zqryDetail.RecNo;

end;

procedure TfrmLapKasir.zqryDisplayAfterOpen(DataSet: TDataSet);
begin
  UpdateAccessControls;
end;

procedure TfrmLapKasir.zqryDisplayBeforePost(DataSet: TDataSet);
begin
  DataModule1.vSysDate.Close;
  DataModule1.vSysDate.Open;

    if zqryDisplay.State=dsInsert then begin
        zqryDisplaykd_kasir.AsLargeInt:= sq_kasir.GetNextValue;
        zqryDisplayusr_ins.AsString:= 'test';
        zqryDisplayusr_upd.AsString:= 'test';
        Get_No_Trans.Close;
        Get_No_Trans.Open;
        zqryDisplayno_kasir.AsString:= Get_No_Transfn_gen_kasir_number.AsString;
    end else if zqryDisplay.State=dsEdit then
        zqryDisplayusr_upd.AsString:= 'test_upd';
    if  zqryDisplaykd_kasir.AsLargeInt= -1 then
        raise Exception.Create('Error Internal (id_nota tidak terisi). Semua input dibatalkan !');

end;

procedure TfrmLapKasir.zqryDisplayNewRecord(DataSet: TDataSet);
begin
  DataModule1.vSysDate.Close;
  DataModule1.vSysDate.Open;
    zqryDisplaykd_kasir.AsLargeInt:= -1;
    zqryDisplayno_kasir.AsString:= '';
    zqryDisplayan.AsString:= '';
    zqryDisplayispost.AsString:= '1';
    zqryDisplayiscancel.AsString:= '0';
    zqryDisplayisdelete.AsString:= '0';
    zqryDisplayisclosed.AsString:= '0';
    zqryDisplayid_trans.AsString:= C_vjns_transaksi;
    zqryDisplaytotal.AsFloat:= 0;
    zqryDisplaydt_kasir.AsDateTime:= DataModule1.vSysDatedt_server.AsDateTime;
    zqryDisplayketerangan.AsString:= '-';

end;

end.
