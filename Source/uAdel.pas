unit uAdel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Spin, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxBarBuiltInMenu, cxPC, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, AdvGlassButton, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxTextEdit, Data.DB, ZAbstractRODataset, ZAbstractDataset, uDM, ZDataset,
  Vcl.DBCtrls;


CONST
    LOCK3200=1;
    LOCK3200K=2;
    LOCK4200=3;
    LOCK4200D=4;
    LOCK5200=5;
    LOCK6200=6;
    LOCK7200=7;
    LOCK7200D=8;
    LOCK9200=9;
    LOCK9200T=10;

    Adel3200=11;
    Adel4200=12;
    Adel4200D=13;
    Adel5200=14;
    Adel6200=15;
    Adel7200=16;
    Adel7200D=17;
    Adel9200=18;

    Lock611=19;
    Lock612D=20;

    A92=22;

type
  TfrmAdel = class(TForm)
    cxPageControl1: TcxPageControl;
    tsRoomCard: TcxTabSheet;
    tsTool: TcxTabSheet;
    Panel4: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Edit12: TEdit;
    Edit13: TEdit;
    btnErase: TBitBtn;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    btnRead: TBitBtn;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    btnIssue: TBitBtn;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    cbOverFlag: TCheckBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label17: TLabel;
    Label25: TLabel;
    Edit1: TEdit;
    ComboBox2: TComboBox;
    btnInit: TBitBtn;
    btnEnd: TBitBtn;
    BitBtn7: TBitBtn;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    btnSetPort: TButton;
    ComboBox1: TComboBox;
    Button12: TButton;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label18: TLabel;
    edtNama: TcxTextEdit;
    edtNoRegister: TcxTextEdit;
    GroupBox2: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    edtNoKamar: TcxTextEdit;
    edtCI: TcxDateEdit;
    edtCO: TcxDateEdit;
    btnglIssue: TAdvGlassButton;
    btnglRead: TAdvGlassButton;
    btnglClose: TAdvGlassButton;
    Panel6: TPanel;
    btnglErase: TAdvGlassButton;
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
    qExec: TZQuery;
    StatusBar1: TStatusBar;
    procedure btnInitClick(Sender: TObject);
    procedure btnEndClick(Sender: TObject);
    procedure btnReadClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnIssueClick(Sender: TObject);
    procedure btnEraseClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure btnSetPortClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtNamaPropertiesEditValueChanged(Sender: TObject);
    procedure edtNoKamarPropertiesEditValueChanged(Sender: TObject);
    procedure btnglIssueClick(Sender: TObject);
    procedure btnglReadClick(Sender: TObject);
    procedure btnglCloseClick(Sender: TObject);
    procedure btnglEraseClick(Sender: TObject);

  private
    { Private declarations }
    software,sound:integer;
  public
    { Public declarations }
    frmDash: TForm;
    vNoKamar : string;
    vNoPort : integer;
  end;

