unit uLapKamar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset, DateUtils,
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
  vcl.wwdbdatetimepicker, AdvGlowButton, AdvToolBar, kbmMemTable,
  FireDAC.Stan.Intf, FireDAC.Comp.BatchMove, FireDAC.Comp.BatchMove.DataSet,
  frxClass, frxDBSet, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);

  TfrmLapKamar = class(TForm)
    pnlHeader: TPanel;
    advpnlNav: TAdvPanel;
    glbtnCLose: TAdvGlassButton;
    pgLapResto: TcxPageControl;
    tsRekap: TcxTabSheet;
    grdRekap: TcxGrid;
    grddbtvRekap: TcxGridDBTableView;
    cxgrdbclmnGuestDBTableView1no_register: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1nomor_id: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1nama_tamu: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1total: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1usr_upd: TcxGridDBColumn;
    grdlvlRekap: TcxGridLevel;
    tsDetail: TcxTabSheet;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    pnlSearchPanel: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    wwDbDtpFrom: TwwDBDateTimePicker;
    wwDbDtpTo: TwwDBDateTimePicker;
    glbtnGo: TAdvGlassButton;
    qRekap: TZQuery;
    dsRekap: TDataSource;
    AdvGlBtnRefresh: TAdvGlassButton;
    grdDetail: TcxGrid;
    grddbtvDetail: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    grdlvlDetail: TcxGridLevel;
    qDetail: TZQuery;
    dsDetail: TDataSource;
    grddbtvDetailColumn2: TcxGridDBColumn;
    AdvGlbtnExport: TAdvGlassButton;
    AdvGlbtnPrint: TAdvGlassButton;
    MemInfoPerusahaan: TkbmMemTable;
    MemInfoPerusahaanlogo: TBlobField;
    MemInfoPerusahaannama_perusahaan: TStringField;
    MemInfoPerusahaanalamat_perusahaan: TStringField;
    MemInfoPerusahaantelp_perusahaan: TStringField;
    MemInfoPerusahaankota_perusahaan: TStringField;
    MemInfoPerusahaanperiode: TStringField;
    frxdbInfoPerusahaan: TfrxDBDataset;
    frxdbRekap: TfrxDBDataset;
    frxdbDetail: TfrxDBDataset;
    MemRekap: TkbmMemTable;
    MemDetail: TkbmMemTable;
    RepRekap: TfrxReport;
    RepDetail: TfrxReport;
    MemInfoPerusahaantgl_cetak: TStringField;
    MemInfoPerusahaanemail: TStringField;
    qRekapid_register: TLargeintField;
    qRekapid_register_detail: TLargeintField;
    qRekapno_kamar: TStringField;
    qRekapdt_masuk: TDateTimeField;
    qRekapdt_keluar: TDateTimeField;
    qRekapharga: TFloatField;
    qRekapismaster: TStringField;
    qRekapid_item: TStringField;
    qRekapqty: TFloatField;
    qRekapdiskripsi: TStringField;
    qRekapismoving: TStringField;
    qRekapno_register: TStringField;
    qRekapnama_tamu: TStringField;
    grddbtvRekapColumn1: TcxGridDBColumn;
    qRekapusr_upd: TStringField;
    grddbtvRekapColumn2: TcxGridDBColumn;
    qRekaptotal: TFloatField;
    qDetailid_extra_bed: TLargeintField;
    qDetailno_extra_bed: TStringField;
    qDetailno_register: TStringField;
    qDetailno_kamar: TStringField;
    qDetaildt_masuk: TDateTimeField;
    qDetaildt_keluar: TDateTimeField;
    qDetaildt_extra_bed: TDateTimeField;
    qDetailid_item: TStringField;
    qDetailid_trans: TStringField;
    qDetailqty: TFloatField;
    qDetailtarif: TFloatField;
    qDetailusr_ins: TStringField;
    qDetailusr_upd: TStringField;
    qDetaildt_ins: TDateTimeField;
    qDetaildt_upd: TDateTimeField;
    qDetailispost: TStringField;
    qDetailiscancel: TStringField;
    qDetailshift: TIntegerField;
    qDetailisdelete: TStringField;
    qDetailketerangan: TStringField;
    qDetailnama_tamu: TStringField;
    qDetailtotal: TFloatField;
    grddbtvDetailColumn1: TcxGridDBColumn;
    grddbtvDetailColumn3: TcxGridDBColumn;
    MemDetailid_extra_bed: TLargeintField;
    MemDetailno_extra_bed: TStringField;
    MemDetailno_register: TStringField;
    MemDetailno_kamar: TStringField;
    MemDetaildt_masuk: TDateTimeField;
    MemDetaildt_keluar: TDateTimeField;
    MemDetaildt_extra_bed: TDateTimeField;
    MemDetailid_item: TStringField;
    MemDetailid_trans: TStringField;
    MemDetailqty: TFloatField;
    MemDetailtarif: TFloatField;
    MemDetailusr_ins: TStringField;
    MemDetailusr_upd: TStringField;
    MemDetaildt_ins: TDateTimeField;
    MemDetaildt_upd: TDateTimeField;
    MemDetailispost: TStringField;
    MemDetailiscancel: TStringField;
    MemDetailshift: TIntegerField;
    MemDetailisdelete: TStringField;
    MemDetailketerangan: TStringField;
    MemDetailnama_tamu: TStringField;
    MemDetailtotal: TFloatField;
    grddbtvRekapColumn4: TcxGridDBColumn;
    grddbtvRekapColumn5: TcxGridDBColumn;
    qRekapcharge_psn: TFloatField;
    qRekapcharge_rp: TFloatField;
    qRekaptot_service: TFloatField;
    qRekaptot_tax: TFloatField;
    qRekaptot_base_tarif: TFloatField;
    MemRekapid_register: TLargeintField;
    MemRekapid_register_detail: TLargeintField;
    MemRekapno_kamar: TStringField;
    MemRekapdt_masuk: TDateTimeField;
    MemRekapdt_keluar: TDateTimeField;
    MemRekapharga: TFloatField;
    MemRekapismaster: TStringField;
    MemRekapid_item: TStringField;
    MemRekapqty: TFloatField;
    MemRekapdiskripsi: TStringField;
    MemRekapismoving: TStringField;
    MemRekapno_register: TStringField;
    MemRekapnama_tamu: TStringField;
    MemRekapusr_upd: TStringField;
    MemRekaptotal: TFloatField;
    MemRekapcharge_psn: TFloatField;
    MemRekapcharge_rp: TFloatField;
    MemRekaptot_service: TFloatField;
    MemRekaptot_tax: TFloatField;
    MemRekaptot_base_tarif: TFloatField;
    qRekapdt_nota: TDateTimeField;
    qRekapshift: TIntegerField;
    grddbtvRekapColumn6: TcxGridDBColumn;
    MemRekapdt_nota: TDateTimeField;
    MemRekapshift: TIntegerField;
    qDetaildt_nota: TDateTimeField;
    qDetailshift_nota: TIntegerField;
    MemDetaildt_nota: TDateTimeField;
    MemDetailshift_nota: TIntegerField;
    qRekapjns_reservasi: TStringField;
    MemRekapjns_reservasi: TStringField;
    grddbtvRekapColumn3: TcxGridDBColumn;
    grddbtvRekapColumn7: TcxGridDBColumn;
    cxTabSheet1: TcxTabSheet;
    qRoomCharge: TZQuery;
    dsRoomCharge: TDataSource;
    qRoomChargeno_kamar: TStringField;
    qRoomChargedt_masuk: TDateTimeField;
    qRoomChargedt_keluar: TDateTimeField;
    qRoomChargeharga: TFloatField;
    qRoomChargecharge_psn: TFloatField;
    qRoomChargedt_nota: TDateTimeField;
    qRoomChargeshift: TIntegerField;
    qRoomChargeno_register: TStringField;
    qRoomChargenama_tamu: TStringField;
    qRoomChargejns_reservasi: TStringField;
    qRoomChargeusr_upd: TStringField;
    qRoomChargetot_charge: TFloatField;
    grdCharge: TcxGrid;
    grdDBtvCharge: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    grdlvlCharge: TcxGridLevel;
    grdDBtvChargeColumn1: TcxGridDBColumn;
    grdDBtvChargeColumn2: TcxGridDBColumn;
    frxdbRoomCharge: TfrxDBDataset;
    memRoomCharge: TkbmMemTable;
    memRoomChargeno_kamar: TStringField;
    memRoomChargedt_masuk: TDateTimeField;
    memRoomChargedt_keluar: TDateTimeField;
    memRoomChargeharga: TFloatField;
    memRoomChargecharge_psn: TFloatField;
    memRoomChargedt_nota: TDateTimeField;
    memRoomChargeshift: TIntegerField;
    memRoomChargeno_register: TStringField;
    memRoomChargenama_tamu: TStringField;
    memRoomChargejns_reservasi: TStringField;
    memRoomChargeusr_upd: TStringField;
    memRoomChargetot_charge: TFloatField;
    RepRoomCharge: TfrxReport;
    MemInfoPerusahaanusr_cetak: TStringField;
    grddbtvRekapColumn8: TcxGridDBColumn;
    qRekapcara_bayar: TStringField;
    MemRekapcara_bayar: TStringField;
    grdDBtvChargeColumn3: TcxGridDBColumn;
    qRoomChargeci_charge_psn: TFloatField;
    memRoomChargeci_charge_psn: TFloatField;
    grddbtvRekapColumn9: TcxGridDBColumn;
    qRekapdiskon: TFloatField;
    MemRekapdiskon: TFloatField;
    Label3: TLabel;
    edtjnsReservasi: TcxComboBox;
    tsPajak: TcxTabSheet;
    grdPajak: TcxGrid;
    grdDbTvPajak: TcxGridDBTableView;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    grdlvlPajak: TcxGridLevel;
    qRepPajak: TZQuery;
    dsRepPajak: TDataSource;
    memRepPajak: TkbmMemTable;
    frxDBRepPajak: TfrxDBDataset;
    qRepPajakid_register: TLargeintField;
    qRepPajakid_register_detail: TLargeintField;
    qRepPajakno_kamar: TStringField;
    qRepPajakdt_masuk: TDateTimeField;
    qRepPajakdt_keluar: TDateTimeField;
    qRepPajakharga: TFloatField;
    qRepPajakqty: TFloatField;
    qRepPajakdiskripsi: TStringField;
    qRepPajaksub_total: TFloatField;
    qRepPajaknama_tamu: TStringField;
    qRepPajakno_register: TStringField;
    qRepPajaknama_tamu_1: TStringField;
    qRepPajakjns_reservasi: TStringField;
    qRepPajakcara_bayar: TStringField;
    qRepPajaktgl_bayar: TDateTimeField;
    qRepPajakusr_upd: TStringField;
    qRepPajakshift: TIntegerField;
    memRepPajakid_register: TLargeintField;
    memRepPajakid_register_detail: TLargeintField;
    memRepPajakno_kamar: TStringField;
    memRepPajakdt_masuk: TDateTimeField;
    memRepPajakdt_keluar: TDateTimeField;
    memRepPajakharga: TFloatField;
    memRepPajakqty: TFloatField;
    memRepPajakdiskripsi: TStringField;
    memRepPajaksub_total: TFloatField;
    memRepPajaknama_tamu: TStringField;
    memRepPajakno_register: TStringField;
    memRepPajaknama_tamu_1: TStringField;
    memRepPajakjns_reservasi: TStringField;
    memRepPajakcara_bayar: TStringField;
    memRepPajaktgl_bayar: TDateTimeField;
    memRepPajakusr_upd: TStringField;
    memRepPajakshift: TIntegerField;
    RepRekapPajak: TfrxReport;
    grdDbTvPajakColumn1: TcxGridDBColumn;
    qRepPajakdiskon: TFloatField;
    memRepPajakdiskon: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure glbtnCLoseClick(Sender: TObject);
    procedure glbtnGoClick(Sender: TObject);
    procedure AdvGlBtnRefreshClick(Sender: TObject);
    procedure tsDetailShow(Sender: TObject);
    procedure wwDbDtpFromCloseUp(Sender: TObject);
    procedure AdvGlbtnExportClick(Sender: TObject);
    procedure AdvGlbtnPrintClick(Sender: TObject);

    constructor Create(AOwner: TComponent; aTag: Integer);
    procedure cxTabSheet1Show(Sender: TObject);
    procedure tsRekapShow(Sender: TObject);
    procedure tsPajakShow(Sender: TObject);

  private
    { Private declarations }

    vTag: Integer;
    procedure UpdateAccessControls;

    procedure OpenDataset(idx: integer);
    procedure InsertMemTabel;
    procedure CetakRekap;
    procedure CetakDetail;
    procedure CetakRoomCharge;
    procedure CetakRekapPajak;

  public
    { Public declarations }
  end;

