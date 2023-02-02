object BayarNotaKredit: TBayarNotaKredit
  Left = 0
  Top = 0
  Caption = 'Form Pembayaran'
  ClientHeight = 360
  ClientWidth = 411
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
  object pgRegistrasi: TcxPageControl
    Left = 0
    Top = 0
    Width = 410
    Height = 477
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 473
    ClientRectLeft = 4
    ClientRectRight = 406
    ClientRectTop = 4
  end
  object pgRegister: TcxPageControl
    Left = 0
    Top = 0
    Width = 410
    Height = 533
    Color = clActiveCaption
    ParentColor = False
    TabOrder = 1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 529
    ClientRectLeft = 4
    ClientRectRight = 406
    ClientRectTop = 4
  end
  object Panel5: TPanel
    Left = 0
    Top = 289
    Width = 410
    Height = 72
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object btnBayar: TAdvGlassButton
      Left = 32
      Top = 20
      Width = 100
      Height = 37
      BackColor = clBlack
      Caption = 'BAYAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ForeColor = clWhite
      GlowColor = 16760205
      InnerBorderColor = clBlack
      OuterBorderColor = clWhite
      ParentFont = False
      ShineColor = clWhite
      TabOrder = 0
      Version = '1.3.0.2'
      OnClick = btnBayarClick
    end
    object btnBatal: TAdvGlassButton
      Left = 138
      Top = 20
      Width = 100
      Height = 37
      BackColor = clBlack
      Caption = 'BATAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ForeColor = clWhite
      GlowColor = 16760205
      InnerBorderColor = clBlack
      OuterBorderColor = clWhite
      ParentFont = False
      ShineColor = clWhite
      TabOrder = 1
      Version = '1.3.0.2'
      OnClick = btnBatalClick
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 182
    Width = 410
    Height = 107
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    object Label1: TLabel
      Left = 32
      Top = 23
      Width = 60
      Height = 16
      Caption = 'DIBAYAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 32
      Top = 79
      Width = 31
      Height = 16
      Caption = 'SISA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dblblSisa: TcxDBLabel
      Left = 168
      Top = 74
      DataBinding.DataField = 'sisa'
      DataBinding.DataSource = dsNota
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 21
      Width = 201
      AnchorX = 369
    end
    object edtBayar: TcxDBTextEdit
      Left = 168
      Top = 15
      AutoSize = False
      DataBinding.DataField = 'dibayar'
      DataBinding.DataSource = dsNota
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.OnEditValueChanged = edtBayarPropertiesEditValueChanged
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      OnKeyPress = edtBayarKeyPress
      Height = 53
      Width = 201
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 25
    Width = 410
    Height = 157
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
    object lblCaraBayar: TLabel
      Left = 32
      Top = 93
      Width = 128
      Height = 16
      Caption = 'JENIS PEMBAYARAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNoKartu: TLabel
      Left = 32
      Top = 129
      Width = 67
      Height = 16
      Caption = 'NO. KARTU'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTotal: TLabel
      Left = 32
      Top = 55
      Width = 101
      Height = 16
      Caption = 'TOTAL TAGIHAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 19
      Width = 79
      Height = 16
      Caption = 'NAMA TAMU'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dblblTotal: TcxDBLabel
      Left = 168
      Top = 50
      DataBinding.DataField = 'total'
      DataBinding.DataSource = dsNota
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 36
      Width = 201
      AnchorX = 369
    end
    object edtCaraBayar: TcxDBComboBox
      Left = 168
      Top = 90
      DataBinding.DataField = 'jns_pembayaran'
      DataBinding.DataSource = dsNota
      Properties.Items.Strings = (
        'TUNAI'
        'DEBIT'
        'TRANSFER')
      Properties.OnCloseUp = edtCaraBayarPropertiesCloseUp
      TabOrder = 1
      Width = 201
    end
    object edtNoKartu: TcxDBTextEdit
      Left = 168
      Top = 125
      DataBinding.DataField = 'no_kartu'
      DataBinding.DataSource = dsNota
      TabOrder = 2
      Width = 201
    end
    object dblblNama: TcxDBLabel
      Left = 168
      Top = 17
      DataBinding.DataField = 'nama_tamu'
      DataBinding.DataSource = dsNota
      Height = 21
      Width = 201
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 410
    Height = 25
    Caption = 'FORM PEMBAYARAN'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
  end
  object qNota: TZQuery
    Connection = DataModule1.zconHotel
    OnCalcFields = qNotaCalcFields
    SQL.Strings = (
      
        'select a.id_nota, a.no_nota, a.jns_pembayaran, a.nama_tamu, a.dt' +
        '_nota, a.no_register, a.cara_bayar, a.total, a.dibayar, a.no_kar' +
        'tu,'
      'a.shift'
      'from transaksi.nota a'
      'where a.id_nota=:pid_nota')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid_nota'
        ParamType = ptUnknown
      end>
    Left = 13
    Top = 1
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pid_nota'
        ParamType = ptUnknown
      end>
    object qNotaid_nota: TLargeintField
      FieldName = 'id_nota'
      Required = True
    end
    object qNotano_nota: TStringField
      FieldName = 'no_nota'
    end
    object qNotadt_nota: TDateTimeField
      FieldName = 'dt_nota'
      Required = True
    end
    object qNotano_register: TStringField
      FieldName = 'no_register'
      Size = 100
    end
    object qNotacara_bayar: TStringField
      FieldName = 'cara_bayar'
      Size = 50
    end
    object qNotatotal: TFloatField
      FieldName = 'total'
      DisplayFormat = ',0'
    end
    object qNotadibayar: TFloatField
      FieldName = 'dibayar'
      DisplayFormat = ',0'
    end
    object qNotasisa: TFloatField
      FieldKind = fkCalculated
      FieldName = 'sisa'
      DisplayFormat = ',0'
      Calculated = True
    end
    object qNotano_kartu: TStringField
      FieldName = 'no_kartu'
      Size = 50
    end
    object qNotanama_tamu: TStringField
      FieldName = 'nama_tamu'
      Size = 30
    end
    object qNotajns_pembayaran: TStringField
      FieldName = 'jns_pembayaran'
    end
    object qNotashift: TIntegerField
      FieldName = 'shift'
    end
  end
  object dsNota: TDataSource
    DataSet = qNota
    Left = 45
    Top = 9
  end
end
