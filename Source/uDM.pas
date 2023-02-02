unit uDM;

interface

uses
  System.SysUtils, System.Classes, Controls, ZAbstractConnection, ZConnection, cxStyles,
  cxClasses, ZDataset, Data.DB, ZAbstractRODataset, Vcl.Dialogs, Vcl.Forms,
  ZAbstractDataset;

type

  TDept = (tdResto, tdHouseKeeping, tdPool);

  TDataModule1 = class(TDataModule)
    zconHotel: TZConnection;
    cxstylerepGlobal: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    cxstylSel: TcxStyle;
    vSysDate: TZReadOnlyQuery;
    vSysDatedt_server: TDateTimeField;
    zroqryGetNoRegByRoomNo: TZReadOnlyQuery;
    strngfldGetNoRegByRoomNono_register: TStringField;
    lrgntfldGetNoRegByRoomNoid_register: TLargeintField;
    strngfldGetNoRegByRoomNono_kamar: TStringField;
    zqryExec: TZQuery;
    zqryReq: TZQuery;
    qryShift: TZQuery;
    intgrfldShiftshift_server: TIntegerField;
    qPerusahaan: TZReadOnlyQuery;
    strngfldPerusahaanperusahaan: TStringField;
    strngfldPerusahaanalamat: TStringField;
    strngfldPerusahaankota: TStringField;
    strngfldPerusahaantelepon: TStringField;
    strngfldPerusahaanemail: TStringField;
    tmfldPerusahaancek_out_time: TTimeField;
    zqryRoomNfo: TZQuery;
    vUser: TZReadOnlyQuery;
    vUserMenu: TZReadOnlyQuery;
    strngfldUserMenuvuser: TStringField;
    strngfldUserMenumenu_name: TStringField;
    strngfldUserMenumenu_caption: TStringField;
    intgrfldUserMenutag: TIntegerField;
    strngfldUserMenuisbrowse: TStringField;
    strngfldUserMenuisinsert: TStringField;
    strngfldUserMenuisedit: TStringField;
    strngfldUserMenuisdelete: TStringField;
    vAdmin: TZReadOnlyQuery;
    qAccess: TZReadOnlyQuery;
    strngfldAccessisbrowse: TStringField;
    strngfldAccessisinsert: TStringField;
    strngfldAccessisedit: TStringField;
    strngfldAccessisdelete: TStringField;
    strngfldAccessisprint: TStringField;
    strngfldAccessisexport: TStringField;
    zqryTrans: TZQuery;
    qPasswd: TZQuery;
    strngfldGetNoRegByRoomNonama_tamu: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    svr_host,
    db_name, db_usr_name, db_usr_pwd, encoder, adel_port, adel_server : string;
    svr_port : Integer;
  public
    { Public declarations }
    isLogin, isSuperUser, isCekStok : Boolean;
    UserConnect, pwdConnect, siteOffice, Host_name, type_encoder, Aport, Aserver,
    pg_server, pg_db, pg_user, pg_pwd : string;
    pg_port : Integer;

    procedure LoadDbNetSetting(const fName: string);
    procedure PrepareQuery(qry: TZQuery);
    procedure UpdateMenu;
    function Authenticate_User(var quitnow: Boolean): Boolean;
    function ChangePassword: Boolean;
    procedure GetAccessRights(tag: integer;
                              var isbrowse, isinsert, isedit, isdelete, isprint,
                                  isexport: Boolean);
    function CheckSuperUser(usr, pwd: string): Boolean;
    procedure OpenQuery(qry: TZQuery; sqlstr: string);
    function ExecQuery(qry: TZQuery; sqlstr: string): Integer;
    function GetNoRegByRoomNo(vNoKamar: string): string;
    function GetNamaTamuByRoomNo(vNoKamar: string): string;
    function IsLastRoomGuestCheckedOut(vNoKamar: string): Boolean;
    procedure UpdateRoomStatus(proom,pstatus:String);
    function IsRoomOccupied(vNoKamar: string): Boolean;
    function IsRoomNotReady(vNoKamar: string): Boolean;
    procedure SetRoomVacancyStatus(RoomNr: string; isOccupied: Boolean);
    procedure SetNewRoom(idRegis, RoomNr: string);
    function UpdateCheckoutDate(idRegis:string; CheckinDate, NewCoDate: TDateTime; var StayDays: string): Boolean;
    function GetRoomTypeByRoomNr(aRoomNr: string): string;
    procedure StartTransaction;
    procedure CommitTransaction;
    procedure RollbackTransaction;
  end;

