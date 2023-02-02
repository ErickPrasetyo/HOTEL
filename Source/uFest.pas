unit uFest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Forms, Vcl.Controls, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, shellapi, IniFiles,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.ComCtrls;

type
  TFrmFest = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    edtNama: TEdit;
    edtKamar: TEdit;
    edtCI: TEdit;
    edtCO: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnIssue: TButton;
    btnRead: TButton;
    btnConfig: TButton;
    btnErase: TButton;
    btnClose: TButton;
    qExec: TZQuery;
    zqryRegister: TZQuery;
    strngfldRegisterno_register: TStringField;
    lrgntfldRegisterid_register: TLargeintField;
    strngfldRegisterketerangan: TStringField;
    strngfldRegisternama_tamu: TStringField;
    strngfldRegisterjns_kel: TStringField;
    lrgntfldRegisterid_tp_kamar: TLargeintField;
    strngfldRegisterno_kamar: TStringField;
    dtmfldRegisterdt_masuk: TDateTimeField;
    dtmfldRegisterdt_keluar: TDateTimeField;
    dsRegister: TDataSource;
    StatusBar1: TStatusBar;
    Label5: TLabel;
    edtNoRegister: TEdit;
    procedure btnConfigClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnReadClick(Sender: TObject);
    procedure btnIssueClick(Sender: TObject);
    procedure btnEraseClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
    Door_Path: string;
    iRet: LongInt;
    Rom: array[0..64] of  AnsiChar;
    LockSDKDLL: LongWord;
    iDoorType: LongInt;

  public
    { Public declarations }
    frmDash: TForm;
    vNoKamar : string;
  end;

var
  FrmFest: TFrmFest;
  MyIniFile:TIniFile;
  g_szLanguagePath: string;
  g_szText:string;
  g_szfrmText:string;


implementation
uses Unit2Fest, uDM, MD5, uUserLogin;
{$R *.dfm}

procedure GetLanguagePath_Ex();
var
  fileNm: string;
  vs    : string;
Begin
  g_szLanguagePath :=ExtractFilePath(Paramstr(0))+'ToolsLanguage.ini';
end;

function g_LoadString_Ex(szID: string):string;
var
  vs    : string;
Begin
  if  g_szLanguagePath='' then
  begin
     GetLanguagePath_Ex();
  end;
  myinifile:=Tinifile.Create(g_szLanguagePath);
   vs:=myinifile.Readstring('String',szID,'Not found' );
   g_LoadString_Ex:=vs;
end;

procedure g_SetDialogStrings_Ex(const Cp : TForm);
var
  szKey : string;
  szText: string;
  I     : integer;
Begin
     if  g_szLanguagePath='' then
     begin
        GetLanguagePath_Ex();
     end;
     myinifile:=Tinifile.Create(g_szLanguagePath);

     szKey :=Cp.Name+'_Title';
     szText:=myinifile.Readstring('LockSDKDemo',szKey,'Not found' );
     Cp.Caption :=szText;

     for I := Cp.ComponentCount-1 downto 0 do
     Begin
       szKey :=Cp.Components[I].Name;
       szText:=myinifile.Readstring('LockSDKDemo',szKey,'Not found' );
       if Cp.Components[I] is TButton  then
           TButton(Cp.Components[I]).Caption :=szText;
       if Cp.Components[I] is TLabel  then
           TLabel(Cp.Components[I]).Caption :=szText;
       if Cp.Components[I] is TRadioButton then
          TRadioButton(Cp.Components[I]).Caption :=szText;
     end;
end;

Procedure CheckErr(Ret: smallint);
var
  MsgStr: String;
   MsgTitle: String;
Begin
  case Ret of
    1:
       MsgStr := g_LoadString_Ex('IDS_STRING_SUCCESS');
    -1:
      MsgStr := g_LoadString_Ex('IDS_STRING_ERROR_NOCARD');
    -2:
      MsgStr := g_LoadString_Ex('IDS_STRING_ERROR_NOREADE');
    -3:
      MsgStr := g_LoadString_Ex('IDS_STRING_ERROR_INVALIDCARD');
    -4:
      MsgStr := g_LoadString_Ex('IDS_STRING_ERROR_CARDTYPE');
    -5:
      MsgStr := g_LoadString_Ex('IDS_STRING_ERROR_READCARD');
    -8:
      MsgStr := g_LoadString_Ex('IDS_STRING_ERROR_INPUT');
    -29:
      MsgStr := g_LoadString_Ex('IDS_STRING_ERROR_REG');
  else
    MsgStr := g_LoadString_Ex('IDS_STRING_ERROR');
  end;
  MsgTitle := g_LoadString_Ex('IDS_STRING_MSG');
  Application.MessageBox(Pchar(MsgStr),Pchar(MsgTitle), MB_OK + MB_ICONINFORMATION);
end;

procedure TFrmFest.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmFest.btnConfigClick(Sender: TObject);
var
  TP_Configuration:function(iDoorType: LongInt):LongInt;stdcall;
begin

  TP_Configuration :=GetProcAddress(LockSDKDLL,'TP_Configuration');
  iRet :=TP_Configuration(5);
  if iRet<>1 then begin
     StatusBar1.Panels[0].Text:= 'Reader : DISCONNECT';
  end else begin
     StatusBar1.Panels[0].Text:= 'Reader : CONNECTED';
  end;
  btnRead.Enabled :=True;
  btnIssue.Enabled :=True;