var
  frmLapKamar: TfrmLapKamar;

implementation

uses
  uDM, cxGridExportLink, OleServer, ComObj, ExcelXP;

{$R *.dfm}


procedure TfrmLapKamar.AdvGlbtnExportClick(Sender: TObject);
var excel : Variant;
    appPath, ttl :string;
begin
   appPath:= ExtractFilePath(Application.ExeName);
   // Rekap Pendapatan Kamar
   if pgLapResto.ActivePageIndex=0 then begin

     ttl:='Rekap_Pendapatan_Kamar_'+FormatDateTime('dd-mm-yyyy',wwDbDtpFrom.Date)+' _s_d_ '+FormatDateTime('dd-mm-yyyy',wwDbDtpTo.Date);

     if (qRekap.Active) and (qRekap.RecordCount>0) then
      begin
       ExportGridToExcel(appPath+ttl,grdRekap,true,true,true,'xls');
       try
        Excel:= CreateOleObject('Excel.Application');
        Excel.Visible:=True;
        Excel.Workbooks.Open(appPath+ttl);
       except
        ShowMessage('Tidak ada Aplikasi Excel !'+#13#10+
        'Instal Aplikasi Excel terlebih dulu');
       end;
      end;
   end
   else
   // Rekap Pendapatan Extra bed
   if pgLapResto.ActivePageIndex=1 then begin

     ttl:='Rekap_Pendapatan_ExtraBed_'+FormatDateTime('dd-mm-yyyy',wwDbDtpFrom.Date)+' _s_d_ '+FormatDateTime('dd-mm-yyyy',wwDbDtpTo.Date);

     if (qDetail.Active) and (qDetail.RecordCount>0) then
      begin
       ExportGridToExcel(appPath+ttl,grdDetail,true,true,true,'xls');
       try
        Excel:= CreateOleObject('Excel.Application');
        Excel.Visible:=True;
        Excel.Workbooks.Open(appPath+ttl);
       except
        ShowMessage('Tidak ada Aplikasi Excel !'+#13#10+
        'Instal Aplikasi Excel terlebih dulu');
       end;
      end;
   end
   else
   // Rekap Room Charge
   if pgLapResto.ActivePageIndex=2 then begin

     ttl:='Rekap_Room_Charge_'+FormatDateTime('dd-mm-yyyy',wwDbDtpFrom.Date)+' _s_d_ '+FormatDateTime('dd-mm-yyyy',wwDbDtpTo.Date);

     if (qRoomCharge.Active) and (qRoomCharge.RecordCount>0) then
      begin
       ExportGridToExcel(appPath+ttl,grdCharge,true,true,true,'xls');
       try
        Excel:= CreateOleObject('Excel.Application');
        Excel.Visible:=True;
        Excel.Workbooks.Open(appPath+ttl);
       except
        ShowMessage('Tidak ada Aplikasi Excel !'+#13#10+
        'Instal Aplikasi Excel terlebih dulu');
       end;
      end;
   end
   else
   // Rekap Lap Dispenda
   if pgLapResto.ActivePageIndex=3 then begin

     ttl:='Rekap_Pajak_Pendapatan_'+FormatDateTime('dd-mm-yyyy',wwDbDtpFrom.Date)+' _s_d_ '+FormatDateTime('dd-mm-yyyy',wwDbDtpTo.Date);

     if (qRepPajak.Active) and (qRepPajak.RecordCount>0) then
      begin
       ExportGridToExcel(appPath+ttl,grdPajak,true,true,true,'xls');
       try
        Excel:= CreateOleObject('Excel.Application');
        Excel.Visible:=True;
        Excel.Workbooks.Open(appPath+ttl);
       except
        ShowMessage('Tidak ada Aplikasi Excel !'+#13#10+
        'Instal Aplikasi Excel terlebih dulu');
       end;
      end;
   end;

