unit uItemResto;

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
  cxDBEdit, AdvPanel,
  uDM, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmItemResto = class(TForm)
    DataSource1: TDataSource;
    cxDBTreeListRoomData: TcxDBTreeList;
    zqryDisplay: TZQuery;
    zroqryRoomType: TZReadOnlyQuery;
    wwlookupDlgRoomType: TwwLookupDialog;
    pnlHeader: TPanel;
    pnlFooter: TPanel;
    cxlbl2: TcxLabel;
    cxlbl4: TcxLabel;
    shp1: TShape;
    cxlbl1: TcxLabel;
    shp3: TShape;
    shp4: TShape;
    shp5: TShape;
    shp6: TShape;
    dbedtbtnRoomNo: TcxDBButtonEdit;
    dbedtbtnRoomRate: TcxDBButtonEdit;
    advpnlNav: TAdvPanel;
    cxlbl5: TcxLabel;
    dbedtbtnRoomType: TcxDBButtonEdit;
    shp8: TShape;
    pnlCrudCtrl: TPanel;
    glbtnAddNew: TAdvGlassButton;
    glbtnEdit: TAdvGlassButton;
    glbtnDel: TAdvGlassButton;
    pnlCrudAct: TPanel;
    glbtnCrudSave: TAdvGlassButton;
    glbtnCrudCancel: TAdvGlassButton;
    glbtnRefresh: TAdvGlassButton;
    txdbcbRoomDetail: TcxDBCheckBox;
    glbtnCLose: TAdvGlassButton;
    Image1: TImage;
    lblFormName: TLabel;
    lblFormDesc: TLabel;
    strngfldDisplayid_item: TStringField;
    strngfldDisplaysatuan: TStringField;
    strngfldDisplayid_parent: TStringField;
    strngfldDisplayitem_name: TStringField;
    strngfldDisplayid_cat_item: TStringField;
    strngfldDisplayisdetail: TStringField;
    strngfldDisplayisinventory: TStringField;
    fltfldDisplaystok_awal: TFloatField;
    fltfldDisplaymin_stock: TFloatField;
    fltfldDisplayhrg_beli: TFloatField;
    strngfldDisplayusr_ins: TStringField;
    strngfldDisplayusr_upd: TStringField;
    dtmfldDisplaydt_ins: TDateTimeField;
    dtmfldDisplaydt_upd: TDateTimeField;
    fltfldDisplayhrg_jual: TFloatField;
    intgrfldDisplaylvl: TIntegerField;
    strngfldDisplaybarcode: TStringField;
    fltfldDisplayhpp: TFloatField;
    strngfldDisplayid_rek_gl_1: TStringField;
    strngfldDisplayid_rek_gl_2: TStringField;
    strngfldDisplayisactive: TStringField;
    cxdbtreeColumnDBTreeListRoomDataid_item: TcxDBTreeListColumn;
    cxdbtreeColumnDBTreeListRoomDatasatuan: TcxDBTreeListColumn;
    cxdbtreeColumnDBTreeListRoomDataitem_name: TcxDBTreeListColumn;
    cxdbtreeColumnDBTreeListRoomDatahrg_jual: TcxDBTreeListColumn;
    cxdbtreeColumnDBTreeListRoomDataisactive: TcxDBTreeListColumn;
    txdbcbActive: TcxDBCheckBox;
    edtSatuan: TcxDBLookupComboBox;
    qSatuan: TZReadOnlyQuery;
    dsSatuan: TDataSource;
    qSatuansatuan: TStringField;
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

    constructor Create(AOwner: TComponent; kdDept: TDept; aTag: Integer);
    procedure edtSatuanKeyPress(Sender: TObject; var Key: Char);
    procedure edtSatuanEnter(Sender: TObject);

  private
    { Private declarations }
    vDept: TDept;
    vTag: Integer;
    procedure UpdateAccessControls;
    procedure UpdateCrudControls;

  public
    { Public declarations }

  end;

var
  frmItemResto: TfrmItemResto;

implementation

{$R *.dfm}

constructor TfrmItemResto.Create(AOwner: TComponent; kdDept: TDept; aTag: Integer);
begin
  inherited Create(AOwner);
  vDept := kdDept;
  vTag := aTag;
end;

procedure TfrmItemResto.edtSatuanEnter(Sender: TObject);
begin
  qSatuan.Close;
  qSatuan.Open;
end;

procedure TfrmItemResto.edtSatuanKeyPress(Sender: TObject; var Key: Char);
begin
  if zqryDisplay.State<>dsBrowse then
     Exit;

  if Key=#13 then
     SelectNext(ActiveControl, True, True);
  if Key=#27 then
     SelectNext(ActiveControl, False, True);
