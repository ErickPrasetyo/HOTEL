unit uLapBatalRegistrasi;

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
  frxClass, frxDBSet;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);

  TfrmLapBatalRegistrasi = class(TForm)
    pnlHeader: TPanel;
    advpnlNav: TAdvPanel;
    glbtnCLose: TAdvGlassButton;
    pgLapResto: TcxPageControl;
    tsRekap: TcxTabSheet;
    grdRekap: TcxGrid;
    grddbtvRekap: TcxGridDBTableView;
    cxgrdbclmnGuestDBTableView1dt_nota: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1no_register: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1nomor_id: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1nama_tamu: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1usr_upd: TcxGridDBColumn;
    grdlvlRekap: TcxGridLevel;
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
    MemRekap: TkbmMemTable;
    RepRekap: TfrxReport;
    MemInfoPerusahaantgl_cetak: TStringField;
    MemInfoPerusahaanemail: TStringField;
    grddbtvRekapColumn1: TcxGridDBColumn;
    grddbtvRekapColumn3: TcxGridDBColumn;
    grddbtvRekapColumn4: TcxGridDBColumn;
    qRekapno_register: TStringField;
    qRekapdt_register: TDateTimeField;
    qRekapnama_tamu: TStringField;
    qRekapispost: TStringField;
    qRekapiscancel: TStringField;
    qRekapusr_upd: TStringField;
    qRekapdt_cancel: TDateTimeField;
    qRekapshift: TIntegerField;
    qRekapjenis: TStringField;
    qRekapno_nota: TStringField;
    qRekapdt_keluar: TDateTimeField;
    MemRekapno_register: TStringField;
    MemRekapdt_register: TDateTimeField;
    MemRekapnama_tamu: TStringField;
    MemRekapispost: TStringField;
    MemRekapiscancel: TStringField;
    MemRekapusr_upd: TStringField;
    MemRekapdt_cancel: TDateTimeField;
    MemRekapshift: TIntegerField;
    MemRekapjenis: TStringField;
    MemRekapno_nota: TStringField;
    MemRekapdt_keluar: TDateTimeField;
    qRekapno_kamar: TStringField;
    qRekapalasan_batal: TStringField;
    MemRekapno_kamar: TStringField;
    MemRekapalasan_batal: TStringField;
    grddbtvRekapColumn2: TcxGridDBColumn;
    grddbtvRekapColumn5: TcxGridDBColumn;
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

  private
    { Private declarations }
    vTag: Integer;
    procedure UpdateAccessControls;

    procedure OpenDataset(idx: integer);
    procedure InsertMemTabel;
    procedure CetakRekap;
    procedure CetakDetail;

  public
    { Public declarations }
  end;

var
  frmLapBatalRegistrasi: TfrmLapBatalRegistrasi;

implementation

uses
  uDM, cxGridExportLink, OleServer, ComObj, ExcelXP;

{$R *.dfm}


procedure TfrmLapBatalRegistrasi.AdvGlbtnExportClick(Sender: TObject);
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
   end;
//   else
//   // Rekap Pendapatan Extra bed
//   if pgLapResto.ActivePageIndex=1 then begin
//
//     ttl:='Rekap_Pendapatan_ExtraBed_'+FormatDateTime('dd-mm-yyyy',wwDbDtpFrom.Date)+' _s_d_ '+FormatDateTime('dd-mm-yyyy',wwDbDtpTo.Date);
//
//     if (qDetail.Active) and (qDetail.RecordCount>0) then
//      begin
//       ExportGridToExcel(appPath+ttl,grdDetail,true,true,true,'xls');
//       try
//        Excel:= CreateOleObject('Excel.Application');
//        Excel.Visible:=True;
//        Excel.Workbooks.Open(appPath+ttl);
//       except
//        ShowMessage('Tidak ada Aplikasi Excel !'+#13#10+
//        'Instal Aplikasi Excel terlebih dulu');
//       end;
//      end;
//   end;

end;

procedure TfrmLapBatalRegistrasi.InsertMemTabel;
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
   MemInfoPerusahaan.Post;

  except
    on E: Exception do begin
      MessageDlg(E.Message, mtError, [mbOK], 0);
    end
  end;
end;

procedure TfrmLapBatalRegistrasi.CetakRekap;
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

constructor TfrmLapBatalRegistrasi.Create(AOwner: TComponent; aTag: Integer);
begin
  inherited Create(AOwner);
  vTag := aTag;
end;

procedure TfrmLapBatalRegistrasi.CetakDetail;
begin
//  if qDetail.RecordCount= 0 then
//  Exit;
//  try
//       InsertMemTabel;
//       MemDetail.Close;
//       MemDetail.Open;
//       MemDetail.LoadFromDataSet(qDetail,[mtcpoAppend]);
//       RepDetail.ShowReport;
//  except
//    on E: Exception do begin
//      MessageDlg(E.Message, mtError, [mbOK], 0);
//    end
//  end;

end;

procedure TfrmLapBatalRegistrasi.AdvGlbtnPrintClick(Sender: TObject);
begin
  if pgLapResto.ActivePageIndex= 0 then
     CetakRekap
  else
  if pgLapResto.ActivePageIndex= 1 then
     CetakDetail;
end;

procedure TfrmLapBatalRegistrasi.AdvGlBtnRefreshClick(Sender: TObject);
begin
  OpenDataset(pgLapResto.ActivePageIndex);
end;

procedure TfrmLapBatalRegistrasi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= caFree;
 frmLapBatalRegistrasi:=nil;
end;

procedure TfrmLapBatalRegistrasi.FormShow(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\images\bg_main.JPG');

  OpenDataset(0);
  pgLapResto.ActivePageIndex:= 0;

  UpdateAccessControls;

end;

procedure TfrmLapBatalRegistrasi.OpenDataset(idx:integer);
begin
  try
    case idx of
      0 : begin
          qRekap.Close;
          qRekap.Params.ParamByName('ptgl0').Value:=FormatDateTime('dd/mm/yyyy',wwDbDtpFrom.Date);
          qRekap.Params.ParamByName('ptgl1').Value:=FormatDateTime('dd/mm/yyyy',wwDbDtpTo.Date);
          qRekap.Open;
      end;
//      1 : begin
//          qDetail.Close;
//          qDetail.Params.ParamByName('ptgl0').Value:=FormatDateTime('dd/mm/yyyy',wwDbDtpFrom.Date);
//          qDetail.Params.ParamByName('ptgl1').Value:=FormatDateTime('dd/mm/yyyy',wwDbDtpTo.Date);
//          qDetail.Open;
//      end;
    end;
  except
    on E: Exception do begin
      MessageDlg(E.Message, mtError, [mbOK], 0);
    end
  end;
end;

procedure TfrmLapBatalRegistrasi.tsDetailShow(Sender: TObject);
begin
  OpenDataset(pgLapResto.ActivePageIndex);
end;

procedure TfrmLapBatalRegistrasi.UpdateAccessControls;
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

procedure TfrmLapBatalRegistrasi.wwDbDtpFromCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(wwDbDtpFrom.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  wwDbDtpTo.Date:=IncDay(IncMonth(dt, 1),-1);
end;

procedure TfrmLapBatalRegistrasi.glbtnCLoseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLapBatalRegistrasi.glbtnGoClick(Sender: TObject);
begin
  OpenDataset(pgLapResto.ActivePageIndex);
end;

end.
