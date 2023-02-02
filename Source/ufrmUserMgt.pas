unit ufrmUserMgt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  AdvGlassButton, AdvPanel, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  Vcl.StdCtrls, Vcl.ExtCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  cxCheckBox, uTools, cxContainer, AdvGlowButton, cxTextEdit, cxDBEdit,


  uMain, cxDropDownEdit;

type
  TfrmUserMgt = class(TForm)
    pnlHeader: TPanel;
    img1: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    cxPageCtrlUserMgt: TcxPageControl;
    tsRekap: TcxTabSheet;
    cxgrdRekap: TcxGrid;
    cxGridRekap: TcxGridDBTableView;
    cxgrdlvlRekap: TcxGridLevel;
    tsDetail: TcxTabSheet;
    advpnlNav: TAdvPanel;
    glbtnCLose: TAdvGlassButton;
    zqryMaster: TZQuery;
    dsMaster: TDataSource;
    zqryDetail: TZQuery;
    dsDetail: TDataSource;
    strngfldMastervuser: TStringField;
    strngfldMasterpasswd: TStringField;
    strngfldMasterfull_name: TStringField;
    strngfldDetailvuser: TStringField;
    intgrfldDetailimenu: TIntegerField;
    strngfldDetailmenu_name: TStringField;
    strngfldDetailmenu_caption: TStringField;
    intgrfldDetaillvl: TIntegerField;
    intgrfldDetailtag: TIntegerField;
    strngfldDetailisbrowse: TStringField;
    strngfldDetailisinsert: TStringField;
    strngfldDetailisedit: TStringField;
    strngfldDetailisdelete: TStringField;
    strngfldDetailisprint: TStringField;
    strngfldDetailisexport: TStringField;
    strngfldDetailis_preparer: TStringField;
    strngfldDetailis_reviewer: TStringField;
    strngfldDetailis_approver: TStringField;
    cxgrdbclmnGridRekapvuser: TcxGridDBColumn;
    cxgrdbclmnGridRekappasswd: TcxGridDBColumn;
    cxgrdbclmnGridRekapfull_name: TcxGridDBColumn;
    pnlDetailData: TPanel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    cxDbEditvuser: TcxDBTextEdit;
    cxDbEditpasswd: TcxDBTextEdit;
    cxDbEditfull_name: TcxDBTextEdit;
    pnlDetailNav: TPanel;
    btnCreateMenu: TAdvGlowButton;
    pnlCrudCtrl: TPanel;
    glbtnRefresh: TAdvGlassButton;
    glbtnAddNew: TAdvGlassButton;
    glbtnEdit: TAdvGlassButton;
    glbtnDel: TAdvGlassButton;
    pnlCrudAct: TPanel;
    glbtnCrudSave: TAdvGlassButton;
    glbtnCrudCancel: TAdvGlassButton;
    grdDetail: TcxGrid;
    grddbtvDetail: TcxGridDBTableView;
    grddbtvDetaildiskripsi: TcxGridDBColumn;
    grddbtvDetailqty: TcxGridDBColumn;
    grdlvlDetail: TcxGridLevel;
    grddbtvDetailColumn1: TcxGridDBColumn;
    grddbtvDetailColumn2: TcxGridDBColumn;
    grddbtvDetailColumn3: TcxGridDBColumn;
    grddbtvDetailColumn4: TcxGridDBColumn;
    grddbtvDetailColumn5: TcxGridDBColumn;
    Memo1: TMemo;
    procedure glbtnCLoseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure zqryDetailCalcFields(DataSet: TDataSet);
    procedure zqryMasterBeforePost(DataSet: TDataSet);
    procedure zqryMasterNewRecord(DataSet: TDataSet);
    procedure zqryDetailNewRecord(DataSet: TDataSet);
    procedure zqryDetailBeforePost(DataSet: TDataSet);
    procedure glbtnAddNewClick(Sender: TObject);
    procedure cxGridRekapDblClick(Sender: TObject);
    procedure cxPageCtrlUserMgtPageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure cxPageCtrlUserMgtChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    constructor Create(AOwner: TComponent; aTag: Integer);
    procedure glbtnEditClick(Sender: TObject);
    procedure glbtnDelClick(Sender: TObject);
    procedure glbtnCrudSaveClick(Sender: TObject);
    procedure glbtnCrudCancelClick(Sender: TObject);
    procedure btnCreateMenuClick(Sender: TObject);
    procedure strngfldMasterpasswdSetText(Sender: TField; const Text: String);
  private
    { Private declarations }
    vTag: Integer;
    DBMode: TDBMode;
    procedure UpdateView;

    procedure UpdateAccessControls;
    procedure UpdateCrudControls;
    procedure GenerateVUserMenu(vUserName: string);

  public
    { Public declarations }
  end;