end;

procedure TFrmFest.btnEraseClick(Sender: TObject);
var
  TP_CancelCard :function(sRom:PAnsiChar):LongInt;stdcall;
begin
  TP_CancelCard :=GetProcAddress(LockSDKDLL,'TP_CancelCard');
  iRet :=  TP_CancelCard(Rom);
  CheckErr(iRet);

  if iRet=1 then begin
     edtNoRegister.Text:= '';
     edtNama.Text:= '';
     edtKamar.Text:= '';
     edtCI.Text:= '';
     edtCO.Text:= '';
     ModalResult:= mrOk;

  end else begin
     ModalResult:= mrNone;
  end;

end;

procedure TFrmFest.btnIssueClick(Sender: TObject);
var
  TP_MakeGuestCard:function(sRom:PAnsiChar;sRoomNo:PAnsiChar;sInTime:PAnsiChar;sOutTime:PAnsiChar;iFlags:LongInt):LongInt;stdcall;
begin

  TP_MakeGuestCard:=GetProcAddress(LockSDKDLL,'TP_MakeGuestCard');
  iRet :=TP_MakeGuestCard(Rom,PAnsiChar(AnsiString('00'+edtKamar.Text)),
  PAnsiChar(AnsiString(edtCI.Text)),PAnsiChar(AnsiString(edtCO.Text)),0);

  if iRet=1 then begin

  end;

  CheckErr(iRet);

end;

procedure TFrmFest.btnReadClick(Sender: TObject);
var
  aRoomNo :array[0..64] of  AnsiChar;
  aInTime :array[0..64] of  AnsiChar;
  aOutTime :array[0..64] of  AnsiChar;
  strMsg : string;
  MsgTitle: string;
  TP_ReadGuestCard:function(sRom:PAnsiChar;sRoomNo:PAnsiChar;sInTime:PAnsiChar;sOutTime:PAnsiChar):LongInt;stdcall;
begin

  TP_ReadGuestCard :=GetProcAddress(LockSDKDLL,'TP_ReadGuestCard');
  iRet :=TP_ReadGuestCard(Rom,aRoomNo,aInTime,aOutTime);

  if iRet=1 then begin

    strMsg :=g_LoadString_Ex('IDS_STRING_CARDNO')+Rom+#13#10+g_LoadString_Ex('IDS_STRING_GUESTNAME')+edtNama.Text+#13#10+g_LoadString_Ex('IDS_STRING_LOCKNO')+edtKamar.Text+#13#10;
    strMsg :=strMsg+g_LoadString_Ex('IDS_STRING_INTIME')+aInTime+#13#10 +g_LoadString_Ex('IDS_STRING_OUTTIME')+aOutTime;

    MsgTitle := g_LoadString_Ex('IDS_STRING_MSG');
    Application.MessageBox(Pchar(strMsg),Pchar(MsgTitle), MB_OK + MB_ICONINFORMATION);

  end else begin

    CheckErr(iRet);

  end;

end;

procedure TFrmFest.FormShow(Sender: TObject);
var
  sdllfile: string;
  DateTime: TDateTime;
  Msg: String;
  Msgstr:String;
  aNoReg: String;
begin
  Door_Path :=ExtractFilePath(Application.ExeName);
  sdllfile :=Door_Path+'LockSDK.dll';

  LockSDKDLL :=LoadLibrary(PChar(sdllfile));

//  g_SetDialogStrings_Ex(FrmFest);
  aNoReg:= DataModule1.GetNoRegByRoomNo(vNoKamar);

  try
    zqryRegister.Close;
    zqryRegister.Params.ParamByName('pno_reg').AsString:= aNoReg;// 'TR-180800001';
    zqryRegister.Open;

    edtNoRegister.Text:= strngfldRegisterno_register.AsString;
    edtNama.Text:= strngfldRegisternama_tamu.AsString;
    edtKamar.Text:= Trim(vNoKamar);
    edtCI.Text :=FormatDateTime('yyyy', dtmfldRegisterdt_masuk.AsDateTime + 1)+'-'+  FormatDateTime('mm', dtmfldRegisterdt_masuk.AsDateTime + 1)+'-'+ FormatDateTime('dd', dtmfldRegisterdt_masuk.AsDateTime);//DateToStr(DateTime);
    edtCI.Text :=edtCI.Text+' '+ FormatDateTime('HH', dtmfldRegisterdt_masuk.AsDateTime + 1) +':'+   FormatDateTime('MM', dtmfldRegisterdt_masuk.AsDateTime + 1)+':'+FormatDateTime('SS', dtmfldRegisterdt_masuk.AsDateTime + 1);
    edtCO.Text :=FormatDateTime('yyyy', dtmfldRegisterdt_keluar.AsDateTime + 1)+'-'+  FormatDateTime('mm', dtmfldRegisterdt_keluar.AsDateTime + 1)+'-'+ FormatDateTime('dd', dtmfldRegisterdt_keluar.AsDateTime + 1)+' 12:00:00';

  except
   on E: Exception do
    MessageDlg('Register:: ' + E.Message, mtError, [mbOK], 0);
  end;

  btnConfig.Click;
end;

end.
