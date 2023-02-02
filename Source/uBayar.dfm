object Bayar: TBayar
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
    Top = 161
    Width = 410
    Height = 128
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
      Left = 48
      Top = 35
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
      Left = 48
      Top = 91
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
      Top = 86
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
      Top = 27
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
    Height = 136
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
      Left = 48
      Top = 34
      Width = 87
      Height = 16
      Caption = 'CARA BAYAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNoKartu: TLabel
      Left = 48
      Top = 69
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
      Left = 48
      Top = 101
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
    object dblblTotal: TcxDBLabel
      Left = 168
      Top = 96
      DataBinding.DataField = 'total'
      DataBinding.DataSource = dsNota
      Properties.Alignment.Horz = taRightJustify
      Height = 21
      Width = 201
      AnchorX = 369
    end
    object edtCaraBayar: TcxDBComboBox
      Left = 168
      Top = 26
      DataBinding.DataField = 'jns_bayar'
      DataBinding.DataSource = dsNota
      Properties.Items.Strings = (
        'TUNAI'
        'KREDIT'
        'DEBIT'
        'TRANSFER')
      Properties.OnCloseUp = edtCaraBayarPropertiesCloseUp
      TabOrder = 1
      Width = 201
    end
    object edtNoKartu: TcxDBTextEdit
      Left = 168
      Top = 61
      DataBinding.DataField = 'no_kartu'
      DataBinding.DataSource = dsNota
      TabOrder = 2
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
      
        'select a.id_nota, a.no_nota, a.dt_nota, a.no_register, a.cara_ba' +
        'yar, a.total, a.jns_bayar, a.dibayar, a.no_kartu'
      'from transaksi.nota_penjualan a'
      'where a.id_nota=:pid_nota')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid_nota'
        ParamType = ptUnknown
      end>
    Left = 69
    Top = 17
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
    object qNotajns_bayar: TStringField
      FieldName = 'jns_bayar'
      Size = 50
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
  end
  object dsNota: TDataSource
    DataSet = qNota
    Left = 101
    Top = 17
  end
end
