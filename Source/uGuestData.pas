unit uGuestData;

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
  TfrmGuestData = class(TForm)
    dsGuest: TDataSource;
    zqryDisplay: TZQuery;
    pnlHeader: TPanel;
    pnlFooter: TPanel;
    cxlbl2: TcxLabel;
    cxlbl4: TcxLabel;
    shp1: TShape;
    cxlbl1: TcxLabel;
    shp2: TShape;
    shp4: TShape;
    shp5: TShape;
    cxlbl6: TcxLabel;
    shp6: TShape;
    dbedtbtnRoomNo: TcxDBButtonEdit;
    dbedtbtnBedCount: TcxDBButtonEdit;
    advpnlNav: TAdvPanel;
    dbedtbtnRoomType: TcxDBButtonEdit;
    pnlCrudCtrl: TPanel;
    glbtnAddNew: TAdvGlassButton;
    glbtnEdit: TAdvGlassButton;
    glbtnDel: TAdvGlassButton;
    pnlCrudAct: TPanel;
    glbtnCrudSave: TAdvGlassButton;
    glbtnCrudCancel: TAdvGlassButton;
    glbtnRefresh: TAdvGlassButton;
    glbtnCLose: TAdvGlassButton;
    strngfldDisplayid_tamu: TStringField;
    strngfldDisplaynama_tamu: TStringField;
    dtmfldDisplaytgl_lahir: TDateTimeField;
    strngfldDisplayjns_kel: TStringField;
    strngfldDisplayalamat: TStringField;
    strngfldDisplaykota: TStringField;
    strngfldDisplayagama: TStringField;
    strngfldDisplaytelepon: TStringField;
    strngfldDisplaysts_pasien: TStringField;
    dtmfldDisplaydt_ins: TDateTimeField;
    dtmfldDisplaydt_upd: TDateTimeField;
    strngfldDisplayusr_ins: TStringField;
    strngfldDisplayusr_upd: TStringField;
    strngfldDisplaypekerjaan: TStringField;
    strngfldDisplaygelar: TStringField;
    strngfldDisplaynomor_id: TStringField;
    strngfldDisplayjenis_id: TStringField;
    strngfldDisplaynegara: TStringField;
    strngfldDisplayemail: TStringField;
    cxlbl7: TcxLabel;
    dbedtbtnTelp: TcxDBButtonEdit;
    shp7: TShape;
    shp10: TShape;
    cxlbl8: TcxLabel;
    cxgrdGuestDBTableView1: TcxGridDBTableView;
    cxgrdlvlGuest: TcxGridLevel;
    cxgrdGuest: TcxGrid;
    cxgvcolID: TcxGridDBColumn;
    cxgrdbclmnName: TcxGridDBColumn;
    cxgrdbclmnGender: TcxGridDBColumn;
    cxgrdbclmnAddr: TcxGridDBColumn;
    cxgrdbclmnCountry: TcxGridDBColumn;
    cxgrdbclmnIdCardType: TcxGridDBColumn;
    cxgrdbclmnIdCardNo: TcxGridDBColumn;
    cxgrdbclmnPhone: TcxGridDBColumn;
    shp9: TShape;
    cxdbcbbID: TcxDBComboBox;
    cxdbcbbGender: TcxDBComboBox;
    Image1: TImage;
    Label2: TLabel;
    Label1: TLabel;
    Gen_id_tamu: TZReadOnlyQuery;
    Gen_id_tamufn_gen_id_tamu_baru: TMemoField;
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
    procedure UpdateCrudControls;
    procedure UpdateAccessControls;

  public
    { Public declarations }
  end;

var
  frmGuestData: TfrmGuestData;

implementation

uses
  uDM;

{$R *.dfm}

constructor TfrmGuestData.Create(AOwner: TComponent; aTag: Integer);
begin
  inherited Create(AOwner);
  vTag := aTag;
end;

procedure TfrmGuestData.cxgrdGuestDBTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  if (zqryDisplay.State <> dsBrowse) then
    APrevFocusedItem.Focused := False;
end;

procedure TfrmGuestData.cxgrdGuestDBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if (zqryDisplay.State <> dsBrowse) then
    APrevFocusedRecord.Focused := False;
end;

procedure TfrmGuestData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmGuestData.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= (zqryDisplay.State=dsInactive) or (zqryDisplay.State=dsBrowse);
  if not CanClose then
    MessageDlg('Please save data or cancel editing first!', mtError, [mbOK], 0);
end;

procedure TfrmGuestData.FormShow(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\IMAGES\bg_main.JPG');
  zqryDisplay.Active := True;
  UpdateCrudControls;
  UpdateAccessControls;
end;

procedure TfrmGuestData.glbtnAddNewClick(Sender: TObject);
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

procedure TfrmGuestData.glbtnCLoseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmGuestData.glbtnCrudCancelClick(Sender: TObject);
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

procedure TfrmGuestData.glbtnCrudSaveClick(Sender: TObject);
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

  cxgrdGuest.Visible := True;
  pnlFooter.Align := alBottom;

end;

procedure TfrmGuestData.glbtnDelClick(Sender: TObject);
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

procedure TfrmGuestData.glbtnEditClick(Sender: TObject);
begin

  if zqryDisplay.State<>dsBrowse then
    Exit;

  cxgrdGuest.Visible := False;
  pnlFooter.Align := alClient;

  try
    zqryDisplay.Edit;
  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;

  UpdateCrudControls;
  UpdateAccessControls;

end;

procedure TfrmGuestData.glbtnRefreshClick(Sender: TObject);
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

procedure TfrmGuestData.UpdateAccessControls;
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

procedure TfrmGuestData.UpdateCrudControls;
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


procedure TfrmGuestData.zqryDisplayBeforePost(DataSet: TDataSet);
var vIDTamu: string;
begin
  if strngfldDisplaynama_tamu.IsNull or (Trim(strngfldDisplaynama_tamu.AsString)='') then
    raise Exception.Create('NAMA TAMU HARUS DI ISI !')
    else
  if strngfldDisplaytelepon.IsNull or (Trim(strngfldDisplaytelepon.AsString)='') then
    raise Exception.Create('NOMOR TELEPON HARUS DI ISI !')
    else
  if strngfldDisplaynomor_id.IsNull or (Trim(strngfldDisplaynomor_id.AsString)='') then
    raise Exception.Create('NOMOR ID HARUS DI ISI !');

  Gen_id_tamu.Close;
  Gen_id_tamu.Open;
  vIDTamu:= Gen_id_tamufn_gen_id_tamu_baru.AsString;

  if zqryDisplay.State=dsInsert then begin
     strngfldDisplayusr_ins.AsString:= DataModule1.UserConnect;
     strngfldDisplayusr_upd.AsString:= DataModule1.UserConnect;
  end else if zqryDisplay.State=dsEdit then
     strngfldDisplayusr_upd.AsString:= DataModule1.UserConnect;

     strngfldDisplayid_tamu.AsString:= vIDTamu;

end;

procedure TfrmGuestData.zqryDisplayNewRecord(DataSet: TDataSet);
begin
  strngfldDisplaynama_tamu.AsString:= '';
  strngfldDisplayjns_kel.AsString:= '';
  strngfldDisplayalamat.AsString:= '';
  strngfldDisplaykota.AsString:= '';
  strngfldDisplayagama.AsString:= '';
  strngfldDisplaysts_pasien.AsString:= '0';

end;

end.

