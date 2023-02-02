unit uDash;

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
  cxClasses, cxGridCustomView, cxGrid, cxDropDownEdit, Vcl.Menus, AdvMenus,
  uTools;

type
  TfrmDash = class(TForm)
    dsGuest: TDataSource;
    zqryDisplay: TZQuery;
    pnlHeader: TPanel;
    shp5: TShape;
    advpnlNav: TAdvPanel;
    strngfldDisplayno_register: TStringField;
    strngfldDisplayiscancel: TStringField;
    strngfldDisplayusr_upd: TStringField;
    strngfldDisplayisclosed: TStringField;
    intgrfldDisplayno_antrian: TIntegerField;
    strngfldDisplaynomor_id: TStringField;
    strngfldDisplaynama_tamu: TStringField;
    strngfldDisplayroom_type: TStringField;
    pnl1: TPanel;
    zqryRooms: TZQuery;
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
    strngfld1: TStringField;
    strngfldDisplayis_isi: TStringField;
    strngfldDisplayid_parent: TStringField;
    strngfldDisplayno_bed: TStringField;
    strngfldDisplaytp_kamar: TStringField;
    pnlRoomsPanel: TAdvGlassButton;
    advpopRoomMenu: TAdvPopupMenu;
    CheckIn1: TMenuItem;
    MovingRoom1: TMenuItem;
    ExtraBed1: TMenuItem;
    CancelCheckIN1: TMenuItem;
    RoomCard1: TMenuItem;
    CheckOut1: TMenuItem;
    N1: TMenuItem;
    Refresh1: TMenuItem;
    IssueCard1: TMenuItem;
    Image1: TImage;
    Label2: TLabel;
    Label1: TLabel;
    zqryExec: TZQuery;
    zqryRoomUpdate: TZQuery;
    strngfld2: TStringField;
    lrgntfld1: TLargeintField;
    fltfld1: TFloatField;
    strngfld3: TStringField;
    intgrfld1: TIntegerField;
    strngfld4: TStringField;
    strngfld5: TStringField;
    dtmfld1: TDateTimeField;
    dtmfld2: TDateTimeField;
    strngfld6: TStringField;
    strngfld7: TStringField;
    strngfld8: TStringField;
    strngfld9: TStringField;
    strngfld10: TStringField;
    strngfld11: TStringField;
    Adel1: TMenuItem;
    Fest1: TMenuItem;
    qCeckTime: TZReadOnlyQuery;
    qCeckTimecharge_time: TFloatField;
    ExtraBed2: TMenuItem;
    Maintenence: TMenuItem;
    VerifikasiBillingTamu1: TMenuItem;
    SetReady1: TMenuItem;
    AdvPanelGroup1: TAdvPanelGroup;
    glbtnRefresh: TAdvGlassButton;
    glbtnCLose: TAdvGlassButton;
    AdvPanelGroup2: TAdvPanelGroup;
    lblPort: TLabel;
    advglPort: TAdvGlassButton;
    AdvGlassButton4: TAdvGlassButton;
    AdvGlassButton3: TAdvGlassButton;
    AdvGlassButton2: TAdvGlassButton;
    AdvGlassButton1: TAdvGlassButton;
    AdvPanelGroup3: TAdvPanelGroup;
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
    procedure CheckIn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MovingRoom1Click(Sender: TObject);
    procedure ExtraBed1Click(Sender: TObject);
    procedure CancelCheckIN1Click(Sender: TObject);
    procedure CheckOut1Click(Sender: TObject);
    procedure Adel1Click(Sender: TObject);
    procedure ExtraBed2Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure MaintenenceClick(Sender: TObject);
    procedure Fest1Click(Sender: TObject);
    procedure VerifikasiBillingTamu1Click(Sender: TObject);
    procedure SetReady1Click(Sender: TObject);

  private
    { Private declarations }
    Rooms: TRooms;

    procedure UpdateCrudControls;

    procedure GenerateRoomDisplayList;
    procedure OnRoomClick(Sender: TObject);
    procedure CancelCheckIn(aRoomNo: string);
    procedure Checkout(aRoomNo: string);
    procedure CustPnlOnClick(Sender: TObject);

  public
    { Public declarations }
    procedure ClearRoomList;
    procedure RebuildRoomList;

  end;