var
  frmAdel: TfrmAdel;

    FUNCTION Init(SOFT:INTEGER;SERVER,UNAME:Pansichar;PORT,ENCODERTYPE,TMENCODER:INTEGER):INTEGER; stdcall external 'MainDll.Dll';
    function EndSession:integer;stdcall external 'MainDll.Dll';

    function PopCard:integer;STDCALL external 'MainDll.Dll';

    FUNCTION NewKey(ROOMNO,GATE,STIME,GUESTNAME,GUESTID:Pansichar;OVERFLAG:INTEGER;CARDNO:PINTEGER;str1,str2:pchar):INTEGER;STDCALL external 'MainDll.Dll';
    FUNCTION AddKey(ROOMNO,GATE,STIME,GUESTNAME,GUESTID:Pansichar;OVERFLAG:INTEGER;CARDNO:PINTEGER;str1,str2:pchar):INTEGER;STDCALL  external 'MainDll.Dll';
    FUNCTION DupKey(ROOMNO,GATE,STIME,GUESTNAME,GUESTID:Pansichar;OVERFLAG:INTEGER;CARDNO:PINTEGER;str1,str2:pchar):INTEGER;STDCALL  external 'MainDll.Dll';

    function ReadCard(ROOMNO,GATE,STIME,GUESTNAME,GUESTID,track1,track2:Pansichar;CARDNO,st:pinteger):integer;stdcall external 'MainDll.Dll';

    function EraseCard(cardno:integer;str1,str2:Pansichar):integer;stdcall external 'MainDll.Dll';
    FUNCTION CheckOut(ROOMNO:Pansichar;CARDNO:INTEGER):INTEGER;STDCALL external 'MainDll.Dll';
    FUNCTION LostCard(ROOMNO:Pansichar;CARDNO:INTEGER):INTEGER;STDCALL external 'MainDll.Dll';

    FUNCTION SetPort(SOFT,PORT,ENCODERTYPE,TMENCODER:INTEGER):INTEGER;STDCALL external 'MainDll.Dll';

    FUNCTION ReadCardId(CardId:PDWORD):INTEGER;STDCALL external 'MainDll.Dll';

    function WriteMagCard(track1,track2,track3:Pansichar):integer;stdcall external 'MainDll.Dll';
    function ReadMagCard(track1,track2,track3:Pansichar):integer;stdcall external 'MainDll.Dll';

    function CheckSC(sc:Pansichar):integer;stdcall external 'MainDll.Dll';
    function ReadIC(start,len:integer;buff:Pansichar):integer;stdcall external 'MainDll.Dll';
    function WriteIC(start,len:integer;buff:Pansichar):integer;stdcall external 'MainDll.Dll';

    Function GetCardInfo(cardno,cardtype:integer;cardst:pinteger;roomno,username,stime:Pansichar):integer;STDCALL external 'MainDll.Dll';
    Function GetBuffInfo(buff:Pansichar;len:integer;cardtype,cardst,cardno:pinteger;roomno,username,stime:Pansichar):integer;STDCALL external 'MainDll.Dll';
    Function GetMagBuffInfo(buff:Pansichar;cardtype,cardst,cardno:pinteger;roomno,username,stime:Pansichar):integer;STDCALL external 'MainDll.Dll';

    function Reader_Beep(sound:integer):integer;stdcall external 'MainDll.Dll';

implementation

{$R *.dfm}

uses uUserLogin, MD5;

CONST
    SOFTNAMES:array[1..22] of ansistring=('Lock3200','Lock3200K','Lock4200',
      'Lock4200D','Lock5200','Lock6200','Lock7200','Lock7200D',
       'Lock9200','Lock9200T','A30','A40','A41','A95',
       'A60','A70','A71','A90','Lock611','Lock612D','A91','A92');

procedure TfrmAdel.btnInitClick(Sender: TObject);
var
   i, TMTYPE :integer;
   s: String;
   vSvrConnect: AnsiString;
begin

     vSvrConnect:= DataModule1.Aserver;
     Edit1.Text:= vSvrConnect;
     s:=trim(Edit1.Text);
     if s='' then
        exit;
     TMTYPE:=COMBOBOX4.ItemIndex;
     IF TMTYPE=0 THEN
        TMTYPE:=5;

     i:=init(18,PAnsiChar(vSvrConnect),'SA',vNoPort,0,5);

     combobox1.Enabled:=i<>0;
     if i=0 then begin
     StatusBar1.Panels[0].Text:= ' Reader : Connected';
     end else
     StatusBar1.Panels[0].Text:= ' Reader : disconnected';


end;

procedure TfrmAdel.btnEndClick(Sender: TObject);
begin
     combobox1.Enabled:=true;
end;

procedure TfrmAdel.btnReadClick(Sender: TObject);
VAR
   I:INTEGER;
   ROOM,STIME,GNAME,GID,gate:ARRAY[0..50] OF ansichar;
   CARDNO,ST:INTEGER;
   d0, kamar: string;
begin
      edit4.text:='';
      edit5.text:='';
      edit6.text:='';
      edit7.text:='';
      edit8.text:='';

      edtNama.Text:= '';
      edtNoKamar.Text:= '';
      edtNoRegister.Text:= '';
      edtCI.Text:= '';
      edtCO.Text:= '';

      I:=READCARD(ROOM,gate,STIME,GNAME,GID,NIL,NIL,@CARDNO,@ST);

       if I=0 then begin
         ShowMessage('Operation Success');
         EDIT4.TEXT:=TRIM(ROOM);
         EDIT5.TEXT:=TRIM(STIME);
         EDIT6.TEXT:=INTTOSTR(CARDNO);
         EDIT7.TEXT:=TRIM(GNAME);
         EDIT8.TEXT:=inttostr(ST);
         kamar:= Trim(ROOM);
         d0:= Trim(STIME);
         edtNoKamar.Text:= copy(kamar,4,3);
         edtCI.Text:= copy(d0,7,2)+'/'+ copy(d0,5,2)+'/'+ copy(d0,1,4)+' '+ copy(d0,9,2)+':'+ copy(d0,11,2);
         edtCO.Text:= copy(d0,19,2)+'/'+ copy(d0,17,2)+'/'+ copy(d0,13,4)+' '+ copy(d0,21,2)+':'+ copy(d0,23,2);
         edtNama.Text:= Trim(Edit7.Text);
       end else begin
         SHOWMESSAGE('Result: '+inttostr(i));
       end;
