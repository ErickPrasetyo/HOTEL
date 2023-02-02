unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, AdvOfficeTabSet,
  AdvOfficeTabSetStylers, Vcl.ExtCtrls, AdvOfficeStatusBar, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    mmMain: TMainMenu;
    Application1: TMenuItem;
    Exit1: TMenuItem;
    Master1: TMenuItem;
    RoomData1: TMenuItem;
    advofficetabsetMain: TAdvOfficeMDITabSet;
    advofftabsetstylerMain: TAdvOfficeTabSetOfficeStyler;
    GuestData1: TMenuItem;
    FloorData1: TMenuItem;
    RoomType1: TMenuItem;
    User1: TMenuItem;
    Dashboard1: TMenuItem;
    GuestBilling1: TMenuItem;
    Image1: TImage;
    Restaurant1: TMenuItem;
    ItemRestaurant1: TMenuItem;
    NotaRestaurant2: TMenuItem;
    RekapPendapatanPerShift1: TMenuItem;
    HouseKeeping1: TMenuItem;
    ItemHouseKeeping1: TMenuItem;
    NotaHouseKeeping1: TMenuItem;
    KolamRenang1: TMenuItem;
    PenjualanTiket1: TMenuItem;
    RekapPenjualan1: TMenuItem;
    ItemKolamRenang1: TMenuItem;
    RekapNotaperShift1: TMenuItem;
    Laporan1: TMenuItem;
    LaporanRegistrasiTamu1: TMenuItem;
    RekapBatalRegistrasi1: TMenuItem;
    RekapPendapatanKamar1: TMenuItem;
    RekapPendapatanRestaurant1: TMenuItem;
    RekapPendapatanHouseKeeping1: TMenuItem;
    RekapPendapatanKolamRenang1: TMenuItem;
    PostingControl1: TMenuItem;
    PostingControl2: TMenuItem;
    PostingControl3: TMenuItem;
    PostingControl4: TMenuItem;
    User2: TMenuItem;
    Login1: TMenuItem;
    ChangePassword1: TMenuItem;
    NotaKredit1: TMenuItem;
    UserManagement1: TMenuItem;
    JenisReservasi1: TMenuItem;
    KonekUlang1: TMenuItem;
    StatusBar: TAdvOfficeStatusBar;
    Timer1: TTimer;
    zqryExec: TZQuery;
    procedure Exit1Click(Sender: TObject);
    procedure RoomData1Click(Sender: TObject);
    procedure GuestData1Click(Sender: TObject);
    procedure FloorData1Click(Sender: TObject);
    procedure RoomType1Click(Sender: TObject);
    procedure Dashboard1Click(Sender: TObject);
    procedure GuestBilling1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ItemRestaurant1Click(Sender: TObject);
    procedure ItemHouseKeeping1Click(Sender: TObject);
    procedure ItemKolamRenang1Click(Sender: TObject);
    procedure NotaRestaurant2Click(Sender: TObject);
    procedure NotaHouseKeeping1Click(Sender: TObject);
    procedure PenjualanTiket1Click(Sender: TObject);
    procedure RekapPendapatanRestaurant1Click(Sender: TObject);
    procedure RekapPendapatanHouseKeeping1Click(Sender: TObject);
    procedure RekapPendapatanKolamRenang1Click(Sender: TObject);
    procedure LaporanRegistrasiTamu1Click(Sender: TObject);
    procedure RekapBatalRegistrasi1Click(Sender: TObject);
    procedure RekapPendapatanKamar1Click(Sender: TObject);
    procedure PostingControl2Click(Sender: TObject);
    procedure PostingControl3Click(Sender: TObject);
    procedure PostingControl4Click(Sender: TObject);
    procedure PostingControl1Click(Sender: TObject);
    procedure RekapPendapatanPerShift1Click(Sender: TObject);
    procedure RekapNotaperShift1Click(Sender: TObject);
    procedure RekapPenjualan1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Login1Click(Sender: TObject);
    procedure NotaKredit1Click(Sender: TObject);
    procedure UserManagement1Click(Sender: TObject);
    procedure ChangePassword1Click(Sender: TObject);
    procedure JenisReservasi1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure KonekUlang1Click(Sender: TObject);
  private
    { Private declarations }
    function Logout(isConfirm: Boolean): Boolean;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  uRoomData, uTools, uGuestData, uFloorData, uRoomType, uDash, uBilling, uItemResto, uDM, uLapResto, uLapHK, uLapKolamRenang, uPostingBillingTamu, uLapBatalRegistrasi, uLapKamar, uLapRegistrasi, uPostingHK, uPostingKolamRenang, uPostingResto,
  uLapKasirFO, uLapKasir, IniFiles, uIniFilesProcs, uBillingPenjualan, uBayarNotaKredit, uBillingKredit, ufrmUserMgt,
  uReservasiData;

