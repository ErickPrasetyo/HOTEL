unit uReservasiData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
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
  cxDBEdit, AdvPanel, cxCalendar;

type
  TfrmReservasiData = class(TForm)
    DataSource1: TDataSource;
    cxDBTreeListRoomData: TcxDBTreeList;
    zqryDisplay: TZQuery;
    pnlHeader: TPanel;
    pnlFooter: TPanel;
    shp5: TShape;
    cxlbl6: TcxLabel;
    shp6: TShape;
    dbedtbtnRoomFloor: TcxDBButtonEdit;
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
    cxdbtreeColumnDBTreeListRoomDatadiskripsi: TcxDBTreeListColumn;
    cxdbtreeColumnDBTreeListRoomDatausr_ins: TcxDBTreeListColumn;
    cxdbtreeColumnDBTreeListRoomDatausr_upd: TcxDBTreeListColumn;
    cxdbtreeColumnDBTreeListRoomDatadt_upd: TcxDBTreeListColumn;
    Image1: TImage;
    Label2: TLabel;
    Label1: TLabel;
    zqryDisplayid_reservasi: TLargeintField;
    zqryDisplaydiskripsi: TStringField;
    zqryDisplayusr_ins: TStringField;
    zqryDisplayusr_upd: TStringField;
    zqryDisplaydt_ins: TDateTimeField;
    zqryDisplaydt_upd: TDateTimeField;
    cxDBTreeListRoomDatacxDBTreeListColumn5: TcxDBTreeListColumn;
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

    constructor Create(AOwner: TComponent; aTag: Integer);

  private
    { Private declarations }
    vTag: Integer;
    procedure UpdateAccessControls;
    procedure UpdateCrudControls;

  public
    { Public declarations }
  end;

var
  frmReservasiData: TfrmReservasiData;

implementation

uses
  uDM;

{$R *.dfm}

constructor TfrmReservasiData.Create(AOwner: TComponent; aTag: Integer);
begin
  inherited Create(AOwner);
  vTag := aTag;
end;

procedure TfrmReservasiData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmReservasiData.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= (zqryDisplay.State=dsInactive) or (zqryDisplay.State=dsBrowse);
  if not CanClose then
    MessageDlg('Please save data or cancel editing first!', mtError, [mbOK], 0);
end;

procedure TfrmReservasiData.FormShow(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\images\bg_main.JPG');

  zqryDisplay.Active := True;
  UpdateCrudControls;
  UpdateAccessControls;
end;

procedure TfrmReservasiData.glbtnAddNewClick(Sender: TObject);
begin

  if zqryDisplay.State<>dsBrowse then
    Exit;

  try
    zqryDisplay.Append;
  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;

  UpdateCrudControls;
  UpdateAccessControls;

end;

procedure TfrmReservasiData.glbtnCLoseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmReservasiData.glbtnCrudCancelClick(Sender: TObject);
begin

  if (zqryDisplay.State<>dsEdit) and (zqryDisplay.State<>dsInsert) then
    Exit;

  try
    zqryDisplay.Cancel;
  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;

  UpdateCrudControls;

end;

procedure TfrmReservasiData.glbtnCrudSaveClick(Sender: TObject);
begin

  if (zqryDisplay.State<>dsEdit) and (zqryDisplay.State<>dsInsert) then
    Exit;

  try
    zqryDisplay.CheckBrowseMode;
  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;
  UpdateCrudControls;
  zqryDisplay.Refresh;


end;

procedure TfrmReservasiData.glbtnDelClick(Sender: TObject);
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

procedure TfrmReservasiData.glbtnEditClick(Sender: TObject);
begin

  if zqryDisplay.State<>dsBrowse then
    Exit;

  try
    zqryDisplay.Edit;
  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;

  UpdateCrudControls;
  UpdateAccessControls;

end;

procedure TfrmReservasiData.glbtnRefreshClick(Sender: TObject);
begin

  if zqryDisplay.State<>dsBrowse then
    Exit;

  try
    zqryDisplay.Close;
    zqryDisplay.Open
  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;

  UpdateCrudControls;
  UpdateAccessControls;

end;

procedure TfrmReservasiData.UpdateAccessControls;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if zqryDisplay.State<>dsInactive then begin

    isEmpty := zqryDisplay.RecordCount <= 0;

    DataModule1.GetAccessRights(vTag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

//    glbtnAddNew.Visible:= isBrowse;
    glbtnAddNew.Enabled:= accinsert;
//    glbtnEdit.Visible:= isBrowse;
    glbtnEdit.Enabled:= not isEmpty and accedit;
//    glbtnDel.Visible:= isBrowse;
    glbtnDel.Enabled:= not isEmpty and accdelete;

  end;
end;

procedure TfrmReservasiData.UpdateCrudControls;
begin

  case zqryDisplay.State of
    dsInactive, dsBrowse: begin
      pnlCrudAct.Visible := False;
      pnlCrudCtrl.Visible := True;
      pnlCrudCtrl.Left := 10;
      cxDBTreeListRoomData.Enabled := True;
      pnlFooter.Visible := False;
    end;

    dsEdit, dsInsert: begin
      pnlCrudAct.Visible := True;
      pnlCrudAct.Left := 10;
      pnlCrudCtrl.Visible := False;
      cxDBTreeListRoomData.Enabled := False;
      pnlFooter.Visible := True;
    end;

  end;

end;


procedure TfrmReservasiData.zqryDisplayBeforePost(DataSet: TDataSet);
begin

  if zqryDisplaydiskripsi.IsNull or (Trim(zqryDisplaydiskripsi.AsString)='') then
    raise Exception.Create('Nama Jenis Reservasi Harus di isi !');

  if zqryDisplay.State=dsInsert then begin
    zqryDisplayusr_ins.AsString:= DataModule1.UserConnect;
    zqryDisplayusr_upd.AsString:= DataModule1.UserConnect;
  end else if zqryDisplay.State=dsEdit then
    zqryDisplayusr_upd.AsString:= DataModule1.UserConnect;

end;

procedure TfrmReservasiData.zqryDisplayNewRecord(DataSet: TDataSet);
begin

  zqryDisplayusr_ins.AsString:= DataModule1.UserConnect;
  zqryDisplayusr_upd.AsString:= DataModule1.UserConnect;
  zqryDisplaydiskripsi.AsString:= '-';

end;

end.

