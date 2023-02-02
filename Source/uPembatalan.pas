unit uPembatalan;

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
  TfrmPembatalan = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    btnClose: TAdvGlassButton;
    dbLabelNamaTamu: TcxDBLabel;
    dbLabelNoKamar: TcxDBLabel;
    Label1: TLabel;
    Label2: TLabel;
    AdvGlassButton1: TAdvGlassButton;
    MemAlasanBatal: TcxMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
  frmDash: TForm;
  vNoKamar, vNoReg, vNamaTamu : string;

  end;

var
  frmPembatalan: TfrmPembatalan;

implementation

{$R *.dfm}

uses uDM, uDash;

procedure TfrmPembatalan.AdvGlassButton1Click(Sender: TObject);
begin
  ModalResult:= mrOk;
end;

procedure TfrmPembatalan.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPembatalan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= caFree;
 frmPembatalan:=nil;
end;

procedure TfrmPembatalan.FormShow(Sender: TObject);
begin

  dbLabelNamaTamu.Caption:= vNamaTamu;
  dbLabelNoKamar.Caption:= vNoKamar;

end;

end.

