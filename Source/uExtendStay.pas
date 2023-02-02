unit uExtendStay;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, AdvGlassButton,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, Data.DB, ZAbstractRODataset, ZDataset, Vcl.StdCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.DBCtrls, ZSequence,
  cxDBEdit, ZAbstractDataset;

type
  TfrmExtendStay = class(TForm)
    pnlHeader: TPanel;
    pnlFooter: TPanel;
    pnlBody: TPanel;
    imgLogo: TImage;
    dsRegister: TDataSource;
    glbtn1: TAdvGlassButton;
    grp2: TGroupBox;
    lbl2: TLabel;
    dbtxtGuestName: TDBText;
    lbl3: TLabel;
    dbtxtRoomNo: TDBText;
    lbl4: TLabel;
    lbl5: TLabel;
    cxDtEdtChkOut: TcxDateEdit;
    lbl6: TLabel;
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
    lblRoomType: TLabel;
    lblStayDays: TLabel;
    glbtnSaveXtend: TAdvGlassButton;
    Gen_noX: TZReadOnlyQuery;
    Gen_noXfn_gen_extra_bed_number: TMemoField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure glbtn1Click(Sender: TObject);
    procedure glbtnSaveXtendClick(Sender: TObject);
    procedure cxDtEdtChkOutPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vNoKamar: string;
  end;

var
  frmExtendStay: TfrmExtendStay;

implementation

uses
  uDM, System.DateUtils, uTools;

{$R *.dfm}

procedure TfrmExtendStay.cxDtEdtChkOutPropertiesChange(Sender: TObject);
begin
  lblStayDays.Caption := GetStrDaysBetweenDates(dtmfldRegisterdt_masuk.AsDateTime, cxDtEdtChkOut.Date);
end;

procedure TfrmExtendStay.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmExtendStay.FormShow(Sender: TObject);
var
  aNoReg: string;
begin
  imgLogo.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\IMAGES\bg_main.JPG');

//  cxDtEdtChkOut.Properties.MinDate := Date; // idiot...

  aNoReg := DataModule1.GetNoRegByRoomNo(vNoKamar);

  //register
  try
     zqryRegister.Close;
     zqryRegister.Params.ParamByName('pno_reg').AsString:= aNoReg;// 'TR-180800001';
     zqryRegister.Open;

     cxDtEdtChkOut.Date := dtmfldRegisterdt_keluar.Value;

     lblStayDays.Caption := GetStrDaysBetweenDates(dtmfldRegisterdt_masuk.AsDateTime,
                                                   dtmfldRegisterdt_keluar.AsDateTime);
//     lblStayDays.Caption := FormatFloat('0', DaySpan(dtmfldRegisterdt_masuk.AsDateTime,
//                                                    dtmfldRegisterdt_keluar.AsDateTime)
//                                      );

     lblRoomType.Caption := DataModule1.GetRoomTypeByRoomNr(vNoKamar);

   except
    on E: Exception do
      MessageDlg('Register:: ' + E.Message, mtError, [mbOK], 0);
   end;

end;

procedure TfrmExtendStay.glbtn1Click(Sender: TObject);
begin
    Close;
end;

procedure TfrmExtendStay.glbtnSaveXtendClick(Sender: TObject);
var
  aNoReg, ErrMsg, stayDays: string;
begin
  if DataModule1.UpdateCheckoutDate(lrgntfldRegisterid_register.AsString, dtmfldRegisterdt_masuk.AsDateTime,
                                    cxDtEdtChkOut.Date, stayDays) then begin

    aNoReg := DataModule1.GetNoRegByRoomNo(vNoKamar);

    zqryRegister.Close;
    zqryRegister.Params.ParamByName('pno_reg').AsString:= aNoReg;
    zqryRegister.Open;

    lblStayDays.Caption := stayDays;
//    lblStayDays.Caption := FormatFloat('0', DaySpan(dtmfldRegisterdt_masuk.AsDateTime,
//                                                    dtmfldRegisterdt_keluar.AsDateTime)
//                                      );

    ErrMsg := 'Stay extended';

  end
  else begin
    ErrMsg := 'Operation unsucessful!';
  end;

  MessageDlg(ErrMsg, mtInformation, [mbOK], 0);
end;

end.