end;

procedure TfrmLapKamar.InsertMemTabel;
begin
  try
   DataModule1.qPerusahaan.Close;
   DataModule1.qPerusahaan.Open;

   MemInfoPerusahaan.Close;
   MemInfoPerusahaan.Open;
   MemInfoPerusahaan.Append;
   MemInfoPerusahaannama_perusahaan.AsString:= DataModule1.strngfldPerusahaanperusahaan.AsString;
   MemInfoPerusahaanalamat_perusahaan.AsString:= DataModule1.strngfldPerusahaanalamat.AsString;
   MemInfoPerusahaantelp_perusahaan.AsString:= 'Telp. : '+DataModule1.strngfldPerusahaantelepon.AsString;
   MemInfoPerusahaanemail.AsString:= 'Email : '+DataModule1.strngfldPerusahaanemail.AsString;
   MemInfoPerusahaankota_perusahaan.AsString:= DataModule1.strngfldPerusahaankota.AsString;
   MemInfoPerusahaanlogo.LoadFromFile(ExtractFilePath(Application.ExeName)+'\images\logo.jpg');
   MemInfoPerusahaanperiode.AsString:= 'PERIODE : '+FormatDateTime('dd/mm/yyyy', wwDbDtpFrom.Date)+' S/D '+
                                 FormatDateTime('dd/mm/yyyy', wwDbDtpTo.Date);
   MemInfoPerusahaantgl_cetak.AsString:= FormatDateTime('dd/mm/yyyy',Now);
   MemInfoPerusahaanusr_cetak.AsString:= DataModule1.UserConnect;
   MemInfoPerusahaan.Post;

  except
    on E: Exception do begin
      MessageDlg(E.Message, mtError, [mbOK], 0);
    end
  end;