end;

procedure TfrmItemResto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmItemResto.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= (zqryDisplay.State=dsInactive) or (zqryDisplay.State=dsBrowse);
  if not CanClose then
    MessageDlg('Please save data or cancel editing first!', mtError, [mbOK], 0);
end;

procedure TfrmItemResto.FormShow(Sender: TObject);
var
 s, kdDept: string;
begin
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\IMAGES\bg_main.JPG');

  case vDept of
    tdResto: begin
      kdDept := 'RO';
      lblFormName.Caption := 'RESTAURANT ITEMS';
      lblFormDesc.Caption := 'Restaurant Items List';
    end;
    tdHouseKeeping: begin
      kdDept := 'LY';
      lblFormName.Caption := 'HOUSEKEEPING ITEMS';
      lblFormDesc.Caption := 'Housekeeping Items List';
    end;
    tdPool: begin
      kdDept := 'KR'; // trial code. Change later!
      lblFormName.Caption := 'POOL ITEMS';
      lblFormDesc.Caption := 'Pool Items List';
    end;
  end;
  s := 'SELECT * FROM master.mitem ' +
       'WHERE id_cat_item = ' + QuotedStr(kdDept) + ' ' +
       'ORDER BY id_cat_item';

  zqryDisplay.SQL.Clear;
  zqryDisplay.SQL.Text := s;
  zqryDisplay.Active := True;
  qSatuan.Close;
  qSatuan.Open;

  UpdateCrudControls;
  UpdateAccessControls

end;

procedure TfrmItemResto.glbtnAddNewClick(Sender: TObject);
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

procedure TfrmItemResto.glbtnCLoseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmItemResto.glbtnCrudCancelClick(Sender: TObject);
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

procedure TfrmItemResto.glbtnCrudSaveClick(Sender: TObject);
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

end;

procedure TfrmItemResto.glbtnDelClick(Sender: TObject);
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

procedure TfrmItemResto.glbtnEditClick(Sender: TObject);
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

procedure TfrmItemResto.glbtnRefreshClick(Sender: TObject);
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

procedure TfrmItemResto.UpdateAccessControls;
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

procedure TfrmItemResto.UpdateCrudControls;
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


procedure TfrmItemResto.zqryDisplayBeforePost(DataSet: TDataSet);
begin
  if strngfldDisplayid_item.IsNull or (Trim(strngfldDisplayid_item.AsString)='') then
    raise Exception.Create('KODE ITEM HARUS DI ISI !');
    dbedtbtnRoomType.SetFocus;

  if strngfldDisplayitem_name.IsNull or (Trim(strngfldDisplayitem_name.AsString)='') then
    raise Exception.Create('NAMA ITEM HARUS DI ISI !');
    dbedtbtnRoomNo.SetFocus;

  if zqryDisplay.State=dsInsert then begin
     strngfldDisplayusr_ins.AsString:= DataModule1.UserConnect;
     strngfldDisplayusr_upd.AsString:= DataModule1.UserConnect;
  end else
  if zqryDisplay.State=dsEdit then
     strngfldDisplayusr_upd.AsString:= DataModule1.UserConnect;
end;

procedure TfrmItemResto.zqryDisplayNewRecord(DataSet: TDataSet);
var s: string;
begin

    strngfldDisplayisactive.AsString:= '1';
    strngfldDisplayisdetail.AsString:= '1';
    fltfldDisplayhrg_jual.AsFloat:= 0;
    strngfldDisplaysatuan.AsString:= '-';
    strngfldDisplayusr_ins.AsString:= DataModule1.UserConnect;
    strngfldDisplayusr_upd.AsString:= DataModule1.UserConnect;
    fltfldDisplayhrg_beli.AsFloat:= 0;
    intgrfldDisplaylvl.AsInteger:= 1;

  if vDept=tdResto then begin
    strngfldDisplayid_cat_item.AsString:= 'RO';
    strngfldDisplayisinventory.AsString:= '0';
    fltfldDisplaystok_awal.AsFloat:= 0;
    fltfldDisplaymin_stock.AsFloat:= 0;
  end else
  if vDept=tdHouseKeeping then begin
    strngfldDisplayid_cat_item.AsString:= 'LY';
    strngfldDisplayisinventory.AsString:= '0';
    fltfldDisplaystok_awal.AsFloat:= 0;
    fltfldDisplaymin_stock.AsFloat:= 0;
  end else
  if vDept=tdPool then begin
    strngfldDisplayid_cat_item.AsString:= 'KR';
    strngfldDisplayisinventory.AsString:= '0';
    fltfldDisplaystok_awal.AsFloat:= 0;
    fltfldDisplaymin_stock.AsFloat:= 0;
  end;

end;

end.