end;

procedure TfrmAdel.btnglEraseClick(Sender: TObject);
begin
  btnErase.Click;
end;

procedure TfrmAdel.BitBtn6Click(Sender: TObject);
VAR
   ROOM:STRING;
   CARDNO,I:INTEGER;
begin
     ROOM:=EDIT13.Text;
     IF LENGTH(ROOM)<>6 THEN BEGIN
        EDIT13.SETFOCUS;
        EXIT;
     END;
     TRY
        CARDNO:=STRTOINT(EDIT12.Text);
     EXCEPT
        EDIT12.SETFOCUS;
        EXIT;
     END;
     I:=CHECKOUT(Pansichar(ROOM),CARDNO);
     SHOWMESSAGE('Result: '+inttostr(i));
end;

procedure TfrmAdel.btnIssueClick(Sender: TObject);
VAR
   I,CARDNO,OVERFLAG:INTEGER;
   ROOM,STIME,GNAME,GID:ansiSTRING;
begin
    IF cbOverFlag.Checked THEN
        OVERFLAG:=1
    ELSE
        OVERFLAG:=0;
     ROOM:=EDIT2.TEXT;
     STIME:=EDIT3.TEXT;
     GNAME:=EDIT10.TEXT;
     GID:=EDIT11.Text;
     IF LENGTH(ROOM)<>6 THEN BEGIN
        EDIT2.SetFocus;
        EXIT;
     END;
     IF LENGTH(STIME)<>24 THEN BEGIN
        EDIT3.SetFocus;
        EXIT;
     END;
     EDIT9.TEXT:='';
     I:=NewKey(Pansichar(ROOM),nil,Pansichar(STIME),Pansichar(GNAME),Pansichar(GID),OVERFLAG,@CARDNO,NIL,NIL);
     EDIT9.TEXT:=INTTOSTR(CARDNO);
     if I=0 then begin
       ShowMessage('Operation Success');

     end else begin
       SHOWMESSAGE('Result: '+inttostr(i));
     end;
//     SHOWMESSAGE('Result: '+inttostr(i));
end;

procedure TfrmAdel.btnEraseClick(Sender: TObject);
VAR
I,CARDNO:INTEGER;
f: TfrmUserLogin;
user, pwd: string;
BEGIN
    TRY
       CARDNO:=STRTOINT(EDIT12.TEXT);
    EXCEPT
       EDIT12.SETFOCUS;
       EXIT;
    END;
    I:=ERASECARD(CARDNO,nil,nil);
     if (i=0) or (i=7) then begin
       ShowMessage('Operation Success');
       edtNama.Text:= '';
       edtNoRegister.Text:= '';
       edtNoKamar.Text:= '';
       edtCI.Text:= '';
       edtCO.Text:= '';
       ModalResult:= mrOk;

     end else begin
       //SHOWMESSAGE('Result: '+inttostr(i));

      if DataModule1.isSuperUser then begin
         ModalResult:= mrOk;

      end else begin

         f:= TfrmUserLogin.Create(Application);

         if f.ShowModal=mrOK then begin

            user:= f.cxEdtUsername.Text;
            pwd:=  MD5Print(MD5String(Trim(f.cxEdtPassword.Text)));

            qExec.Close;
            qExec.SQL.Clear;
            qExec.Params.Clear;
            qExec.SQL.Add('select vusr_admin from master.vadmin where lower(vusr_admin)=lower(:usr) and vpwd_admin=:pwd');
            qExec.Params.ParseSQL(qExec.SQL.Text, True);
            qExec.ParamByName('usr').Value:=user;
            qExec.ParamByName('pwd').Value:=pwd;
            qExec.Open;
            if qExec.RecordCount=1 then begin
               ShowMessage('Operation Success, Silahkan Lanjutkan Proses');
               ModalResult:= mrOk;
            end else begin
            MessageDlg('User / Password Salah !!!', mtError, [mbOK], 0);
              ModalResult:= mrNone;
            end;
         end;

      end;
     end;
    //SHOWMESSAGE('Result: '+inttostr(i));