end;

procedure TfrmLapKamar.CetakRekap;
begin
  if qRekap.RecordCount= 0 then
  Exit;
  try
       InsertMemTabel;
       MemRekap.Close;
       MemRekap.Open;
       MemRekap.LoadFromDataSet(qRekap,[mtcpoAppend]);
       RepRekap.ShowReport;
  except
    on E: Exception do begin
      MessageDlg(E.Message, mtError, [mbOK], 0);
    end
  end;
end;

constructor TfrmLapKamar.Create(AOwner: TComponent; aTag: Integer);
begin
  inherited Create(AOwner);
  vTag := aTag;
end;

procedure TfrmLapKamar.cxTabSheet1Show(Sender: TObject);
begin
  OpenDataset(pgLapResto.ActivePageIndex);
  Label3.Visible:= False;
  edtjnsReservasi.Visible:= False;
end;

procedure TfrmLapKamar.CetakDetail;
begin
  if qDetail.RecordCount= 0 then
  Exit;
  try
       InsertMemTabel;
       MemDetail.Close;
       MemDetail.Open;
       MemDetail.LoadFromDataSet(qDetail,[mtcpoAppend]);
       RepDetail.ShowReport;
  except
    on E: Exception do begin
      MessageDlg(E.Message, mtError, [mbOK], 0);
    end
  end;

