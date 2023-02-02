unit uRoomData;

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
  cxDBEdit, AdvPanel, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfrmRoomData = class(TForm)
    DataSource1: TDataSource;
    cxDBTreeListRoomData: TcxDBTreeList;
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn4: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn5: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn6: TcxDBTreeListColumn;
    zqryDisplay: TZQuery;
    zroqryRoomType: TZReadOnlyQuery;
    wwlookupDlgRoomType: TwwLookupDialog;
    strngfldDisplayno_kamar: TStringField;
    lrgntfldDisplayid_tp_kamar: TLargeintField;
    fltfldDisplaytarif: TFloatField;
    strngfldDisplayisdetail: TStringField;
    intgrfldDisplaylvl: TIntegerField;
    strngfldDisplaydiskripsi: TStringField;
    strngfldDisplaytotal_bed: TStringField;
    dtmfldDisplaydt_ins: TDateTimeField;
    dtmfldDisplaydt_upd: TDateTimeField;
    strngfldDisplayusr_ins: TStringField;
    strngfldDisplayusr_upd: TStringField;
    strngfldDisplayis_isi: TStringField;
    strngfldDisplayid_parent: TStringField;
    strngfldDisplayno_bed: TStringField;
    pnlHeader: TPanel;
    pnlFooter: TPanel;
    cxlbl2: TcxLabel;
    shp1: TShape;
    cxlbl1: TcxLabel;
    shp2: TShape;
    shp3: TShape;
    shp5: TShape;
    cxlbl6: TcxLabel;
    shp6: TShape;
    dbedtbtnRoomNo: TcxDBButtonEdit;
    dbedtbtnRoomRate: TcxDBButtonEdit;
    advpnlNav: TAdvPanel;
    cxlbl5: TcxLabel;
    shp7: TShape;
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
    Label2: TLabel;
    Label1: TLabel;
    cxDBTreeListRoomDatacxDBTreeListColumn7: TcxDBTreeListColumn;
    edtLantai: TcxDBLookupComboBox;
    qLantai: TZReadOnlyQuery;
    qLantaidiskripsi: TStringField;
    dsLantai: TDataSource;
    LtipeKamar: TwwLookupDialog;
    qtipeKamar: TZReadOnlyQuery;
    qtipeKamartp_kamar: TStringField;
    qtipeKamarjml_bed: TIntegerField;
    qtipeKamartipe_bed: TStringField;
    qtipeKamarid_tp_kamar: TLargeintField;
    strngfldDisplaytp_kamar: TStringField;
    strngfldDisplayjns_kartu: TStringField;
    cxLabel1: TcxLabel;
    cxDBComboBox1: TcxDBComboBox;
    Shape1: TShape;
    Shape2: TShape;
    dbedtbtnRoomTAX: TcxDBButtonEdit;
    cxLabel2: TcxLabel;
    dbedtbtnRoomService: TcxDBButtonEdit;
    cxLabel3: TcxLabel;
    fltfldDisplaytax: TFloatField;
    fltfldDisplayservice: TFloatField;
    cxDBTreeListRoomDatacxDBTreeListColumn8: TcxDBTreeListColumn;
    cxDBTreeListRoomDatacxDBTreeListColumn9: TcxDBTreeListColumn;
    Shape3: TShape;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxLabel4: TcxLabel;
    Shape4: TShape;
    cxLabel5: TcxLabel;
    Shape5: TShape;
    cxDBButtonEdit2: TcxDBButtonEdit;
    Shape6: TShape;
    Shape7: TShape;
    cxLabel6: TcxLabel;
    cxDBButtonEdit3: TcxDBButtonEdit;
    cxLabel7: TcxLabel;
    cxDBButtonEdit4: TcxDBButtonEdit;
    Shape8: TShape;
    cxLabel8: TcxLabel;
    cxDBButtonEdit5: TcxDBButtonEdit;
    zqryDisplaytarif_traveloka: TFloatField;
    zqryDisplaytarif_tiket_com: TFloatField;
    zqryDisplaytarif_pegi_pegi: TFloatField;
    zqryDisplaytarif_booking_com: TFloatField;
    zqryDisplaytarif_phone: TFloatField;
    cxDBTreeListRoomDatacxDBTreeListColumn10: TcxDBTreeListColumn;
    cxDBTreeListRoomDatacxDBTreeListColumn11: TcxDBTreeListColumn;
    cxDBTreeListRoomDatacxDBTreeListColumn12: TcxDBTreeListColumn;
    cxDBTreeListRoomDatacxDBTreeListColumn13: TcxDBTreeListColumn;
    cxDBTreeListRoomDatacxDBTreeListColumn14: TcxDBTreeListColumn;
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
    procedure edtLantaiKeyPress(Sender: TObject; var Key: Char);
    procedure edtLantaiEnter(Sender: TObject);
    procedure dbedtbtnRoomTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
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
  frmRoomData: TfrmRoomData;