var
  DataModule1: TDataModule1;

implementation

uses
  uUserLogin, MD5, uMain, Vcl.Menus, IniFiles, uIniFilesProcs, uChangePass, uTools;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule1.StartTransaction;
begin
  zqryTrans.SQL.Clear;
  zqryTrans.SQL.Add('BEGIN');
  zqryTrans.ExecSQL
end;

procedure TDataModule1.CommitTransaction;
begin
  zqryTrans.SQL.Clear;
  zqryTrans.SQL.Add('COMMIT');
  zqryTrans.ExecSQL
end;


procedure TDataModule1.RollbackTransaction;
begin
  zqryTrans.SQL.Clear;
  zqryTrans.SQL.Add('ROLLBACK');
  zqryTrans.ExecSQL
end;

procedure TDataModule1.LoadDbNetSetting(const fName: string);
var
  IniF: TIniFile;
  s: string;
  OpsSuccess: Boolean;
begin

  OpsSuccess := False;

  s := ExtractFilePath(ParamStr(0));
  IniF := TIniFile.Create(s + fName);

  if (FileExists(s + fName)) then begin
    svr_host := INIFReadString(IniF, 'Database', 'server_host',  '127.0.0.1');
    svr_port := INIFReadInteger(IniF, 'Database', 'server_port',  1927);
    db_name := INIFReadString(IniF, 'Database', 'db_name',  'db_hmis');
    db_usr_name := INIFReadString(IniF, 'Database', 'db_usr_name',  'postgres');
    db_usr_pwd := INIFReadString(IniF, 'Database', 'db_usr_passwd',  '');
    encoder :=  INIFReadString(IniF, 'Database', 'encoder',  '');
    adel_port :=  INIFReadString(IniF, 'Database', 'adel_port',  '');
    adel_server := INIFReadString(IniF, 'Database', 'adel_server',  '');

    type_encoder:= encoder;
    Host_name := svr_host;
    Aport:= adel_port;
    Aserver:= adel_server;

    pg_server:= svr_host;
    pg_db:= db_name;
    pg_port:= svr_port;
    pg_user:= db_usr_name;
    pg_pwd:= db_usr_pwd;

    OpsSuccess := True;
  end
  else begin
    MessageDlg('Setting file missing. Application will be shut down!', mtError, [mbOK], 0);
  end;

  Inif.Free;

  if not OpsSuccess then Application.Terminate;

end;

procedure TDataModule1.PrepareQuery(qry: TZQuery);
begin
  qry.Close;
  qry.SQL.Clear;
  qry.Params.Clear;
end;

procedure TDataModule1.UpdateMenu;
var i: Integer;
    mi: TMenuItem;
begin

  if not isSuperUser then // Ordinary User get it appropriately
    while not vUserMenu.eof do begin
      with frmMain do
        for i:=0 to ComponentCount-1 do
          if Components[i] is TMenuItem then begin
            mi:= Components[i] as TMenuItem;
            if (mi.Name=strngfldUserMenumenu_name.AsString) and (mi.Tag=intgrfldUserMenutag.AsInteger) then
            begin
              mi.Visible:= strngfldUserMenuisbrowse.AsString='1';
              Break
            end;
          end;
      vUserMenu.next;
    end
  else begin // Super User get it all
    with frmMain do
      for i:=0 to ComponentCount-1 do
        if Components[i] is TMenuItem then
          (Components[i] as TMenuItem).Visible:= True;
  end

