unit uRoomType;

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
  cxDBEdit, AdvPanel, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxDropDownEdit;

type
  TfrmRoomType = class(TForm)
    dsGuest: TDataSource;
    zqryDisplay: TZQuery;
    pnlHeader: TPanel;
    pnlFooter: TPanel;
    shp3: TShape;
    shp4: TShape;
    shp5: TShape;
    advpnlNav: TAdvPanel;
    shp8: TShape;
    pnlCrudCtrl: TPanel;
    glbtnAddNew: TAdvGlassButton;
    glbtnEdit: TAdvGlassButton;
    glbtnDel: TAdvGlassButton;
    pnlCrudAct: TPanel;
    glbtnCrudSave: TAdvGlassButton;
    glbtnCrudCancel: TAdvGlassButton;
    glbtnRefresh: TAdvGlassButton;
    glbtnCLose: TAdvGlassButton;
    cxgrdGuestDBTableView1: TcxGridDBTableView;
    cxgrdlvlGuest: TcxGridLevel;
    cxgrdGuest: TcxGrid;
    shp9: TShape;
    lrgntfldDisplayid_tp_kamar: TLargeintField;
    strngfldDisplaytp_kamar: TStringField;
    strngfldDisplaydiskripsi: TStringField;
    intgrfldDisplayjml_dewasa: TIntegerField;
    intgrfldDisplayjml_anak: TIntegerField;
    intgrfldDisplayjml_bayi: TIntegerField;
    dtmfldDisplaydt_ins: TDateTimeField;
    dtmfldDisplaydt_upd: TDateTimeField;
    strngfldDisplayusr_ins: TStringField;
    strngfldDisplayusr_upd: TStringField;
    intgrfldDisplayjml_bed: TIntegerField;
    strngfldDisplaycan_smoke: TStringField;
    strngfldDisplaytipe_bed: TStringField;
    fltfldDisplaytarif: TFloatField;
    cxgrdbclmnName: TcxGridDBColumn;
    cxgrdbclmnBedType: TcxGridDBColumn;
    shp7: TShape;
    cxlbl5: TcxLabel;
    cxlbl7: TcxLabel;
    cxlbl8: TcxLabel;
    Image1: TImage;
    Label2: TLabel;
    Label1: TLabel;
    cxgrdbclmndt_upd: TcxGridDBColumn;
    cxgrdbclmnUsr_ins: TcxGridDBColumn;
    edtTypeKamar: TcxDBButtonEdit;
    edtJumlahBed: TcxDBButtonEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    edtTipeBed: TcxDBComboBox;
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
    procedure cxgrdGuestDBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxgrdGuestDBTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);

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
  frmRoomType: TfrmRoomType;

implementation

uses
  uDM;

{$R *.dfm}

constructor TfrmRoomType.Create(AOwner: TComponent; aTag: Integer);
begin
  inherited Create(AOwner);
  vTag := aTag;
end;

procedure TfrmRoomType.cxgrdGuestDBTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  if (zqryDisplay.State <> dsBrowse) then
    APrevFocusedItem.Focused := False;
end;

procedure TfrmRoomType.cxgrdGuestDBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if (zqryDisplay.State <> dsBrowse) then
    APrevFocusedRecord.Focused := False;
end;

procedure TfrmRoomType.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmRoomType.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= (zqryDisplay.State=dsInactive) or (zqryDisplay.State=dsBrowse);
  if not CanClose then
    MessageDlg('Please save data or cancel editing first!', mtError, [mbOK], 0);
end;

procedure TfrmRoomType.FormShow(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\IMAGES\bg_main.JPG');
  zqryDisplay.Active := True;
  UpdateCrudControls;

  UpdateAccessControls;
end;

procedure TfrmRoomType.glbtnAddNewClick(Sender: TObject);
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

end;

procedure TfrmRoomType.glbtnCLoseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRoomType.glbtnCrudCancelClick(Sender: TObject);
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

  cxgrdGuest.Visible := True;
  pnlFooter.Align := alBottom;

end;

procedure TfrmRoomType.glbtnCrudSaveClick(Sender: TObject);
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

  cxgrdGuest.Visible := True;
  pnlFooter.Align := alBottom;

end;

procedure TfrmRoomType.glbtnDelClick(Sender: TObject);
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

end;

procedure TfrmRoomType.glbtnEditClick(Sender: TObject);
begin

  if zqryDisplay.State<>dsBrowse then
    Exit;

//  cxgrdGuest.Visible := False;
//  pnlFooter.Align := alClient;

  try
    zqryDisplay.Edit;
  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;

  UpdateCrudControls;

end;

procedure TfrmRoomType.glbtnRefreshClick(Sender: TObject);
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

end;

procedure TfrmRoomType.UpdateAccessControls;
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

procedure TfrmRoomType.UpdateCrudControls;
begin

  case zqryDisplay.State of
    dsInactive, dsBrowse: begin
      pnlCrudAct.Visible := False;
      pnlCrudCtrl.Visible := True;
      pnlCrudCtrl.Left := 10;
      //cxGrid.Enabled := True;
      pnlFooter.Visible := False;
    end;

    dsEdit, dsInsert: begin
      pnlCrudAct.Visible := True;
      pnlCrudAct.Left := 10;
      pnlCrudCtrl.Visible := False;
      //cxDBTreeListRoomData.Enabled := False;
      pnlFooter.Visible := True;
    end;

  end;

end;


procedure TfrmRoomType.zqryDisplayBeforePost(DataSet: TDataSet);
begin

  if strngfldDisplaytp_kamar.IsNull or (Trim(strngfldDisplaytp_kamar.AsString)='') then
    raise Exception.Create('Tipe Kamar Harus Di Isi !')
  else
  if strngfldDisplaytipe_bed.IsNull or (Trim(strngfldDisplaytipe_bed.AsString)='') then
    raise Exception.Create('ROOM TYPE Must Have Value !');

  if zqryDisplay.State=dsInsert then begin
    strngfldDisplayusr_ins.AsString:= DataModule1.UserConnect;
    strngfldDisplayusr_upd.AsString:= DataModule1.UserConnect;
  end else if zqryDisplay.State=dsEdit then
    strngfldDisplayusr_upd.AsString:= DataModule1.UserConnect;

end;

procedure TfrmRoomType.zqryDisplayNewRecord(DataSet: TDataSet);
begin

  strngfldDisplaytp_kamar.AsString:= '';
  fltfldDisplaytarif.AsFloat:= 0;
  strngfldDisplaycan_smoke.AsString:= '0';
  strngfldDisplaytipe_bed.AsString:= '';

end;

end.

