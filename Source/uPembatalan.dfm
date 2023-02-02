object frmPembatalan: TfrmPembatalan
  Left = 0
  Top = 0
  Caption = 'Verifikasi Billing Tamu'
  ClientHeight = 242
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 530
    Height = 242
    Align = alClient
    AutoSize = True
    BevelOuter = bvNone
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 18
      Width = 94
      Height = 16
      Caption = 'Nama Tamu    :'
    end
    object Label2: TLabel
      Left = 24
      Top = 45
      Width = 94
      Height = 16
      Caption = 'No. Kamar      :'
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 74
      Width = 513
      Height = 111
      Caption = 'Alasan Pembatalan'
      TabOrder = 0
      object MemAlasanBatal: TcxMemo
        Left = 16
        Top = 24
        TabOrder = 0
        Height = 65
        Width = 481
      end
    end
    object btnClose: TAdvGlassButton
      Left = 114
      Top = 199
      Width = 100
      Height = 32
      BackColor = clRed
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ForeColor = clWhite
      GlowColor = clRed
      InnerBorderColor = clBlack
      OuterBorderColor = clWhite
      ParentFont = False
      ShineColor = clWhite
      TabOrder = 1
      Version = '1.3.0.2'
      OnClick = btnCloseClick
    end
    object dbLabelNamaTamu: TcxDBLabel
      Left = 136
      Top = 16
      Height = 21
      Width = 313
    end
    object dbLabelNoKamar: TcxDBLabel
      Left = 136
      Top = 43
      Height = 21
      Width = 313
    end
    object AdvGlassButton1: TAdvGlassButton
      Left = 8
      Top = 199
      Width = 100
      Height = 32
      BackColor = clBlue
      Caption = 'Ok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ForeColor = clWhite
      GlowColor = clRed
      InnerBorderColor = clBlack
      OuterBorderColor = clWhite
      ParentFont = False
      ShineColor = clWhite
      TabOrder = 4
      Version = '1.3.0.2'
      OnClick = AdvGlassButton1Click
    end
  end
end