end;

function TDataModule1.ChangePassword: Boolean;
var _oldpwd, _newpwd, _confirmpwd: string;
begin
  Result:= False;
  with TfrmChangePass.Create(Application) do
  try
    lblHeaderComment.Caption:= 'Change Password for User ' + UserConnect;
    if ShowModal=mrOK then begin
      _oldpwd:= Trim(edtOldPassword.Text);
      _newpwd:= Trim(edtNewPassword.Text);
      _confirmpwd:= Trim(edtConfirmPassword.Text);
      try
        if not isSuperUser then begin
          qPasswd.Close;
          qPasswd.SQL.Clear;
          qPasswd.Params.Clear;
          qPasswd.SQL.Add('select passwd from master.vuser where lower(vuser)=lower(:user)');
          qPasswd.Params.ParseSQL(qPasswd.SQL.Text, True);
          qPasswd.Params.ParamByName('user').AsString:= UserConnect;
          qPasswd.Open;
          if qPasswd.RecordCount=0 then
            raise Exception.Create('User not found !');
          if MD5Print(MD5String(_oldpwd))<>qPasswd.FieldByName('passwd').AsString then
            raise Exception.Create('Old password invalid !');
          if _newpwd<>_confirmpwd then
            raise Exception.Create('New password does not match with confirm password !');
          qPasswd.Close;
          qPasswd.SQL.Clear;
          qPasswd.Params.Clear;
          qPasswd.SQL.Add('update master.vuser set passwd=:pwd where lower(vuser)=lower(:user)');
          qPasswd.Params.ParseSQL(qPasswd.SQL.Text, True);
          qPasswd.Params.ParamByName('user').AsString:= UserConnect;
          qPasswd.Params.ParamByName('pwd').AsString:= MD5Print(MD5String(_newpwd));
          qPasswd.ExecSQL
        end else begin // change superuser password
          qPasswd.Close;
          qPasswd.SQL.Clear;
          qPasswd.Params.Clear;
          qPasswd.SQL.Add('select vpwd_admin from master.vadmin where lower(vusr_admin)=lower(:user)');
          qPasswd.Params.ParseSQL(qPasswd.SQL.Text, True);
          qPasswd.Params.ParamByName('user').AsString:= UserConnect;
          qPasswd.Open;
          if qPasswd.RecordCount=0 then
            raise Exception.Create('User not found !');
          if MD5Print(MD5String(_oldpwd))<>qPasswd.FieldByName('vpwd_admin').AsString then
            raise Exception.Create('Old password invalid !');
          if _newpwd<>_confirmpwd then
            raise Exception.Create('New password does not match with confirm password !');
          qPasswd.Close;
          qPasswd.SQL.Clear;
          qPasswd.Params.Clear;
          qPasswd.SQL.Add('update master.vadmin set vpwd_admin=:pwd where lower(vusr_admin)=lower(:user)');
          qPasswd.Params.ParseSQL(qPasswd.SQL.Text, True);
          qPasswd.Params.ParamByName('user').AsString:= UserConnect;
          qPasswd.Params.ParamByName('pwd').AsString:= MD5Print(MD5String(_newpwd));
          qPasswd.ExecSQL
        end;
        Result:= True;
        MessageDlg('Password for user '+UserConnect+' has been successfully changed.', mtInformation, [mbOK], 0);
      except
        on E: Exception do
          MessageDlg('Error has been encountered!', mtError, [mbOK], 0);
      end;
    end
  finally
    Free
  end
end;

function TDataModule1.CheckSuperUser(usr, pwd: string): Boolean;
var s: string;
begin
  Result:= False;
  isSuperUser:= False;