{$R *.dfm}

procedure TfrmMain.ChangePassword1Click(Sender: TObject);
begin
  DataModule1.ChangePassword
end;
procedure TfrmMain.Dashboard1Click(Sender: TObject);
var
  f : TfrmDash;
  i: Integer;
begin

  if not isWindowsFound('TfrmDash') then begin
    f:= TfrmDash.Create(Application);
    f.Show;
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.Exit1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMain.FloorData1Click(Sender: TObject);
var
  f : TfrmFloorData;
  i: Integer;
begin

  if not isWindowsFound('TfrmFloorData') then begin
    f:= TfrmFloorData.Create(Application, 32);
    f.Show;
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  quitSignal: Boolean;
begin

  {
  if not DataModule1.Authenticate_User then begin
   MessageDlg('Wrong credential', mtError, [mbOK], 0);
   //Application.Terminate;
   Logout(DataModule1.isLogin);
  end else begin
    Login1.Caption:= 'Logout';
  end;
  }

  quitSignal := False;
  Login1.Caption:= 'Login';

  while ((not DataModule1.Authenticate_User(quitSignal)) and (not quitSignal)) do begin
    MessageDlg('Wrong credential', mtError, [mbOK], 0);
   //Application.Terminate;
   Logout(DataModule1.isLogin);
  end;

  if quitSignal then
    Application.Terminate;

  Login1.Caption:= 'Logout';

end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  try
    Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\images\bg_main.JPG');
    StatusBar.Panels[0].Text:= ' User : '+DataModule1.UserConnect;
    StatusBar.Panels[1].Text:= DataModule1.vSysDatedt_server.ToString;
  finally

  end;
end;

procedure TfrmMain.GuestBilling1Click(Sender: TObject);
var
  f : TfrmBilling;
  i: Integer;
begin

  if not isWindowsFound('TfrmBilling') then begin
    f:= TfrmBilling.Create(Application, 42);
    f.Show;
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.GuestData1Click(Sender: TObject);
var
  f : TfrmGuestData;
  i: Integer;
begin

  if not isWindowsFound('TfrmGuestData') then begin
    f:= TfrmGuestData.Create(Application, 31);
    f.Show;
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.ItemHouseKeeping1Click(Sender: TObject);
var
  f : TfrmItemResto;
  i: Integer;
begin

  if not isDeptItemWindowsFound('TfrmItemResto', tdHouseKeeping) then begin
    f:= TfrmItemResto.Create(Application, tdHouseKeeping, 51);
    f.Caption := 'Housekeeping Items';
    f.Show;
    f.Tag := Ord(tdHouseKeeping);
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.ItemKolamRenang1Click(Sender: TObject);
var
  f : TfrmItemResto;
  i: Integer;
begin

  if not isDeptItemWindowsFound('TfrmItemResto', tdPool) then begin
    f:= TfrmItemResto.Create(Application, tdPool, 71); // using item POS code for now
    f.Caption := 'Pool Items';
    f.Show;
    f.Tag := Ord(tdPool);
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.LaporanRegistrasiTamu1Click(Sender: TObject);
var
  f : TfrmLapRegistrasi;
  i: Integer;
begin

  if not isWindowsFound('TfrmLapRegistrasi') then begin
    f:= TfrmLapRegistrasi.Create(Application, 81);
    f.Show;
    advofficetabsetMain.AddTab(f);
  end;

end;

function TfrmMain.Logout(isConfirm: Boolean): Boolean;
var i: Integer;
    mi: TMenuItem;
begin
  Result:= False;
  DataModule1.isLogin:= not Result;
//  if isConfirm and (DataModule1.MyMsg(mmConfirmation,'Anda ingin log out ?','')=101) then
//    Exit;
  for i:=0 to ComponentCount-1 do
    if Components[i] is TMenuItem then begin
//      mi:= Components[i] as TMenuItem;
//      if ((mi.Tag>=1) and (mi.Tag<=3)) or
//         ((mi.Tag>=100) and (mi.Tag<=103)) or
//         (mi.Tag=200) or (mi.Tag=201) or
//         ((mi.Tag>=1020) and (mi.Tag<=1023)) or
//         ((mi.Tag>=10220) and (mi.Tag<=10223)) or
//         ((mi.Tag>=10230) and (mi.Tag<=10232))
//        then
//        mi.Visible:= True
//      else
//        mi.Visible:= False;
      mi:= Components[i] as TMenuItem;
      mi.Visible:= True;
      mi.Enabled := True;
    end;
  //actLogin.Caption:= 'Login';
  DataModule1.isLogin:= False;
  Result:= not DataModule1.isLogin;
end;