var
  frmUserMgt: TfrmUserMgt;

implementation

uses
  uDM, MD5, Vcl.Menus;

{$R *.dfm}

function removechar(inps: string; ch: char): string;
var s: string;
begin
  Result:= '';
  s:= inps;
  while Pos(ch,s)<>0 do
    Delete(s,Pos(ch,s),1);
  Result:= s
end;

function space(n: Integer): string;
var i: Integer;
begin
  Result:= '';
  for I := 1 to n do
    Result:= Result + '  '
end;

procedure TfrmUserMgt.btnCreateMenuClick(Sender: TObject);
var i: Integer;
    mi: TMenuItem;
begin
  zqryMaster.Post;

  zqryDetail.Close;
  zqryDetail.Params.ParamByName('vuser').Value:= strngfldMastervuser.Value;
  zqryDetail.Open;
  for i:=0 to frmMain.ComponentCount-1 do
    if frmMain.Components[i] is TMenuItem then begin
      mi:= frmMain.Components[i] as TMenuItem;
      if mi.Tag > 0 then
        Memo1.Lines.Add(space(mi.GroupIndex) + mi.Tag.ToString + ' - ' +
                        mi.Name + ' (' + removechar(mi.Caption,'&') + ')');
      zqryDetail.Append;
      strngfldDetailvuser.AsString:= strngfldMastervuser.AsString;
      intgrfldDetailimenu.AsInteger:= mi.Tag;
      strngfldDetailmenu_name.AsString:= mi.Name;
      strngfldDetailmenu_caption.AsString:= removechar(mi.Caption,'&');
      intgrfldDetaillvl.AsInteger:= mi.GroupIndex;
      intgrfldDetailtag.AsInteger:= mi.Tag;
      strngfldDetailisbrowse.AsString:= '0';
      strngfldDetailisinsert.AsString:= '0';
      strngfldDetailisedit.AsString:= '0';
      strngfldDetailisdelete.AsString:= '0';
      strngfldDetailisprint.AsString:= '0';
      strngfldDetailisexport.AsString:= '0';
      strngfldDetailis_preparer.AsString:= '0';
      strngfldDetailis_reviewer.AsString:= '0';
      strngfldDetailis_approver.AsString:= '0';
      zqryDetail.Post;
    end;

//  Memo1.Lines.Add('');

end;

constructor TfrmUserMgt.Create(AOwner: TComponent; aTag: Integer);
begin
  inherited Create(AOwner);
  vTag := aTag;
end;

procedure TfrmUserMgt.cxGridRekapDblClick(Sender: TObject);
begin
  cxPageCtrlUserMgt.ActivePageIndex:= 1;
end;