//  s:= MD5Print(MD5String(pwd));
  //pwd:= 'C12E01F2A13FF5587E1E9E4AEDB8242D';
  try
    vAdmin.Close;
    vAdmin.SQL.Clear;
    vAdmin.Params.Clear;
    vAdmin.SQL.Add('select vusr_admin from master.vadmin where lower(vusr_admin)=lower(:usr) and vpwd_admin=:pwd');
    vAdmin.Params.ParseSQL(vAdmin.SQL.Text, True);
    vAdmin.ParamByName('usr').Value:=usr;
    vAdmin.ParamByName('pwd').Value:=MD5Print(MD5String(pwd));
    vAdmin.Open;
    if vAdmin.RecordCount=1 then
      isSuperUser:= True;
    Result:= True;
  except
    on E: Exception do
      MessageDlg('Error has been encountered!', mtError, [mbOK], 0);
  end
end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  LoadDbNetSetting('setting.ini');

  zconHotel.HostName := svr_host;
  zconHotel.Port := svr_port;
  zconHotel.Database := db_name;
  zconHotel.User := db_usr_name;
  zconHotel.Password := db_usr_pwd;

  zconHotel.Connect;
end;

function TDataModule1.Authenticate_User(var quitnow: Boolean): Boolean;
var
  s, pwdmd5 : string;
begin
  isLogin:= False;
  Result:= isLogin;
  isSuperUser:= False;
  userConnect:='';
  pwdConnect:='';

  with TfrmUserLogin.Create(Application) do
  try

    if ShowModal=mrOK then begin
      UserConnect:= Trim(cxedtUsername.Text);
      pwdConnect:= Trim(cxedtPassword.Text);
      pwdmd5 := MD5Print(MD5String(pwdConnect));
//      pwdmd5 := 'E72F4545EB68C96C754F91FC01573517';
      try
        if zconHotel.Connected then begin
          if CheckSuperUser(UserConnect, pwdConnect) then begin
            if not isSuperUser then begin
              vUserMenu.Close;
              vUser.Close;
              vuser.SQL.Clear;
              vuser.Params.Clear;
//              vuser.SQL.Add('select vuser as user, full_name, passwd, cast(current_timestamp as timestamp without time zone) as sysdate, vuser||'+QuotedStr(', ')+'||to_char(cast(current_timestamp as timestamp without time zone),'+QuotedStr('dd Mon yyyy hh24:mi:ss')+') as user_str from master.vuser');
//              vuser.SQL.Add('where lower(vuser)=lower(:usr) and passwd=:pwd');
              s := 'select vuser as user, full_name, passwd, cast(current_timestamp as timestamp without time zone) as sysdate, vuser||'+QuotedStr(', ')+'||to_char(cast(current_timestamp as timestamp without time zone),'+QuotedStr('dd Mon yyyy hh24:mi:ss')+') as user_str from master.vuser ';
              s := s + 'where lower(vuser)=lower(:usr) and passwd=:pwd';
              vUser.SQL.Add(s);
              vuser.Params.ParseSQL(vUser.SQL.Text, True);
              vuser.ParamByName('usr').Value:=userConnect;
              vuser.ParamByName('pwd').Value:=pwdmd5;//{'E72F4545EB68C96C754F91FC01573517';//} MD5Print(MD5String(pwdConnect));
              s := vUser.SQL.Text;
              vUser.Open;
              if vUser.RecordCount=0 then begin

                if not QuitLogin then begin
                  isLogin:= False;
                  Result:= isLogin;
                  Exit;
                end;

              end;
//              if vUser.RecordCount=0 then
//                raise Exception.Create('User tidak ditemukan/password salah !');
              vUserMenu.Params.ParamByName('vuser1').Value:= vUser.FieldByName('user').AsString;
              vUserMenu.Open;
            end else begin
              if isSuperUser then
              else begin
                isLogin:= False;
                Result:= isLogin;
                Exit;