procedure TfrmMain.Login1Click(Sender: TObject);
var
  i: Integer;
  quitSignal: Boolean;
begin
  if Logout(DataModule1.isLogin) then begin
    if MDIChildCount>0 then begin
      for i := 0 to MDIChildCount-1 do
        MDIChildren[i].Close;
      Delay(500);
    end;
    if MDIChildCount>0 then
      Exit;

    {
    if not DataModule1.Authenticate_User then begin
      Login1.Caption:= 'Login';
//      StatusBar.Panels[0].Text:= '';
      Logout(DataModule1.isLogin);
    end else begin
      Login1.Caption:= 'Logout';
      ChangePassword1.Visible:= True;
//      Messages1.Visible:= True;
//      StatusBar.Panels[0].Text:= 'User : ' + DataModule1.UserConnect + '@' + DataModule1.zconHotel.HostName;
    end;
  }

    Login1.Caption:= 'Login';
    StatusBar.Panels[0].Text:= ' User : -';

    while ((not DataModule1.Authenticate_User(quitSignal)) and (not quitSignal)) do begin
      MessageDlg('Wrong credential', mtError, [mbOK], 0);
     //Application.Terminate;
     Logout(DataModule1.isLogin);
    end;

    if quitSignal then
      Application.Terminate;

    Login1.Caption:= 'Logout';
    StatusBar.Panels[0].Text:= ' User : '+DataModule1.UserConnect;
  end;
end;

procedure TfrmMain.NotaHouseKeeping1Click(Sender: TObject);
var
  f : TfrmBillingPenjualan;
  i: Integer;
begin

  if not isBillItemWindowsFound('TfrmBillingPenjualan', tdHouseKeeping) then begin
    f:= TfrmBillingPenjualan.Create(Application, tdHouseKeeping, 62);
    f.Caption := 'Nota House Keeping';
    f.Show;
    f.Tag := Ord(tdHouseKeeping) + 100;
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.NotaKredit1Click(Sender: TObject);
var
  f : TfrmBillingKredit;
  i: Integer;
begin

  if not isDeptItemWindowsFound('TfrmBillingKredit', tdResto) then begin
    f:= TfrmBillingKredit.Create(Application, 43);
    f.Caption := 'NOTA BILLING KREDIT';
    f.Show;
    //f.Tag := Ord(tdResto);
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.ItemRestaurant1Click(Sender: TObject);
var
  f : TfrmItemResto;
  i: Integer;
begin

  if not isDeptItemWindowsFound('TfrmItemResto', tdResto) then begin
    f:= TfrmItemResto.Create(Application, tdResto, 51);
    f.Caption := 'Restaurant Items';
    f.Show;
    f.Tag := Ord(tdResto);
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.JenisReservasi1Click(Sender: TObject);
var
  f : TfrmReservasiData;
  i: Integer;
begin

  if not isWindowsFound('TfrmReservasiData') then begin
    f:= TfrmReservasiData.Create(Application, 35);
    f.Show;
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.KonekUlang1Click(Sender: TObject);
begin

  try
    DataModule1.zconHotel.Disconnect;
    DataModule1.zconHotel.Connect;

    if DataModule1.zconHotel.Connected=True then begin
       StatusBar.Panels[4].Text:= 'CONNECTED';

    end else
       StatusBar.Panels[4].Text:= 'DISCONNECTED';

  except
    on E: Exception do begin
      DataModule1.zconHotel.Disconnect;
      StatusBar.Panels[4].Text:= 'DISCONNECTED';
    end;

  end;

end;

procedure TfrmMain.NotaRestaurant2Click(Sender: TObject);
var
  f : TfrmBillingPenjualan;
  i: Integer;
begin

  if not isBillItemWindowsFound('TfrmBillingPenjualan', tdResto) then begin
    f:= TfrmBillingPenjualan.Create(Application, tdResto, 52);
    f.Caption := 'Nota Restaurant';
    f.Show;
    f.Tag := Ord(tdResto) + 100;
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.PenjualanTiket1Click(Sender: TObject);
var
  f : TfrmBillingPenjualan;
  i: Integer;
begin

  if not isBillItemWindowsFound('TfrmBillingPenjualan', tdPool) then begin
    f:= TfrmBillingPenjualan.Create(Application, tdPool, 72);
    f.Caption := 'Penjualan Tiket';
    f.Show;
    f.Tag := Ord(tdPool) + 100;
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.PostingControl1Click(Sender: TObject);
var
  f : TfrmPostingBillingTamu;
  i: Integer;
begin

  if not isWindowsFound('TfrmPostingBillingTamu') then begin
    f:= TfrmPostingBillingTamu.Create(Application, 45);
    f.Show;
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.PostingControl2Click(Sender: TObject);
var
  f : TfrmPostingResto;
  i: Integer;
