object FrmFest: TFrmFest
  Left = 0
  Top = 0
  Caption = 'Room Card Fest'
  ClientHeight = 403
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = -1
    Top = 0
    Width = 369
    Height = 58
    Caption = 'Data Registrasi'
    Color = clInactiveCaption
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = -1
    Top = 58
    Width = 369
    Height = 325
    Color = clInactiveCaption
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 43
      Width = 70
      Height = 14
      Caption = 'Nama Tamu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 69
      Width = 62
      Height = 14
      Caption = 'No. Kamar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 95
      Width = 96
      Height = 14
      Caption = 'Tgl./Jam Masuk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 121
      Width = 95
      Height = 14
      Caption = 'Tgl./Jam Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 17
      Width = 75
      Height = 14
      Caption = 'No. Register'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtNama: TEdit
      Left = 128
      Top = 41
      Width = 217
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object edtKamar: TEdit
      Left = 128
      Top = 67
      Width = 217
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object edtCI: TEdit
      Left = 128
      Top = 93
      Width = 217
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object edtCO: TEdit
      Left = 128
      Top = 119
      Width = 217
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object btnIssue: TButton
      Left = 16
      Top = 216
      Width = 84
      Height = 33
      Caption = 'Issue Card'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnIssueClick
    end
    object btnRead: TButton
      Left = 16
      Top = 248
      Width = 84
      Height = 33
      Caption = 'Read Card'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnReadClick
    end
    object btnConfig: TButton
      Left = 16
      Top = 184
      Width = 84
      Height = 33
      Caption = 'Config'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      Visible = False
      OnClick = btnConfigClick
    end
    object btnErase: TButton
      Left = 16
      Top = 248
      Width = 84
      Height = 33
      Caption = 'Erase Card'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = btnEraseClick
    end
    object btnClose: TButton
      Left = 261
      Top = 248
      Width = 84
      Height = 33
      Caption = 'Tutup'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = btnCloseClick
    end
    object edtNoRegister: TEdit
      Left = 128
      Top = 15
      Width = 217
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 383
    Width = 367
    Height = 20
    Panels = <
      item
        Width = 50
      end>
  end
  object qExec: TZQuery
    Connection = DataModule1.zconHotel
    Params = <>
    Left = 68
    Top = 33
  end
  object zqryRegister: TZQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      
        'SELECT a.no_register, a.id_register, a.keterangan, a.nama_tamu, ' +
        ' a.jns_kel, a.id_tp_kamar, b.no_kamar, b.dt_masuk, b.dt_keluar'
      'FROM transaksi.register_tamu a'
      
        'LEFT JOIN transaksi.register_tamu_detail b on b.id_register=a.id' +
        '_register'#9
      'WHERE a.no_register=:pno_reg')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pno_reg'
        ParamType = ptUnknown
      end>
    Left = 176
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pno_reg'
        ParamType = ptUnknown
      end>
    object strngfldRegisterno_register: TStringField
      FieldName = 'no_register'
      Required = True
    end
    object lrgntfldRegisterid_register: TLargeintField
      FieldName = 'id_register'
      Required = True
    end
    object strngfldRegisterketerangan: TStringField
      FieldName = 'keterangan'
      Size = 255
    end
    object strngfldRegisternama_tamu: TStringField
      FieldName = 'nama_tamu'
      Size = 255
    end
    object strngfldRegisterjns_kel: TStringField
      FieldName = 'jns_kel'
      Size = 10
    end
    object lrgntfldRegisterid_tp_kamar: TLargeintField
      FieldName = 'id_tp_kamar'
    end
    object strngfldRegisterno_kamar: TStringField
      FieldName = 'no_kamar'
      Size = 10
    end
    object dtmfldRegisterdt_masuk: TDateTimeField
      FieldName = 'dt_masuk'
    end
    object dtmfldRegisterdt_keluar: TDateTimeField
      FieldName = 'dt_keluar'
    end
  end
  object dsRegister: TDataSource
    DataSet = zqryRegister
    Left = 224
    Top = 32
  end
end