//                raise
//                  Exception.Create('User tidak ditemukan/password salah !');
              end;
            end;
            UpdateMenu;
          end
        end;
        isLogin:= True;
        Result:= isLogin;

        quitnow := QuitLogin;

      except
        on E: Exception do
          MessageDlg('Error has been encountered!', mtError, [mbOK], 0);
      end
    end

  finally
    Free
  end

end;

procedure TDataModule1.GetAccessRights(tag: integer;
                              var isbrowse, isinsert, isedit, isdelete, isprint,
                                  isexport: Boolean);
begin
  isbrowse:= False;
  isinsert:= False;
  isedit:= False;
  isdelete:= False;
  isprint:= False;
  isexport:= False;
  try
    qAccess.Close;
    qAccess.Params.ParamByName('usr').AsString:= DataModule1.UserConnect;
    qAccess.Params.ParamByName('tag').AsInteger:= tag;
    qAccess.Open;
    isbrowse:= isSuperUser or (strngfldAccessisbrowse.AsString='1');
    isinsert:= isSuperUser or (strngfldAccessisinsert.AsString='1');
    isedit:= isSuperUser or (strngfldAccessisedit.AsString='1');
    isdelete:= isSuperUser or (strngfldAccessisdelete.AsString='1');
    isprint:= isSuperUser or (strngfldAccessisprint.AsString='1');
    isexport:= isSuperUser or (strngfldAccessisexport.AsString='1');
  except
  end;
end;

procedure TDataModule1.SetNewRoom(idRegis, RoomNr: string);
var
  s: string;
begin

    try
      zqryExec.Close;
      zqryExec.SQL.Clear;
      zqryExec.Params.Clear;
      s:= 'update transaksi.register_tamu_detail set no_kamar='+QuotedStr(RoomNr);
      s:= s+' where id_register='+QuotedStr(idRegis);
      zqryExec.SQL.Add(s);
      zqryExec.ExecSQL;
    except
      on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
    end;

end;

function TDataModule1.UpdateCheckoutDate(idRegis:string; CheckinDate, NewCoDate: TDateTime; var StayDays: string): Boolean;
var
  adt, dtf, s: string;
begin

    result := False;

    try
      zqryExec.Close;
      zqryExec.SQL.Clear;
      zqryExec.Params.Clear;

//      adt:= QuotedStr(FormatDateTime('dd/mm/yyyy', NewCoDate));
//      dtf:= QuotedStr('dd/mm/yyyy');

      adt:= QuotedStr(FormatDateTime('c', NewCoDate));
      dtf:= QuotedStr('dd/mm/yyyy');
      StayDays := GetStrDaysBetweenDates(CheckinDate, NewCoDate);

      s:= 'update transaksi.register_tamu_detail set dt_keluar= to_timestamp('+ adt + ',' + dtf + ')';
      s := s + ', qty = ' + StayDays;
      s:= s+' where id_register='+QuotedStr(idRegis);
      zqryExec.SQL.Add(s);
      zqryExec.ExecSQL;
      Result := True;
    except
      on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
    end;

end;

procedure TDataModule1.SetRoomVacancyStatus(RoomNr: string; isOccupied: Boolean);
var
  s, sval: string;
begin

    try
      zqryExec.Close;
      zqryExec.SQL.Clear;
      zqryExec.Params.Clear;

      if isOccupied then
        sval := '1'
      else
        sval := '0';

      s:= 'update master.mkamar set is_isi='+QuotedStr(sval);
      s:= s+' where no_kamar='+QuotedStr(RoomNr);
      zqryExec.SQL.Add(s);
      zqryExec.ExecSQL;
    except
      on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
    end;

//  (frmDash as TfrmDash).RebuildRoomList;

end;

procedure TDataModule1.OpenQuery(qry: TZQuery; sqlstr: string);
begin
  qry.SQL.Add(sqlstr);
  qry.Open;
end;

function TDataModule1.ExecQuery(qry: TZQuery; sqlstr: string): Integer;
begin
  qry.SQL.Add(sqlstr);
  qry.ExecSQL;
  Result:= qry.RowsAffected