procedure TfrmUserMgt.cxPageCtrlUserMgtChange(Sender: TObject);
begin

  if (zqryMaster.State<>dsInactive) and (zqryMaster.RecordCount>0) and (cxPageCtrlUserMgt.ActivePageIndex=1) then begin
    try
      zqryDetail.Close;
      zqryDetail.Params.ParamByName('vuser').Value:= strngfldMastervuser.Value;
      zqryDetail.Open;
    except
      on E: Exception do begin
        MessageDlg(E.Message, mtError, [mbOK], 0);
      end
    end
  end
  else begin
    cxDbEditvuser.Clear;
    cxDbEditpasswd.Clear;
    cxDbEditfull_name.Clear;
    zqryDetail.Close;
  end;

end;

procedure TfrmUserMgt.cxPageCtrlUserMgtPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= (DBMode=dmNone) or (DBMode=dmBrowse);
end;

procedure TfrmUserMgt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmUserMgt.FormShow(Sender: TObject);
begin
  img1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\images\bg_main.JPG');

  DBMode:= dmNone;
  cxPageCtrlUserMgt.ActivePageIndex:= 0;
  ShowWindow(Handle, SW_Maximize);
  try
    zqryMaster.Close;
    zqryMaster.Open;
    zqryDetail.Close;
    zqryDetail.Close;
    DBMode:= dmBrowse;
  except
    on E: Exception do begin
      MessageDlg(E.Message, mtError, [mbOK], 0);
    end
  end;
//  UpdateView;

  UpdateAccessControls;

end;

procedure TfrmUserMgt.GenerateVUserMenu(vUserName: string);
begin

end;

procedure TfrmUserMgt.glbtnAddNewClick(Sender: TObject);
begin

  try
    cxPageCtrlUserMgt.ActivePageIndex:= 1;
    zqryMaster.Append;
    zqryDetail.Close;
    zqryDetail.Params.ParamByName('vuser').Value:= '';
    zqryDetail.Open;
    cxDbEditvuser.SetFocus;
    DBMode:= dmInsert;
  except
    on E: Exception do begin
      DBMode:= dmBrowse;
      MessageDlg(E.Message, mtError, [mbOK], 0);
    end;
  end;

  UpdateCrudControls;

end;

procedure TfrmUserMgt.glbtnCLoseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUserMgt.glbtnCrudCancelClick(Sender: TObject);
begin
  try
    zqryDetail.Cancel;
    zqryMaster.Cancel;
    zqryDetail.CancelUpdates;
    zqryMaster.CancelUpdates;
  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;
  DBMode:= dmBrowse;
  UpdateView;
  cxPageCtrlUserMgt.ActivePageIndex := 0;

  cxDbEditvuser.Clear;
  cxDbEditpasswd.Clear;
  cxDbEditfull_name.Clear;

  UpdateCrudControls;

  cxPageCtrlUserMgt.ActivePageIndex := 0;

end;

procedure TfrmUserMgt.glbtnCrudSaveClick(Sender: TObject);
begin

  DataModule1.StartTransaction;
  try
    if (zqryMaster.State=dsInsert) or (zqryMaster.State=dsEdit) then
      zqryMaster.Post;
    if (zqryDetail.State=dsInsert) or (zqryDetail.State=dsEdit) then
      zqryDetail.Post;
    zqryMaster.ApplyUpdates;
    zqryDetail.ApplyUpdates;
    zqryMaster.CommitUpdates;
    zqryDetail.CommitUpdates;
    DataModule1.CommitTransaction;

//    if DBMode = dmInsert then
//      GenerateVUserMenu(Trim(cxDbEditvuser));

  except
    on E: Exception do begin
      DataModule1.RollbackTransaction;
      MessageDlg(E.Message, mtError, [mbOK], 0);
      Exit;
    end
  end;
  DBMode:= dmBrowse;

  cxDbEditvuser.Clear;
  cxDbEditpasswd.Clear;
  cxDbEditfull_name.Clear;

  UpdateCrudControls;

  cxPageCtrlUserMgt.ActivePageIndex := 0;

end;

