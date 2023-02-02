unit uVerifikasi;

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
  ZSequence, vcl.wwdialog, vcl.wwidlg, frxClass, kbmMemTable, frxDBSet,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid;

type
  TfrmVerifikasi = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    btnClose: TAdvGlassButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    dbLabelNamaTamu: TcxDBLabel;
    dbLabelNoKamar: TcxDBLabel;
    Label1: TLabel;
    Label2: TLabel;
    qGetBill: TZReadOnlyQuery;
    dsGetBill: TDataSource;
    qGetBilldiskripsi: TMemoField;
    qGetBillqty: TFloatField;
    qGetBillharga: TFloatField;
    qGetBillcharge_rp: TFloatField;
    qGetBillsub_total: TFloatField;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    qGetBilldiskon: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
  frmDash: TForm;
  vNoKamar, vNoReg, vNamaTamu : string;

  end;

var
  frmVerifikasi: TfrmVerifikasi;

implementation

{$R *.dfm}

uses uDM, uDash;

procedure TfrmVerifikasi.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmVerifikasi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= caFree;
 frmVerifikasi:=nil;
end;

procedure TfrmVerifikasi.FormShow(Sender: TObject);
begin

  dbLabelNamaTamu.Caption:= vNamaTamu;
  dbLabelNoKamar.Caption:= vNoKamar;

  try
    qGetBill.Close;
    qGetBill.Params.ParamByName('no_reg').Value:= vNoReg;
    qGetBill.Open;
  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;

end;

end.