end;

procedure TfrmLapKamar.CetakRoomCharge;
begin
  if qRoomCharge.RecordCount= 0 then
  Exit;
  try
       InsertMemTabel;
       memRoomCharge.Close;
       memRoomCharge.Open;
       memRoomCharge.LoadFromDataSet(qRoomCharge,[mtcpoAppend]);
       RepRoomCharge.ShowReport;
  except
    on E: Exception do begin
      MessageDlg(E.Message, mtError, [mbOK], 0);
    end
  end;
end;

procedure TfrmLapKamar.CetakRekapPajak;
begin
  if qRepPajak.RecordCount= 0 then
  Exit;
  try
       InsertMemTabel;
       memRepPajak.Close;
       memRepPajak.Open;
       memRepPajak.LoadFromDataSet(qRepPajak,[mtcpoAppend]);
       RepRekapPajak.ShowReport;
  except
    on E: Exception do begin
      MessageDlg(E.Message, mtError, [mbOK], 0);
    end
  end;
end;

procedure TfrmLapKamar.AdvGlbtnPrintClick(Sender: TObject);
begin
  if pgLapResto.ActivePageIndex= 0 then
     CetakRekap
  else
  if pgLapResto.ActivePageIndex= 1 then
     CetakDetail
  else
  if pgLapResto.ActivePageIndex= 2 then
     CetakRoomCharge
  else
  if pgLapResto.ActivePageIndex = 3 then
     CetakRekapPajak;
end;

procedure TfrmLapKamar.AdvGlBtnRefreshClick(Sender: TObject);
begin
  OpenDataset(pgLapResto.ActivePageIndex);
end;

procedure TfrmLapKamar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= caFree;
 frmLapKamar:=nil;
end;