var
  frmDash: TfrmDash;

implementation

uses
  uDM, uRegTamu, uRoomMoving, uExtraBed, uItemResto, uExtendStay,
  uAdel, uFest, Unit2Fest, uVerifikasi, uPembatalan, DateUtils;


{$R *.dfm}

procedure TfrmDash.Adel1Click(Sender: TObject);
var
  f : TfrmAdel;
  i: Integer;
  fRoomNo: string;
begin

 if DataModule1.IsRoomOccupied((advpopRoomMenu.PopupComponent as TAdvGlassButton).Caption) then begin

    fRoomNo := (advpopRoomMenu.PopupComponent as TAdvGlassButton).Caption;
    f:= TfrmAdel.Create(Application);
    f.vNoKamar:= fRoomNo;
    f.btnglErase.Visible:= False;

    if advglPort.Caption= 'USB' then begin
    f.vNoPort:= 0;
    end else
    f.vNoPort:= StrToInt(Copy(advglPort.Caption,5));

    try
      if f.ShowModal= mrOk then begin

      end;

    finally
      f.Free;
    end;

 end else
    MessageDlg('Room is empty!', mtError, [mbOK], 0);
end;

procedure TfrmDash.CancelCheckIn(aRoomNo: string);
var
f: TfrmPembatalan;
s, vno_reg, fRoomNo : String;
begin

    s := 'Cancel reservation for Room ' + aRoomNo + '?';
    if MessageDlg(s, mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Exit;

    fRoomNo := (advpopRoomMenu.PopupComponent as TAdvGlassButton).Caption;
    f:= TfrmPembatalan.Create(Application);
    f.vNoKamar:= fRoomNo;
    f.vNamaTamu:= DataModule1.GetNamaTamuByRoomNo(aRoomNo);

    try
      if f.ShowModal= mrOk then begin
        try
         vno_reg:= DataModule1.GetNoRegByRoomNo(aRoomNo);

         try
         // CANCELING REGITRASI
           zqryExec.Close;
           zqryExec.SQL.Clear;
           zqryExec.Params.Clear;
           s:= 'update transaksi.register_tamu set iscancel='+QuotedStr('1');
           s:= s+' , usr_upd='+QuotedStr(DataModule1.UserConnect);
           s:= s+' , keterangan='+QuotedStr(f.MemAlasanBatal.Text)+', dt_upd=';
           s:= s+'(select cast(current_timestamp as timestamp without time zone))';
           s:= s+' where no_register='+QuotedStr(vno_reg);
           zqryExec.SQL.Add(s);
           zqryExec.ExecSQL;

        // Room update

          zqryRoomUpdate.Close;
          zqryRoomUpdate.SQL.Clear;
          zqryRoomUpdate.Params.Clear;
          s:= 'update master.mkamar set is_isi='+QuotedStr('0');
          s:= s+' where no_kamar='+QuotedStr(aRoomNo);
          zqryRoomUpdate.SQL.Add(s);
          zqryRoomUpdate.ExecSQL;

          RebuildRoomList;

         except
            on E: Exception do
              MessageDlg(E.Message, mtError, [mbOK], 0);
         end;
        finally
          MessageDlg('Reservation for Room ' + aRoomNo + ' canceled succesfully', mtInformation, [mbOK], 0);
        end;

      end else begin


      end;
    finally
//     f.Free
    end;
end;

procedure TfrmDash.CancelCheckIN1Click(Sender: TObject);
begin
  CancelCheckIn((advpopRoomMenu.PopupComponent as TAdvGlassButton).Caption);
end;

procedure TfrmDash.CheckIn1Click(Sender: TObject);
var
  fRoomNo: string;
  f: TRegTamuFrm;
begin
  if DataModule1.IsRoomNotReady((advpopRoomMenu.PopupComponent as TAdvGlassButton).Caption) then begin
     MessageDlg('Kamar Belum Ready, Silahkan Set Status Kamar Terlebih Dahulu !', mtError, [mbOK], 0);

  end else begin
     f:= TRegTamuFrm.Create(Application);
     fRoomNo := (advpopRoomMenu.PopupComponent as TAdvGlassButton).Caption;

     f.vNoKamar:= fRoomNo;

     f.EditModeOnly := DataModule1.IsRoomOccupied(fRoomNo);

     f.frmDash := Self as TForm;
     f.btnPrint.Visible:= False;

     try
       if f.ShowModal= mrOk then begin

       end;

     finally
       f.Free;
     end;
  end;

end;

procedure TfrmDash.Checkout(aRoomNo: string);
var
  f: TfrmAdel;
  g: TFrmFest;
  s, vno_reg,  fRoomNo, vDateOut, vDateIn: String;
  i, vid_reg: Integer;
  vcharge, qtyStay: Double;
  dt_in, dt_ot : TDateTime;
begin

  If MessageDlg('Checked out guest at Room ' + aRoomNo + '?', mtError, [mbYes, mbNo], 0) = mrNo then
    Exit;

  if DataModule1.type_encoder='adel' then begin

    fRoomNo := (advpopRoomMenu.PopupComponent as TAdvGlassButton).Caption;
    f:= TfrmAdel.Create(Application);
    f.vNoKamar:= fRoomNo;
    f.btnglErase.Visible:= True;
    f.btnglIssue.Visible:= False;
    f.btnglRead.Visible:= False;

    if advglPort.Caption= 'USB' then begin
    f.vNoPort:= 0;
    end else
    f.vNoPort:= StrToInt(Copy(advglPort.Caption,5));

    try
      if f.ShowModal= mrOk then begin
        fRoomNo := f.vNoKamar;
        qCeckTime.Close;
        qCeckTime.Open;
        vcharge:= qCeckTimecharge_time.AsFloat;
        try
          vno_reg:= DataModule1.GetNoRegByRoomNo(aRoomNo);
          vid_reg:= DataModule1.lrgntfldGetNoRegByRoomNoid_register.AsLargeInt;

          try

             zqryExec.Close;
             zqryExec.SQL.Clear;
             zqryExec.Params.Clear;
             s:= 'update transaksi.register_tamu set iscekout='+QuotedStr('1') +  ', dt_upd=';
             s:= s+'(select cast(current_timestamp as timestamp without time zone))';
             s:= s+' where no_register='+QuotedStr(vno_reg);
             zqryExec.SQL.Clear;
             zqryExec.SQL.Add(s);
             zqryExec.ExecSQL;

             zqryExec.Close;
             zqryExec.SQL.Clear;
             zqryExec.Params.Clear;
             s:= 'select dt_masuk, dt_keluar from transaksi.register_tamu_detail';
             s:= s+' where id_register='+IntToStr(vid_reg);
             zqryExec.SQL.Clear;
             zqryExec.SQL.Add(s);
             zqryExec.Open;

             vDateIn:= FormatDateTime('dd/mm/yyyy', zqryExec.FieldByName('dt_masuk').AsDateTime);
             vDateOut:= FormatDateTime('dd/mm/yyyy', Now);
             dt_in:= StrToDateTime(vDateIn);
             dt_ot:= StrToDateTime(vDateOut);
             qtyStay:= DaySpan(dt_in, dt_ot);



             //Charge late Ceck Out
             if vDateIn = vDateOut then begin

               zqryExec.Close;
               zqryExec.SQL.Clear;
               zqryExec.Params.Clear;
               s:= 'update transaksi.register_tamu_detail set charge_psn='+FloatToStr(0)+', ';
               s:= s+'ci_charge_psn='+FloatToStr(0)+', ';
               s:= s+'dt_keluar=';
               s:= s+'(select cast(current_timestamp as timestamp without time zone))';
               s:= s+' where id_register='+IntToStr(vid_reg);
               zqryExec.SQL.Clear;
               zqryExec.SQL.Add(s);
               zqryExec.ExecSQL;

             end else begin

               zqryExec.Close;
               zqryExec.SQL.Clear;
               zqryExec.Params.Clear;
               s:= 'update transaksi.register_tamu_detail set charge_psn='+FloatToStr(vcharge)+', ';
               s:= s+'qty='+FloatToStr(qtyStay)+',';
               s:= s+'dt_keluar=';
               s:= s+'(select cast(current_timestamp as timestamp without time zone))';
               s:= s+' where id_register='+IntToStr(vid_reg);
               zqryExec.SQL.Clear;
               zqryExec.SQL.Add(s);
               zqryExec.ExecSQL;

             end;

             //room update
              zqryRoomUpdate.Close;
              zqryRoomUpdate.SQL.Clear;
              zqryRoomUpdate.Params.Clear;
              s:= 'update master.mkamar set is_isi='+QuotedStr('3');
              s:= s+' where no_kamar='+QuotedStr(aRoomNo);
              zqryRoomUpdate.SQL.Add(s);
              zqryRoomUpdate.ExecSQL;

              RebuildRoomList;

          except
            on E: Exception do
              MessageDlg(E.Message, mtError, [mbOK], 0);
          end;
        finally
          MessageDlg('Guest at Room ' + aRoomNo + ' has been checked out succesfully', mtInformation, [mbOK], 0);
        end;

      end else begin

      end;

    finally
      f.Free;
    end;

  end else begin

    fRoomNo := (advpopRoomMenu.PopupComponent as TAdvGlassButton).Caption;
    g:= TFrmFest.Create(Application);
    g.vNoKamar:= fRoomNo;
    g.btnErase.Visible:= True;
    g.btnIssue.Visible:= False;
    g.btnRead.Visible:= False;

    try

      if g.ShowModal=mrOk then begin

        fRoomNo := g.vNoKamar;
        qCeckTime.Close;
        qCeckTime.Open;
        vcharge:= qCeckTimecharge_time.AsFloat;
        try
          vno_reg:= DataModule1.GetNoRegByRoomNo(aRoomNo);
          vid_reg:= DataModule1.lrgntfldGetNoRegByRoomNoid_register.AsLargeInt;

          try

             zqryExec.Close;
             zqryExec.SQL.Clear;
             zqryExec.Params.Clear;
             s:= 'update transaksi.register_tamu set iscekout='+QuotedStr('1') +  ', dt_upd=';
             s:= s+'(select cast(current_timestamp as timestamp without time zone))';
             s:= s+' where no_register='+QuotedStr(vno_reg);
             zqryExec.SQL.Clear;
             zqryExec.SQL.Add(s);
             zqryExec.ExecSQL;

             zqryExec.Close;
             zqryExec.SQL.Clear;
             zqryExec.Params.Clear;
             s:= 'select dt_masuk, dt_keluar from transaksi.register_tamu_detail';
             s:= s+' where id_register='+IntToStr(vid_reg);
             zqryExec.SQL.Clear;
             zqryExec.SQL.Add(s);
             zqryExec.Open;

             vDateIn:= FormatDateTime('dd/mm/yyyy', zqryExec.FieldByName('dt_masuk').AsDateTime);
             vDateOut:= FormatDateTime('dd/mm/yyyy', Now);
             dt_in:= StrToDateTime(vDateIn);
             dt_ot:= StrToDateTime(vDateOut);
             qtyStay:= DaySpan(dt_in, dt_ot);

             //Charge late Ceck Out
             if vDateIn = vDateOut then begin

               zqryExec.Close;
               zqryExec.SQL.Clear;
               zqryExec.Params.Clear;
               s:= 'update transaksi.register_tamu_detail set charge_psn='+FloatToStr(0)+', ';
               s:= s+'ci_charge_psn='+FloatToStr(0)+', ';
               s:= s+'dt_keluar=';
               s:= s+'(select cast(current_timestamp as timestamp without time zone))';
               s:= s+' where id_register='+IntToStr(vid_reg);
               zqryExec.SQL.Clear;
               zqryExec.SQL.Add(s);
               zqryExec.ExecSQL;

             end else begin

               zqryExec.Close;
               zqryExec.SQL.Clear;
               zqryExec.Params.Clear;
               s:= 'update transaksi.register_tamu_detail set charge_psn='+FloatToStr(vcharge)+', ';
               s:= s+'qty='+FloatToStr(qtyStay)+',';
               s:= s+'dt_keluar=';
               s:= s+'(select cast(current_timestamp as timestamp without time zone))';
               s:= s+' where id_register='+IntToStr(vid_reg);
               zqryExec.SQL.Clear;
               zqryExec.SQL.Add(s);
               zqryExec.ExecSQL;

             end;

             //room update
              zqryRoomUpdate.Close;
              zqryRoomUpdate.SQL.Clear;
              zqryRoomUpdate.Params.Clear;
              s:= 'update master.mkamar set is_isi='+QuotedStr('3');
              s:= s+' where no_kamar='+QuotedStr(aRoomNo);
              zqryRoomUpdate.SQL.Add(s);
              zqryRoomUpdate.ExecSQL;

              RebuildRoomList;

          except
                on E: Exception do
                  MessageDlg(E.Message, mtError, [mbOK], 0);
          end;
        finally
          MessageDlg('Guest at Room ' + aRoomNo + ' has been checked out succesfully', mtInformation, [mbOK], 0);
        end;

      end else begin


      end;

    finally
      g.Free;
    end;

  end;

end;

procedure TfrmDash.CheckOut1Click(Sender: TObject);
begin
  if DataModule1.IsRoomOccupied((advpopRoomMenu.PopupComponent as TAdvGlassButton).Caption) then
     Checkout((advpopRoomMenu.PopupComponent as TAdvGlassButton).Caption)
  else
     MessageDlg('Room is empty!', mtError, [mbOK], 0);
end;

procedure TfrmDash.ExtraBed1Click(Sender: TObject);
var
  f: TfrmExtendStay;
  RoomNr: string;
begin

  RoomNr := (advpopRoomMenu.PopupComponent as TAdvGlassButton).Caption;

  if not DataModule1.IsRoomOccupied(RoomNr) then begin
    MessageDlg('This room is not occupied!', mtError, [mbOK], 0);
    Exit;
  end;

 f:= TfrmExtendStay.Create(Application);
 f.vNoKamar:= RoomNr;

  try

    if f.ShowModal= mrOk then begin
    end;

  finally
    f.Free;
  end;

end;

procedure TfrmDash.ExtraBed2Click(Sender: TObject);
var
  f: TfrmExtraBed;
  RoomNr: string;
begin

  RoomNr := (advpopRoomMenu.PopupComponent as TAdvGlassButton).Caption;

  if not DataModule1.IsRoomOccupied(RoomNr) then begin
    MessageDlg('This room is not occupied!', mtError, [mbOK], 0);
    Exit;
  end;

 f:= TfrmExtraBed.Create(Application);
 f.vNoKamar:= RoomNr;

  try

    if f.ShowModal= mrOk then begin
    end;

  finally
    f.Free;
  end;

end;

procedure TfrmDash.Fest1Click(Sender: TObject);
var
  f : TFrmFest;
  i: Integer;
  fRoomNo: string;
begin

  if DataModule1.IsRoomOccupied((advpopRoomMenu.PopupComponent as TAdvGlassButton).Caption) then begin

    fRoomNo := (advpopRoomMenu.PopupComponent as TAdvGlassButton).Caption;
    f:= TFrmFest.Create(Application);
    f.vNoKamar:= fRoomNo;
    f.btnErase.Visible:= False;

    try
      if f.ShowModal= mrOk then begin

      end;

    finally
      f.Free;
    end;

  end else
    MessageDlg('Room is empty!', mtError, [mbOK], 0);

end;
procedure TfrmDash.FormActivate(Sender: TObject);
begin
  GenerateRoomDisplayList;
end;

procedure TfrmDash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmDash.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= (zqryDisplay.State=dsInactive) or (zqryDisplay.State=dsBrowse);
  if not CanClose then
    MessageDlg('Please save data or cancel editing first!', mtError, [mbOK], 0);
end;

procedure TfrmDash.FormShow(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\IMAGES\bg_main.JPG');
  //Image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\IMAGES\bg_main.JPG');
  zqryDisplay.Active := True;
  UpdateCrudControls;
  if DataModule1.type_encoder= 'adel' then begin
     lblPort.Visible:= True;
     advglPort.Visible:= True;
     advglPort.Caption:= DataModule1.Aport;
  end else begin
     lblPort.Visible:= False;
     advglPort.Visible:= False;
     advglPort.Caption:= '';
  end;

end;

procedure TfrmDash.ClearRoomList;
var
  I: Integer;
  anObj: TObject;
begin

  if Rooms <> nil then begin
    for I := Rooms.RoomDisplayList.Count -1 downto 0 do begin
      anObj := Rooms.RoomDisplayList.Objects[i] as TObject;
      FreeAndNil(anObj);
    end;
  end;

end;


procedure TfrmDash.GenerateRoomDisplayList;
var
  i: Integer;
  aRoom: TRoom;
begin

  zqryRooms.Close;
  zqryRooms.Open;
  zqryRooms.First;

  Rooms := TRooms.Create;

  for I := 0 to zqryRooms.RecordCount -1 do begin
    aRoom := TRoom.Create;
    aRoom.RoomData.Floor := zqryRooms.FieldByName('id_parent').AsString;
    aRoom.RoomData.RoomNr := zqryRooms.FieldByName('no_kamar').AsString;
    aRoom.RoomData.RoomTypeId := zqryRooms.FieldByName('id_tp_kamar').AsInteger;
    aRoom.RoomData.RoomRate := zqryRooms.FieldByName('tarif').AsFloat;
    Rooms.RoomList.AddObject(aRoom.RoomData.RoomNr, aRoom);
    aRoom.RoomData.IsOccupied := zqryRooms.FieldByName('is_isi').AsInteger;
    zqryRooms.Next;
  end;

  // generate display button
  Rooms.GenerateDisplayRoom(pnlRoomsPanel);

  for I := 0 to Rooms.RoomDisplayList.Count -1 do begin
    (Rooms.RoomDisplayList.Objects[i] as TAdvGlassButton).OnDblClick := CustPnlOnClick;
    (Rooms.RoomDisplayList.Objects[i] as TAdvGlassButton).PopupMenu := advpopRoomMenu;
  end;

end;

procedure TfrmDash.CustPnlOnClick(Sender: TObject);
var
  fRoomNo: string;
  f: TRegTamuFrm;
begin
 f:= TRegTamuFrm.Create(Application);
 fRoomNo := (Sender as TAdvGlassButton).Caption;

 f.vNoKamar:= fRoomNo;

 f.EditModeOnly := DataModule1.IsRoomOccupied(fRoomNo);

 f.frmDash := Self as TForm;
 f.btnPrint.Visible:= True;

  try
    if f.ShowModal= mrOk then begin

    end;

  finally
    f.Free;
  end;

end;

procedure TfrmDash.glbtnAddNewClick(Sender: TObject);
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

procedure TfrmDash.glbtnCLoseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDash.glbtnCrudCancelClick(Sender: TObject);
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

procedure TfrmDash.glbtnCrudSaveClick(Sender: TObject);
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

procedure TfrmDash.glbtnDelClick(Sender: TObject);
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

procedure TfrmDash.glbtnEditClick(Sender: TObject);
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

end;

procedure TfrmDash.glbtnRefreshClick(Sender: TObject);
begin

  if zqryDisplay.State<>dsBrowse then
    Exit;

  try
    zqryDisplay.Active := True;
//    zqryDisplay.Refresh;
  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;

  UpdateCrudControls;

end;

procedure TfrmDash.MaintenenceClick(Sender: TObject);
var
RoomNr, s: string;
begin

  RoomNr := (advpopRoomMenu.PopupComponent as TAdvGlassButton).Caption;

  if DataModule1.IsRoomOccupied(RoomNr) then begin
     MessageDlg('Kamar Sedang Terisi !', mtError, [mbOK], 0);
  end else begin

    try
        // Room update
        zqryRoomUpdate.Close;
        zqryRoomUpdate.SQL.Clear;
        zqryRoomUpdate.Params.Clear;
        s:= 'update master.mkamar set is_isi='+QuotedStr('2');
        s:= s+' where no_kamar='+QuotedStr(RoomNr);
        zqryRoomUpdate.SQL.Add(s);
        zqryRoomUpdate.ExecSQL;

        RebuildRoomList;
    except
      on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
    end;
  end;

end;

procedure TfrmDash.MovingRoom1Click(Sender: TObject);
var
  f: TfrmRoomMoving;
  RoomNr: string;
begin

  RoomNr := (advpopRoomMenu.PopupComponent as TAdvGlassButton).Caption;

  if not DataModule1.IsRoomOccupied(RoomNr) then begin
    MessageDlg('This room is not occupied!', mtError, [mbOK], 0);
    Exit;
  end;

 f:= TfrmRoomMoving.Create(Application);
 f.vNoKamar:= RoomNr;
 f.frmDash := Self as TForm;

  try

    if f.ShowModal= mrOk then begin
    end;

  finally
    f.Free;
  end;

end;

procedure TfrmDash.OnRoomClick(Sender: TObject);
begin
  ShowMessage((Sender as TAdvGlassButton).Caption);
end;

procedure TfrmDash.RebuildRoomList;
begin
  ClearRoomList;
  GenerateRoomDisplayList;
end;

procedure TfrmDash.Refresh1Click(Sender: TObject);
begin
  RebuildRoomList;
  //GenerateRoomDisplayList;
end;

procedure TfrmDash.SetReady1Click(Sender: TObject);
var
RoomNr, s: string;
begin
  RoomNr := (advpopRoomMenu.PopupComponent as TAdvGlassButton).Caption;

  if DataModule1.IsRoomOccupied(RoomNr) then begin
     MessageDlg('Kamar Sedang Terisi !', mtError, [mbOK], 0);
  end else begin

    try
        // Room update
        zqryRoomUpdate.Close;
        zqryRoomUpdate.SQL.Clear;
        zqryRoomUpdate.Params.Clear;
        s:= 'update master.mkamar set is_isi='+QuotedStr('0');
        s:= s+' where no_kamar='+QuotedStr(RoomNr);
        zqryRoomUpdate.SQL.Add(s);
        zqryRoomUpdate.ExecSQL;

        RebuildRoomList;
    except
      on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
    end;
  end;

end;

procedure TfrmDash.UpdateCrudControls;
begin

  case zqryDisplay.State of
    dsInactive, dsBrowse: begin
      //pnlCrudAct.Visible := False;
      //pnlCrudCtrl.Visible := True;
      //pnlCrudCtrl.Left := 10;

    end;

    dsEdit, dsInsert: begin
//      pnlCrudAct.Visible := True;
//      pnlCrudAct.Left := 10;
//      pnlCrudCtrl.Visible := False;

    end;

  end;

end;


procedure TfrmDash.VerifikasiBillingTamu1Click(Sender: TObject);
var
  f: TfrmVerifikasi;
  RoomNr, NoReg, NamaTamu: string;
begin

  RoomNr := (advpopRoomMenu.PopupComponent as TAdvGlassButton).Caption;
  NoReg:= DataModule1.GetNoRegByRoomNo(RoomNr);
  NamaTamu:= DataModule1.GetNamaTamuByRoomNo(RoomNr);

  if not DataModule1.IsRoomOccupied(RoomNr) then begin
    MessageDlg('This room is not occupied!', mtError, [mbOK], 0);
    Exit;
  end;

 f:= TfrmVerifikasi.Create(Application);
 f.vNoKamar:= RoomNr;
 f.vNoReg:= NoReg;
 f.vNamaTamu:= NamaTamu;

  try

    if f.ShowModal= mrOk then begin
    end;

  finally
    f.Free;
  end;

end;

procedure TfrmDash.zqryDisplayBeforePost(DataSet: TDataSet);
begin
{
  if strngfldDisplayno_kamar.IsNull or (Trim(strngfldDisplayno_kamar.AsString)='') then
    raise Exception.Create('ROOM NUMBER Must Have Value !')
  else
  if lrgntfldDisplayid_tp_kamar.IsNull or (Trim(lrgntfldDisplayid_tp_kamar.AsString)='') then
    raise Exception.Create('ROOM TYPE Must Have Value !');

  if zqryDisplay.State=dsInsert then begin
//    Masterusr_ins.AsString:= DM.UserConnect;
//    Masterusr_upd.AsString:= DM.UserConnect;
  end else if zqryDisplay.State=dsEdit then
//    Masterusr_upd.AsString:= DM.UserConnect;
}
end;

procedure TfrmDash.zqryDisplayNewRecord(DataSet: TDataSet);
begin
{
  strngfldDisplayno_kamar.AsString:= '-';
  fltfldDisplaytarif.AsFloat:= 0;
  intgrfldDisplaylvl.AsInteger:= 0;
  strngfldDisplayisdetail.AsString:= '0';
  strngfldDisplayis_isi.AsString:= '0';
  strngfldDisplaytotal_bed.AsString:= '0';
  }
end;

end.