end;

function TDataModule1.GetNamaTamuByRoomNo(vNoKamar: string): string;
begin

  try

     zroqryGetNoRegByRoomNo.Close;
     zroqryGetNoRegByRoomNo.Params.ParamByName('pno_room').AsString:= vNoKamar;
     zroqryGetNoRegByRoomNo.Open;

     Result := strngfldGetNoRegByRoomNonama_tamu.Value;

  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;

end;

function TDataModule1.GetNoRegByRoomNo(vNoKamar: string): string;
begin

  try

     zroqryGetNoRegByRoomNo.Close;
     zroqryGetNoRegByRoomNo.Params.ParamByName('pno_room').AsString:= vNoKamar;
     zroqryGetNoRegByRoomNo.Open;

     Result := strngfldGetNoRegByRoomNono_register.Value;

  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;

end;

function TDataModule1.GetRoomTypeByRoomNr(aRoomNr: string): string;
var
  s: string;
begin

  Result := 'unspecified';

  try
     zqryExec.Close;
     zqryExec.SQL.Clear;

     s := 'select a.no_kamar, b.tp_kamar as tipe ' +
          'from master.mkamar a ' +
          'left join master.tipe_kamar b on b.id_tp_kamar=a.id_tp_kamar ' +
          'where a.no_kamar= ' + QuotedStr(aRoomNr) +
          'order by a.no_kamar asc';

     zqryExec.SQL.Text := s;
     zqryExec.Open;

     Result := Trim(zqryExec.FieldByName('tipe').AsString);

   except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
   end;

end;

function TDataModule1.IsLastRoomGuestCheckedOut(vNoKamar: string): Boolean;
var
  noReg: string;
begin

  Result := False;

  noReg := GetNoRegByRoomNo(vNoKamar);

  try
     zqryExec.Close;
     zqryExec.SQL.Clear;
     zqryExec.SQL.Add('SELECT * from transaksi.register_tamu WHERE no_register = ' + QuotedStr(noReg));
     zqryExec.Open;

     if Trim(zqryReq.FieldByName('isclosed').AsString) = '1' then
       Result := True

   except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
   end;

end;

function TDataModule1.IsRoomOccupied(vNoKamar: string): Boolean;
var
  s: string;
begin

  Result := False;

  s := 'SELECT * FROM master.mkamar WHERE no_kamar = ' + quotedStr(vNoKamar);
  zqryRoomNfo.Close;
  zqryRoomNfo.SQL.Text := s;
  zqryRoomNfo.Open;

  if zqryRoomNfo.RecordCount > 0 then begin
    if zqryRoomNfo.FieldByName('is_isi').AsString = '1' then
      Result := True;
  end;

end;

function TDataModule1.IsRoomNotReady(vNoKamar: string): Boolean;
var
  s: string;
begin

  Result := False;

  s := 'SELECT * FROM master.mkamar WHERE no_kamar = ' + quotedStr(vNoKamar);
  zqryRoomNfo.Close;
  zqryRoomNfo.SQL.Text := s;
  zqryRoomNfo.Open;

  if zqryRoomNfo.RecordCount > 0 then begin
    if (zqryRoomNfo.FieldByName('is_isi').AsString = '2') or (zqryRoomNfo.FieldByName('is_isi').AsString = '3') then
      Result := True;
  end;

end;

procedure TDataModule1.UpdateRoomStatus(proom,pstatus:String);  // looks like obsolete....
var s,vKamar,vFloor: String;
begin

  vKamar:= 'kamar_'+copy(proom,2,2);
  vFloor:= copy(proom,1,1);

  s:= 'UPDATE transaksi.status_kamar ';
  s:= s+' SET '+vKamar+'='+QuotedStr(trim(proom+pstatus));
  s:= s+' WHERE id_lantai='+QuotedStr(vFloor);

  try
    PrepareQuery(zqryExec);
    ExecQuery(zqryExec,s);
  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;

end;

end.