implementation

uses
  uDM;

{$R *.dfm}

constructor TfrmRoomData.Create(AOwner: TComponent; aTag: Integer);
begin
  inherited Create(AOwner);
  vTag := aTag;
end;

procedure TfrmRoomData.dbedtbtnRoomTypePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    qtipeKamar.Close;
    qtipeKamar.Open;

  if LtipeKamar.Execute then
  begin
    strngfldDisplaydiskripsi.AsString:= qtipeKamartipe_bed.AsString;
    lrgntfldDisplayid_tp_kamar.AsLargeInt := qtipeKamarid_tp_kamar.AsLargeInt;
    strngfldDisplaytp_kamar.AsString:= qtipeKamartp_kamar.AsString;
  end;

end;

procedure TfrmRoomData.edtLantaiEnter(Sender: TObject);
begin
  qLantai.Close;
  qLantai.Open;
end;

procedure TfrmRoomData.edtLantaiKeyPress(Sender: TObject; var Key: Char);
begin
  if zqryDisplay.State<>dsBrowse then
     Exit;

  if Key=#13 then
     SelectNext(ActiveControl, True, True);
  if Key=#27 then
     SelectNext(ActiveControl, False, True);

end;

procedure TfrmRoomData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmRoomData.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= (zqryDisplay.State=dsInactive) or (zqryDisplay.State=dsBrowse);
  if not CanClose then
    MessageDlg('Please save data or cancel editing first!', mtError, [mbOK], 0);
end;

procedure TfrmRoomData.FormShow(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\IMAGES\bg_main.JPG');
  zqryDisplay.Active := True;
  UpdateCrudControls;
  qLantai.Close;
  qLantai.Open;
  UpdateAccessControls;
end;

procedure TfrmRoomData.glbtnAddNewClick(Sender: TObject);
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

procedure TfrmRoomData.glbtnCLoseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRoomData.glbtnCrudCancelClick(Sender: TObject);
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

procedure TfrmRoomData.glbtnCrudSaveClick(Sender: TObject);
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

procedure TfrmRoomData.glbtnDelClick(Sender: TObject);
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

procedure TfrmRoomData.glbtnEditClick(Sender: TObject);
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

procedure TfrmRoomData.glbtnRefreshClick(Sender: TObject);
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

procedure TfrmRoomData.UpdateAccessControls;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if zqryDisplay.State<>dsInactive then begin
    isEmpty := zqryDisplay.RecordCount <= 0;
    DataModule1.GetAccessRights(vTag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    //glbtnAddNew.Visible:= isBrowse;
    glbtnAddNew.Enabled:= accinsert;
//    glbtnEdit.Visible:= isBrowse;
    glbtnEdit.Enabled:= not isEmpty and accedit;
//    glbtnDel.Visible:= isBrowse;
    glbtnDel.Enabled:= not isEmpty and accdelete;

  end;
end;

procedure TfrmRoomData.UpdateCrudControls;
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


procedure TfrmRoomData.zqryDisplayBeforePost(DataSet: TDataSet);
begin
  if strngfldDisplayno_kamar.IsNull or (Trim(strngfldDisplayno_kamar.AsString)='') then
    raise Exception.Create('ROOM NUMBER Must Have Value !')
  else
  if lrgntfldDisplayid_tp_kamar.IsNull or (Trim(lrgntfldDisplayid_tp_kamar.AsString)='') then
    raise Exception.Create('ROOM TYPE Must Have Value !');

  if strngfldDisplayjns_kartu.AsString= 'ADEL' then begin
  strngfldDisplayno_bed.AsString:= Trim('010'+(dbedtbtnRoomNo.Text))
  end else
  strngfldDisplayno_bed.AsString:= Trim('00'+(dbedtbtnRoomNo.Text));

  if zqryDisplay.State=dsInsert then begin
     strngfldDisplayusr_ins.AsString:= DataModule1.UserConnect;
     strngfldDisplayusr_upd.AsString:= DataModule1.UserConnect;
  end else if zqryDisplay.State=dsEdit then
     strngfldDisplayusr_upd.AsString:= DataModule1.UserConnect;
end;

procedure TfrmRoomData.zqryDisplayNewRecord(DataSet: TDataSet);
begin
  strngfldDisplayno_kamar.AsString:= '';
  fltfldDisplaytarif.AsFloat:= 0;
  fltfldDisplaytax.AsFloat:= 0;
  fltfldDisplayservice.AsFloat:= 0;
  intgrfldDisplaylvl.AsInteger:= 0;
  strngfldDisplayisdetail.AsString:= '1';
  strngfldDisplayis_isi.AsString:= '0';
  strngfldDisplaytotal_bed.AsString:= '0';
  strngfldDisplayjns_kartu.AsString:= '';
end;

end.