END;

procedure TfrmAdel.btnglCloseClick(Sender: TObject);
begin
  btnEnd.Click;
  Close;
end;

procedure TfrmAdel.btnglIssueClick(Sender: TObject);
begin
  btnIssue.Click;
end;

procedure TfrmAdel.btnglReadClick(Sender: TObject);
begin
  btnRead.Click;
end;

procedure TfrmAdel.BitBtn7Click(Sender: TObject);
begin
     popcard;
end;

procedure TfrmAdel.BitBtn8Click(Sender: TObject);
VAR
   ROOM:STRING;
   CARDNO,I:INTEGER;
begin
     ROOM:=EDIT13.Text;
     IF LENGTH(ROOM)<>6 THEN BEGIN
        EDIT13.SETFOCUS;
        EXIT;
     END;
     TRY
        CARDNO:=STRTOINT(EDIT12.Text);
     EXCEPT
        EDIT12.SETFOCUS;
        EXIT;
     END;
     I:=lostcard(Pansichar(ROOM),CARDNO);
     SHOWMESSAGE('Result: '+inttostr(i));
end;

procedure TfrmAdel.btnSetPortClick(Sender: TObject);
var
   i,TMTYPE:integer;
begin
     TMTYPE:=COMBOBOX4.ItemIndex;
     IF TMTYPE=0 THEN
        TMTYPE:=5;
//     SHOWMESSAGE(INTtOSTR(SOFTWARE)) ;

     i:=setport(18,vNoPort,COMBOBOX3.ITEMINDEX,TMTYPE);
//     showmessage('Result: '+inttostr(i));
end;

procedure TfrmAdel.edtNamaPropertiesEditValueChanged(Sender: TObject);
begin
  Edit10.Text:= Trim(edtNama.text);
end;

procedure TfrmAdel.edtNoKamarPropertiesEditValueChanged(Sender: TObject);
begin
  Edit2.Text:= Trim('010'+ edtNoKamar.Text);
end;

procedure TfrmAdel.FormShow(Sender: TObject);
var
   i:integer;
   aNoReg: string;
begin
     sound:=11;

     for i:=lock3200 to lock9200t do
        combobox1.Items.Add(softnames[i]);
     combobox1.Items.Add(softnames[adel3200]);
     combobox1.Items.Add(softnames[adel5200]);
     combobox1.Items.Add(softnames[adel9200]);
     combobox1.Items.Add(softnames[a92]);

     ComboBox1.ItemIndex := 12 ;
  aNoReg:= DataModule1.GetNoRegByRoomNo(vNoKamar);
  try
     zqryRegister.Close;
     zqryRegister.Params.ParamByName('pno_reg').AsString:= aNoReg;// 'TR-180800001';
     zqryRegister.Open;

     edtCI.Date:= dtmfldRegisterdt_masuk.AsDateTime;
     edtCO.Date:= dtmfldRegisterdt_keluar.AsDateTime;
     edtNama.Text:= strngfldRegisternama_tamu.AsString;
     edtNoRegister.Text:= strngfldRegisterno_register.AsString;
     edtNoKamar.Text:= vNoKamar;
     edit3.Text:= Trim(FormatDateTime('yyyymmddhhmm',dtmfldRegisterdt_masuk.AsDateTime)+
            FormatDateTime('yyyymmdd',dtmfldRegisterdt_keluar.AsDateTime)+'1200');
     Edit13.Text:= Trim('010'+vNoKamar);
     Edit2.Text:= Trim('010'+vNoKamar);
     Edit10.Text:= Trim(strngfldRegisternama_tamu.AsString);

   except
    on E: Exception do
      MessageDlg('Register:: ' + E.Message, mtError, [mbOK], 0);
   end;
   btnSetPort.Click;
   btnInit.Click;
   cxPageControl1.ActivePageIndex:= 0;
   cbOverFlag.Checked:= True;
   cxPageControl1.HideTabs:= True;

end;

end.