begin

  if not isWindowsFound('TfrmPostingResto') then begin
    f:= TfrmPostingResto.Create(Application, 54);
    f.Show;
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.PostingControl3Click(Sender: TObject);
var
  f : TfrmPostingHK;
  i: Integer;
begin

  if not isWindowsFound('TfrmPostingHK') then begin
    f:= TfrmPostingHK.Create(Application, 63);
    f.Show;
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.PostingControl4Click(Sender: TObject);
var
  f : TfrmPostingKolamRenang;
  i: Integer;
begin

  if not isWindowsFound('TfrmPostingKolamRenang') then begin
    f:= TfrmPostingKolamRenang.Create(Application, 74);
    f.Show;
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.RekapBatalRegistrasi1Click(Sender: TObject);
var
  f : TfrmLapBatalRegistrasi;
  i: Integer;
begin

  if not isWindowsFound('TfrmLapBatalRegistrasi') then begin
    f:= TfrmLapBatalRegistrasi.Create(Application, 82);
    f.Show;
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.RekapNotaperShift1Click(Sender: TObject);
var
  f : TfrmLapKasir;
  i: Integer;
begin

  if not isBillItemWindowsFound('TfrmLapKasir', tdResto) then begin
    f:= TfrmLapKasir.Create(Application, tdResto, 53);
    f.Caption := 'Laporan Kasir - Restaurant';
    f.Show;
    f.Tag := Ord(tdResto) + 100;
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.RekapPendapatanHouseKeeping1Click(Sender: TObject);
var
  f : TfrmLapHK;
  i: Integer;
begin

  if not isWindowsFound('TfrmLapHK') then begin
    f:= TfrmLapHK.Create(Application, 85);
    f.Show;
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.RekapPendapatanKamar1Click(Sender: TObject);
var
  f : TfrmLapKamar;
  i: Integer;
begin

  if not isWindowsFound('TfrmLapKamar') then begin
    f:= TfrmLapKamar.Create(Application, 83);
    f.Show;
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.RekapPendapatanKolamRenang1Click(Sender: TObject);
var
  f : TfrmLapKolamRenang;
  i: Integer;
begin

  if not isWindowsFound('TfrmLapKolamRenang') then begin
    f:= TfrmLapKolamRenang.Create(Application, 86);
    f.Show;
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.RekapPendapatanPerShift1Click(Sender: TObject);
var
  f : TfrmLapKasirFO;
  i: Integer;
begin

  if not isWindowsFound('TfrmLapKasirFO') then begin
    f:= TfrmLapKasirFO.Create(Application, 44);
    f.Show;
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.RekapPendapatanRestaurant1Click(Sender: TObject);
var
  f : TfrmLapResto;
  i: Integer;
begin

  if not isWindowsFound('TfrmLapResto') then begin
    f:= TfrmLapResto.Create(Application, 84);
    f.Show;
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.RekapPenjualan1Click(Sender: TObject);
var
  f : TfrmLapKasir;
  i: Integer;
begin

  if not isBillItemWindowsFound('TfrmLapKasir', tdPool) then begin
    f:= TfrmLapKasir.Create(Application, tdPool, 73); // temporary code
    f.Caption := 'Laporan Kasir - Pool';
    f.Show;
    f.Tag := Ord(tdPool) + 100;
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.RoomData1Click(Sender: TObject);
var
  f : TfrmRoomData;
  i: Integer;
begin

  if not isWindowsFound('TfrmRoomData') then begin
    f:= TfrmRoomData.Create(Application, 34);
    f.Show;
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.RoomType1Click(Sender: TObject);
var
  f : TfrmRoomType;
  i: Integer;
begin

  if not isWindowsFound('TfrmRoomType') then begin
    f:= TfrmRoomType.Create(Application, 33);
    f.Show;
    advofficetabsetMain.AddTab(f);
  end;

end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
begin

  try
    DataModule1.zconHotel.Disconnect;
    DataModule1.zconHotel.Connect;

    if DataModule1.zconHotel.Connected=True then begin
       StatusBar.Panels[4].Text:= 'CONNECTED';

    end else
       StatusBar.Panels[4].Text:= 'DISCONNECTED';

  except
    on E: Exception do begin
      DataModule1.zconHotel.Disconnect;
      StatusBar.Panels[4].Text:= 'DISCONNECTED';
    end;

  end;
  
end;

procedure TfrmMain.UserManagement1Click(Sender: TObject);
var
  f : TfrmUserMgt;
  i: Integer;
begin

  if not isWindowsFound('TfrmUserMgt') then begin
    f:= TfrmUserMgt.Create(Application, 23);
    f.Show;
    advofficetabsetMain.AddTab(f);
  end;

end;

end.