procedure TfrmUserMgt.glbtnDelClick(Sender: TObject);
begin

  if MessageDlg('Delete this data?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  DataModule1.StartTransaction;
  try
    DataModule1.zconHotel.StartTransaction;
    zqryMaster.Delete;
    zqryMaster.ApplyUpdates;
    zqryMaster.CommitUpdates;
    DataModule1.CommitTransaction;
    zqryMaster.Refresh;
    cxPageCtrlUserMgtChange(nil);
  except
    on E: Exception do begin
      DataModule1.RollbackTransaction;
      MessageDlg(E.Message, mtError, [mbOK], 0);
    end;
  end;

  UpdateCrudControls;

end;

procedure TfrmUserMgt.glbtnEditClick(Sender: TObject);
begin
  try
    cxPageCtrlUserMgt.ActivePageIndex:= 1;
    zqryMaster.Edit;
    zqryDetail.Edit;
    cxDbEditvuser.SetFocus;
    DBMode:= dmEdit;
  except
    on E: Exception do begin
      DBMode:= dmBrowse;
      MessageDlg(E.Message, mtError, [mbOK], 0);
    end;
  end;

  UpdateCrudControls;
end;

procedure TfrmUserMgt.UpdateAccessControls;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if zqryMaster.State<>dsInactive then begin

    isEmpty := zqryMaster.RecordCount <= 0;

    DataModule1.GetAccessRights(vTag, accbrowse, accinsert, accedit, accdelete, accprint,
                       accexport);

    if not accbrowse then begin
      zqryMaster.Close;
      zqryDetail.Close;
    end;

    glbtnAddNew.Enabled:= accinsert;
    glbtnEdit.Enabled:= not isEmpty and accedit;
    glbtnDel.Enabled:= not isEmpty and accdelete;

  end;
end;

procedure TfrmUserMgt.UpdateCrudControls;
begin

  case zqryMaster.State of

    dsInactive, dsBrowse: begin
      pnlCrudAct.Visible := False;
      pnlCrudCtrl.Visible := True;
      pnlCrudCtrl.Left := 10;
    end;

    dsEdit, dsInsert: begin
      pnlCrudAct.Visible := True;
      pnlCrudAct.Left := 10;
      pnlCrudCtrl.Visible := False;
    end;

  end;

end;

procedure TfrmUserMgt.UpdateView;
begin

end;

procedure TfrmUserMgt.zqryDetailBeforePost(DataSet: TDataSet);
begin
  zqryDetail.Params[0].Value := 'office';
end;

procedure TfrmUserMgt.zqryDetailCalcFields(DataSet: TDataSet);
var ctab: string;
    i: Integer;
begin
  ctab:='';
  if intgrfldDetaillvl.AsInteger>0 then
    for i:= 1 to intgrfldDetaillvl.AsInteger do
      ctab:= ctab+'     ';
  strngfldDetailmenu_caption.AsString:= ctab + strngfldDetailmenu_caption.AsString;
end;

procedure TfrmUserMgt.zqryDetailNewRecord(DataSet: TDataSet);
begin
  strngfldDetailis_preparer.AsString:= '0';
  strngfldDetailis_reviewer.AsString:= '0';
  strngfldDetailis_approver.AsString:= '0';
end;

procedure TfrmUserMgt.zqryMasterBeforePost(DataSet: TDataSet);
begin
  if strngfldMastervuser.IsNull or (Trim(strngfldMastervuser.AsString)='') then
    raise Exception.Create('NAMA USER harus diisi !');

  if strngfldMasterpasswd.IsNull or (Trim(strngfldMasterpasswd.AsString)='')then
    strngfldMasterpasswd.AsString:= MD5Print(MD5String(''));
end;

procedure TfrmUserMgt.strngfldMasterpasswdSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:= MD5Print(MD5String(Trim(Text)))
end;

procedure TfrmUserMgt.zqryMasterNewRecord(DataSet: TDataSet);
begin
  strngfldMastervuser.Clear;
  strngfldMasterpasswd.Clear;
  strngfldMasterfull_name.Clear;
end;

end.


