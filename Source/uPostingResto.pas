unit uPostingResto;

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
  frxClass, frxDBSet, Vcl.Menus, AdvMenus;

const
  C_vjns_transaksi = '103';

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);

  TfrmPostingResto = class(TForm)
    pnlHeader: TPanel;
    advpnlNav: TAdvPanel;
    glbtnCLose: TAdvGlassButton;
    pgLapResto: TcxPageControl;
    tsRekap: TcxTabSheet;
    grdRekap: TcxGrid;
    grddbtvRekap: TcxGridDBTableView;
    cxgrdbclmnGuestDBTableView1no_nota: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1dt_nota: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1no_register: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1nomor_id: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1nama_tamu: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1total: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1usr_upd: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1ispost: TcxGridDBColumn;
    cxgrdbclmnGuestDBTableView1iscancel: TcxGridDBColumn;
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
    qRekapid_nota: TLargeintField;
    qRekapno_nota: TStringField;
    qRekapdt_nota: TDateTimeField;
    qRekapispost: TStringField;
    qRekapiscancel: TStringField;
    qRekapusr_ins: TStringField;
    qRekapusr_upd: TStringField;
    qRekapketerangan: TStringField;
    qRekapid_trans: TStringField;
    qRekapdisc_psn: TFloatField;
    qRekapdisc_rp: TFloatField;
    qRekapcara_bayar: TStringField;
    qRekaptotal: TFloatField;
    qRekapppn_rp: TFloatField;
    qRekapket_disc: TStringField;
    qRekapisdelete: TStringField;
    qRekapno_register: TStringField;
    qRekapsubtotal: TFloatField;
    qRekapsts: TStringField;
    qRekapshift: TIntegerField;
    qRekapisclosed: TStringField;
    qRekapdt_ins: TDateTimeField;
    qRekapdt_upd: TDateTimeField;
    qRekapdibayar: TFloatField;
    qRekapisbilling: TStringField;
    qRekapno_kamar: TStringField;
    qRekapnama_tamu: TStringField;
    AdvGlBtnRefresh: TAdvGlassButton;
    AdvPopUp: TAdvPopupMenu;
    Batal1: TMenuItem;
    UnBatal1: TMenuItem;
    Exec: TZQuery;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure glbtnCLoseClick(Sender: TObject);
    procedure glbtnGoClick(Sender: TObject);
    procedure AdvGlBtnRefreshClick(Sender: TObject);
    procedure wwDbDtpFromCloseUp(Sender: TObject);
    procedure Batal1Click(Sender: TObject);
    procedure UnBatal1Click(Sender: TObject);

    constructor Create(AOwner: TComponent; aTag: Integer);

  private
    { Private declarations }

    vTag: Integer;
    procedure UpdateAccessControls;

    procedure OpenDataset(idx: integer);

  public
    { Public declarations }
  end;

var
  frmPostingResto: TfrmPostingResto;

implementation

uses
  uDM, cxGridExportLink, OleServer, ComObj, ExcelXP;

{$R *.dfm}

procedure TfrmPostingResto.AdvGlBtnRefreshClick(Sender: TObject);
begin
  OpenDataset(pgLapResto.ActivePageIndex);
end;

procedure TfrmPostingResto.Batal1Click(Sender: TObject);
var s: string;
begin
   try
       Exec.Close;
       Exec.SQL.Clear;
       Exec.Params.Clear;
       s:= 'update transaksi.nota_penjualan set iscancel='+QuotedStr('1');
       s:= s+', usr_upd='+QuotedStr('test_upd');
       s:= s+' where id_nota='+IntToStr(qRekapid_nota.AsLargeInt);
       qRekap.DisableControls;
       Exec.SQL.Add(s);
       Exec.ExecSQL;
   finally
      qRekap.Refresh;
      qRekap.EnableControls;
   end;
end;

constructor TfrmPostingResto.Create(AOwner: TComponent; aTag: Integer);
begin
  inherited Create(AOwner);
  vTag := aTag;
end;

procedure TfrmPostingResto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= caFree;
 frmPostingResto:=nil;
end;

procedure TfrmPostingResto.FormShow(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\images\bg_main.JPG');
  OpenDataset(0);
  pgLapResto.ActivePageIndex:= 0;
  UpdateAccessControls;
end;

procedure TfrmPostingResto.OpenDataset(idx:integer);
begin
  try
    case idx of
      0 : begin
          qRekap.Close;
          qRekap.Params.ParamByName('pid_trans').Value:= C_vjns_transaksi;
          qRekap.Params.ParamByName('ptgl0').Value:=FormatDateTime('dd/mm/yyyy',wwDbDtpFrom.Date);
          qRekap.Params.ParamByName('ptgl1').Value:=FormatDateTime('dd/mm/yyyy',wwDbDtpTo.Date);
          qRekap.Open;
      end;

    end;
  except
    on E: Exception do begin
      MessageDlg(E.Message, mtError, [mbOK], 0);
    end
  end;
end;

procedure TfrmPostingResto.UnBatal1Click(Sender: TObject);
var s: string;
begin
   try
       Exec.Close;
       Exec.SQL.Clear;
       Exec.Params.Clear;
       s:= 'update transaksi.nota_penjualan set iscancel='+QuotedStr('0');
       s:= s+', usr_upd='+QuotedStr('test_upd');
       s:= s+' where id_nota='+IntToStr(qRekapid_nota.AsLargeInt);
       qRekap.DisableControls;
       Exec.SQL.Add(s);
       Exec.ExecSQL;
   finally
      qRekap.Refresh;
      qRekap.EnableControls;
   end;
end;

procedure TfrmPostingResto.UpdateAccessControls;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin

    isEmpty := qRekap.RecordCount <= 0;

    DataModule1.GetAccessRights(vTag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    qRekap.Active := accbrowse;
    glbtnGo.Enabled := accbrowse;
//    if not accbrowse then begin
//      MessageDlg('Not Authorized!', mtError, [mbOK], 0);
//      Exit;
//    end;

end;

procedure TfrmPostingResto.wwDbDtpFromCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(wwDbDtpFrom.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  wwDbDtpTo.Date:=IncDay(IncMonth(dt, 1),-1);
end;

procedure TfrmPostingResto.glbtnCLoseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPostingResto.glbtnGoClick(Sender: TObject);
begin
  OpenDataset(pgLapResto.ActivePageIndex);
end;

end.
