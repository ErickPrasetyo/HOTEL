object frmExtraBed: TfrmExtraBed
  Left = 0
  Top = 0
  Caption = 'Extra Bed'
  ClientHeight = 407
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 601
    Height = 96
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object imgLogo: TImage
      Left = 10
      Top = 12
      Width = 79
      Height = 69
      Stretch = True
    end
  end
  object pnlFooter: TPanel
    Left = 0
    Top = 352
    Width = 601
    Height = 55
    Align = alBottom
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      601
      55)
    object glbtn1: TAdvGlassButton
      Left = 483
      Top = 12
      Width = 107
      Height = 32
      Anchors = [akTop, akRight]
      BackColor = clRed
      Caption = 'Close'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ForeColor = clWhite
      GlowColor = 16760205
      InnerBorderColor = clSkyBlue
      OuterBorderColor = clWhite
      ParentFont = False
      ShineColor = clWhite
      TabOrder = 0
      Version = '1.3.0.4'
      OnClick = glbtn1Click
    end
  end
  object pnlBody: TPanel
    Left = 0
    Top = 96
    Width = 601
    Height = 256
    Align = alClient
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 2
    object grpXtraBed: TGroupBox
      Left = 55
      Top = 6
      Width = 458
      Height = 227
      Caption = ' Extra Bed '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object lbl7: TLabel
        Left = 101
        Top = 33
        Width = 34
        Height = 18
        Caption = 'From'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lbl8: TLabel
        Left = 108
        Top = 67
        Width = 27
        Height = 18
        Cursor = crHandPoint
        Caption = 'Until'
        DragCursor = crHandPoint
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lbl9: TLabel
        Left = 73
        Top = 137
        Width = 62
        Height = 18
        Cursor = crHandPoint
        Caption = 'Rate/Day'
        DragCursor = crHandPoint
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 108
        Top = 102
        Width = 24
        Height = 18
        Cursor = crHandPoint
        Caption = 'Qty'
        DragCursor = crHandPoint
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object cxDbDateXtraBedTo: TcxDBDateEdit
        Left = 170
        Top = 64
        DataBinding.DataField = 'dt_keluar'
        DataBinding.DataSource = dsXtraBed
        Properties.DisplayFormat = 'dd/mm/yyyy'
        Properties.InputKind = ikMask
        Properties.Kind = ckDateTime
        Properties.OnChange = cxDbDateXtraBedToPropertiesChange
        TabOrder = 0
        Width = 209
      end
      object cxDbDateXtraBedFrom: TcxDBDateEdit
        Left = 170
        Top = 31
        DataBinding.DataField = 'dt_masuk'
        DataBinding.DataSource = dsXtraBed
        ParentFont = False
        Properties.DisplayFormat = 'dd/mm/yyyy'
        Properties.InputKind = ikMask
        Properties.Kind = ckDateTime
        Properties.OnChange = cxDbDateXtraBedFromPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 209
      end
      object glbtnSaveXtraBed: TAdvGlassButton
        Left = 136
        Top = 174
        Width = 192
        Height = 32
        BackColor = clGreen
        Caption = 'Order Extra Bed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ForeColor = clWhite
        GlowColor = 16760205
        InnerBorderColor = clSkyBlue
        OuterBorderColor = clWhite
        ParentFont = False
        ShineColor = clWhite
        TabOrder = 2
        Version = '1.3.0.4'
        OnClick = glbtnSaveXtraBedClick
      end
      object cxDbEditBedRate: TcxDBTextEdit
        Left = 170
        Top = 133
        DataBinding.DataField = 'tarif'
        DataBinding.DataSource = dsXtraBed
        TabOrder = 3
        Width = 209
      end
      object dbLabelQty: TcxDBLabel
        Left = 170
        Top = 99
        DataBinding.DataField = 'qty'
        DataBinding.DataSource = dsXtraBed
        Height = 27
        Width = 95
      end
    end
  end
  object dsRegister: TDataSource
    DataSet = zqryRegister
    Left = 384
    Top = 40
  end
  object zseq_xtrabed: TZSequence
    Connection = DataModule1.zconHotel
    SequenceName = 'transaksi.sq_extra_bed'
    Left = 474
    Top = 10
  end
  object dsXtraBed: TDataSource
    DataSet = zqryXtraBed
    Left = 440
    Top = 64
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
  object zqryXtraBed: TZQuery
    Connection = DataModule1.zconHotel
    BeforeOpen = zqryXtraBedBeforeOpen
    AfterEdit = zqryXtraBedAfterEdit
    OnNewRecord = zqryXtraBedNewRecord
    SQL.Strings = (
      'SELECT * FROM transaksi.extra_bed'
      'WHERE no_register=:nreg'
      'ORDER BY id_extra_bed DESC')
    Params = <
      item
        DataType = ftUnknown
        Name = 'nreg'
        ParamType = ptUnknown
      end>
    Left = 240
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nreg'
        ParamType = ptUnknown
      end>
    object lrgntfldXtraBedid_extra_bed1: TLargeintField
      FieldName = 'id_extra_bed'
      Required = True
    end
    object strngfldXtraBedno_extra_bed1: TStringField
      FieldName = 'no_extra_bed'
    end
    object strngfldXtraBedno_register1: TStringField
      FieldName = 'no_register'
    end
    object strngfldXtraBedno_kamar1: TStringField
      FieldName = 'no_kamar'
      Required = True
      Size = 10
    end
    object dtmfldXtraBeddt_masuk1: TDateTimeField
      FieldName = 'dt_masuk'
    end
    object dtmfldXtraBeddt_keluar1: TDateTimeField
      FieldName = 'dt_keluar'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object dtmfldXtraBeddt_extra_bed1: TDateTimeField
      FieldName = 'dt_extra_bed'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object strngfldXtraBedid_item1: TStringField
      FieldName = 'id_item'
      Size = 50
    end
    object strngfldXtraBedid_trans1: TStringField
      FieldName = 'id_trans'
      Size = 10
    end
    object fltfldXtraBedqty1: TFloatField
      FieldName = 'qty'
      Required = True
    end
    object fltfldXtraBedtarif1: TFloatField
      FieldName = 'tarif'
      Required = True
    end
    object strngfldXtraBedusr_ins1: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 30
    end
    object strngfldXtraBedusr_upd1: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object dtmfldXtraBeddt_ins1: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object dtmfldXtraBeddt_upd1: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
    object strngfldXtraBedispost1: TStringField
      FieldName = 'ispost'
      Required = True
      Size = 1
    end
    object strngfldXtraBediscancel1: TStringField
      FieldName = 'iscancel'
      Required = True
      Size = 1
    end
    object intgrfldXtraBedshift1: TIntegerField
      FieldName = 'shift'
    end
    object strngfldXtraBedisdelete1: TStringField
      FieldName = 'isdelete'
      Size = 1
    end
    object strngfldXtraBedketerangan1: TStringField
      FieldName = 'keterangan'
      Size = 255
    end
  end
  object Gen_noX: TZReadOnlyQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      'select transaksi.fn_gen_extra_bed_number('#39'107'#39')')
    Params = <>
    Left = 296
    Top = 16
    object Gen_noXfn_gen_extra_bed_number: TMemoField
      FieldName = 'fn_gen_extra_bed_number'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
end
