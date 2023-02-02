unit uRoomMoving;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, AdvGlassButton, cxButtonEdit,
  Vcl.StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.DBCtrls,
  Vcl.ExtCtrls, ZSequence, Data.DB, ZAbstractRODataset, ZDataset,
  ZAbstractDataset, cxDBEdit, vcl.wwdialog, vcl.wwidlg;

type
  TfrmRoomMoving = class(TForm)
    pnlHeader: TPanel;
    pnlFooter: TPanel;
    pnlBody: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    dbtxtNoRegis: TDBText;
    dbtxtGuestName: TDBText;
    dbtxtRoomNo: TDBText;
    dbtxtChkIn: TDBText;
    grp1: TGroupBox;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    dbtxtDestRoomRate: TDBText;
    zseqMoveRoom: TZSequence;
    dsRegister: TDataSource;
    imgLogo: TImage;
    glbtnCrudSave: TAdvGlassButton;
    glbtnCrudCancel: TAdvGlassButton;
    glbtn1: TAdvGlassButton;
    dbtxtChkOut: TDBText;
    lblStayDays: TLabel;
    zqryKamar: TZQuery;
    strngfldKamarno_kamar: TStringField;
    lrgntfldKamarid_tp_kamar: TLargeintField;
    fltfldKamartarif: TFloatField;
    strngfldKamarisdetail: TStringField;
    intgrfldKamarlvl: TIntegerField;
    strngfldKamardiskripsi: TStringField;
    strngfldKamartotal_bed: TStringField;
    dtmfldKamardt_ins: TDateTimeField;
    dtmfldKamardt_upd: TDateTimeField;
    strngfldKamarusr_ins: TStringField;
    strngfldKamarusr_upd: TStringField;
    strngfldKamaris_isi: TStringField;
    strngfldKamarid_parent: TStringField;
    strngfldKamarno_bed: TStringField;
    strngfldKamartp_kamar: TStringField;
    strngfldKamartipe: TStringField;
    dsKamar: TDataSource;
    wwlookupDlgRoomNo: TwwLookupDialog;
    dbedtbtnRoomNo: TcxDBButtonEdit;
    dbedtbtnRoomType: TcxDBButtonEdit;
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
    qExec: TZQuery;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure glbtn1Click(Sender: TObject);
    procedure dbedtbtnRoomNoClick(Sender: TObject);
    procedure glbtnCrudSaveClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    vNoKamar: string;
    frmDash: TForm;
  end;

var
  frmRoomMoving: TfrmRoomMoving;

implementation

uses
  uDM, System.DateUtils, uDash;

{$R *.dfm}

procedure TfrmRoomMoving.dbedtbtnRoomNoClick(Sender: TObject);
begin
  zqryKamar.Close;
  zqryKamar.Open;
  wwlookupDlgRoomNo.Execute;
end;

procedure TfrmRoomMoving.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmRoomMoving.FormShow(Sender: TObject);
var
  aNoReg: string;
begin

  imgLogo.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\IMAGES\bg_main.JPG');
  aNoReg := DataModule1.GetNoRegByRoomNo(vNoKamar);

  try
     zqryRegister.Close;
     zqryRegister.Params.ParamByName('pno_reg').AsString:= aNoReg;// 'TR-180800001';
     zqryRegister.Open;

    lblStayDays.Caption := FormatFloat('0', DaySpan(dtmfldRegisterdt_masuk.AsDateTime,
                                                    dtmfldRegisterdt_keluar.AsDateTime)
                                      );

   except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
   end;

end;

procedure TfrmRoomMoving.glbtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmRoomMoving.glbtnCrudSaveClick(Sender: TObject);
var
  s, oldRoom, newRoom: string;
begin

  oldRoom := strngfldRegisterno_kamar.AsString;
  newRoom := strngfldKamarno_kamar.AsString;

  DataModule1.SetNewRoom(lrgntfldRegisterid_register.AsString, newRoom);

  DataModule1.SetRoomVacancyStatus(oldRoom, False);
  DataModule1.SetRoomVacancyStatus(newRoom, True);

  MessageDlg('Guest moved to new room', mtInformation, [mbOK], 0);

  try
      // update bill tamu
      qExec.Close;
      qExec.SQL.Clear;
      qExec.Params.Clear;
      s:= 'update transaksi.register_tamu_detail set harga='+FloatToStr(fltfldKamartarif.AsFloat)+',';
      s:= s+' diskripsi='+QuotedStr(strngfldKamartipe.AsString)+', ismoving='+QuotedStr('1');
      s:= s+' where id_register='+IntToStr(lrgntfldRegisterid_register.AsLargeInt);
      qExec.SQL.Add(s);
      qExec.ExecSQL;
  except
    on E: Exception do
    MessageDlg(E.Message, mtError, [mbOK], 0);
  end;

  (frmDash as TfrmDash).RebuildRoomList;

end;

end.