procedure TfrmLapKamar.FormShow(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\images\bg_main.JPG');
  edtjnsReservasi.Text:= 'SEMUA';

  OpenDataset(0);
  pgLapResto.ActivePageIndex:= 0;
  UpdateAccessControls;

end;

procedure TfrmLapKamar.OpenDataset(idx:integer);
var
ptgl0, ptgl1 : String;
begin
  try
    case idx of
      0 : begin
        if edtjnsReservasi.Text='SEMUA' then begin

          qRekap.Close;
          qRekap.SQL.Clear;
          qRekap.Params.Clear;
          qRekap.SQL.Add('select a.*, d.dt_nota, d.shift, b.no_register, b.nama_tamu, b.jenis as jns_reservasi, b.usr_upd, d.cara_bayar, '+
          '(a.qty*c.service) as tot_service, (a.qty*c.tax) as tot_tax, (a.qty*c.base_tarif) as tot_base_tarif, (a.qty*a.harga)-a.diskon as total '+
          'from transaksi.register_tamu_detail a '+
          'left join transaksi.register_tamu b on b.id_register=a.id_register '+
          'left join master.mkamar c on c.no_kamar=a.no_kamar '+
          'left join transaksi.nota d on d.no_register=b.no_register '+
          'where b.iscekout='+QuotedStr('1')+' and b.isclosed='+QuotedStr('1')+' and d.iscancel='+QuotedStr('0')+' and d.isdelete='+QuotedStr('0')+' and d.isclosed='+QuotedStr('1')+
          ' and d.dt_nota between to_timestamp (:ptgl0,'+QuotedStr('dd/mm/yyyy')+') and to_timestamp (:ptgl1,'+QuotedStr('dd/mm/yyyy')+') '+'+ '+'interval '+QuotedStr('23 hour 59 minutes')+
          ' order by b.jenis');
          qRekap.Params.ParseSQL(qRekap.SQL.Text, True);
          qRekap.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',wwDbDtpFrom.Date);
          qRekap.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',wwDbDtpTo.Date);
          qRekap.Open;

        end else begin
          qRekap.Close;
          qRekap.SQL.Clear;
          qRekap.Params.Clear;
          qRekap.SQL.Add('select a.*, d.dt_nota, d.shift, b.no_register, b.nama_tamu, b.jenis as jns_reservasi, b.usr_upd, d.cara_bayar, '+
          '(a.qty*c.service) as tot_service, (a.qty*c.tax) as tot_tax, (a.qty*c.base_tarif) as tot_base_tarif, (a.qty*a.harga)-a.diskon as total '+
          'from transaksi.register_tamu_detail a '+
          'left join transaksi.register_tamu b on b.id_register=a.id_register '+
          'left join master.mkamar c on c.no_kamar=a.no_kamar '+
          'left join transaksi.nota d on d.no_register=b.no_register '+
          'where b.iscekout='+QuotedStr('1')+' and b.isclosed='+QuotedStr('1')+' and d.iscancel='+QuotedStr('0')+' and d.isdelete='+QuotedStr('0')+' and d.isclosed='+QuotedStr('1')+
          ' and d.dt_nota between to_timestamp (:ptgl0,'+QuotedStr('dd/mm/yyyy')+') and to_timestamp (:ptgl1,'+QuotedStr('dd/mm/yyyy')+') '+'+ '+'interval '+QuotedStr('23 hour 59 minutes')+
          ' and b.jenis=:jns_reservasi'+
          ' order by b.jenis');
          qRekap.Params.ParseSQL(qRekap.SQL.Text, True);
          qRekap.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',wwDbDtpFrom.Date);
          qRekap.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',wwDbDtpTo.Date);
          qRekap.Params.ParamByName('jns_reservasi').Value:= edtjnsReservasi.Text;
          qRekap.Open;
        end;
      end;
      1 : begin
          qDetail.Close;
          qDetail.Params.ParamByName('ptgl0').Value:=FormatDateTime('dd/mm/yyyy',wwDbDtpFrom.Date);
          qDetail.Params.ParamByName('ptgl1').Value:=FormatDateTime('dd/mm/yyyy',wwDbDtpTo.Date);
          qDetail.Open;
      end;
      2 : begin
          qRoomCharge.Close;
          qRoomCharge.Params.ParamByName('ptgl0').Value:=FormatDateTime('dd/mm/yyyy',wwDbDtpFrom.Date);
          qRoomCharge.Params.ParamByName('ptgl1').Value:=FormatDateTime('dd/mm/yyyy',wwDbDtpTo.Date);
          qRoomCharge.Open;
      end;
      3 : begin
        if edtjnsReservasi.Text='SEMUA' then begin
          qRepPajak.Close;
          qRepPajak.SQL.Clear;
          qRepPajak.Params.Clear;
          qRepPajak.SQL.Add('select a.*, b.nama_tamu, b.no_register, b.nama_tamu, b.jenis as jns_reservasi, '+
          'c.cara_bayar, c.dt_nota as tgl_bayar, c.usr_upd, c.shift '+
          'from report.register_tamu_detail a '+
          'left join transaksi.register_tamu b on b.id_register=a.id_register '+
          'left join transaksi.nota c on c.no_register=b.no_register '+
          'where c.isclosed='+QuotedStr('1')+' and c.iscancel='+QuotedStr('0')+' and '+
          'c.dt_nota between to_timestamp (:ptgl0,'+QuotedStr('dd/mm/yyyy')+') and to_timestamp (:ptgl1,'+QuotedStr('dd/mm/yyyy')+') '+'+ '+'interval '+QuotedStr('23 hour 59 minutes')+
          ' order by b.jenis');
          qRepPajak.Params.ParseSQL(qRepPajak.SQL.Text, True);
          qRepPajak.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',wwDbDtpFrom.Date);
          qRepPajak.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',wwDbDtpTo.Date);
          qRepPajak.Open;
        end else begin
          qRepPajak.Close;
          qRepPajak.SQL.Clear;
          qRepPajak.Params.Clear;
          qRepPajak.SQL.Add('select a.*, b.nama_tamu, b.no_register, b.nama_tamu, b.jenis as jns_reservasi, '+
          'c.cara_bayar, c.dt_nota as tgl_bayar, c.usr_upd, c.shift '+
          'from report.register_tamu_detail a '+
          'left join transaksi.register_tamu b on b.id_register=a.id_register '+
          'left join transaksi.nota c on c.no_register=b.no_register '+
          'where c.isclosed='+QuotedStr('1')+' and c.iscancel='+QuotedStr('0')+' and '+
          'c.dt_nota between to_timestamp (:ptgl0,'+QuotedStr('dd/mm/yyyy')+') and to_timestamp (:ptgl1,'+QuotedStr('dd/mm/yyyy')+') '+'+ '+'interval '+QuotedStr('23 hour 59 minutes')+
          ' and b.jenis=:jns_reservasi'+
          ' order by b.jenis');
          qRepPajak.Params.ParseSQL(qRepPajak.SQL.Text, True);
          qRepPajak.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',wwDbDtpFrom.Date);
          qRepPajak.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',wwDbDtpTo.Date);
          qRepPajak.Params.ParamByName('jns_reservasi').Value:= edtjnsReservasi.Text;
          qRepPajak.Open;
        end;

      end;
    end;
  except
    on E: Exception do begin
      MessageDlg(E.Message, mtError, [mbOK], 0);
    end
  end;
end;

procedure TfrmLapKamar.tsDetailShow(Sender: TObject);
begin
  OpenDataset(pgLapResto.ActivePageIndex);
  Label3.Visible:= False;
  edtjnsReservasi.Visible:= False;
end;

procedure TfrmLapKamar.tsPajakShow(Sender: TObject);
begin
  Label3.Visible:= True;
  edtjnsReservasi.Visible:= True;
  OpenDataset(3);
end;

procedure TfrmLapKamar.tsRekapShow(Sender: TObject);
begin
  Label3.Visible:= True;
  edtjnsReservasi.Visible:= True;
end;

procedure TfrmLapKamar.UpdateAccessControls;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin

    isEmpty := qRekap.RecordCount <= 0;

    DataModule1.GetAccessRights(vTag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    qRekap.Active := accbrowse;
    glbtnGo.enabled := accbrowse;
    AdvGlbtnPrint.Enabled := accprint;
    AdvGlbtnExport.Enabled := accexport;
    AdvGlbtnPrint.Enabled := accprint;

//    if not accbrowse then begin
//      MessageDlg('Not Authorized!', mtError, [mbOK], 0);
//      Exit;
//    end;

end;

procedure TfrmLapKamar.wwDbDtpFromCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(wwDbDtpFrom.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  wwDbDtpTo.Date:=IncDay(IncMonth(dt, 1),-1);
end;

procedure TfrmLapKamar.glbtnCLoseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLapKamar.glbtnGoClick(Sender: TObject);
begin
  OpenDataset(pgLapResto.ActivePageIndex);
end;

end.
