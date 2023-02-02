object frmExtendStay: TfrmExtendStay
  Left = 0
  Top = 0
  Caption = 'Extend Stay'
  ClientHeight = 409
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
    Height = 113
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object imgLogo: TImage
      Left = 10
      Top = 12
      Width = 105
      Height = 85
      Stretch = True
    end
  end
  object pnlFooter: TPanel
    Left = 0
    Top = 354
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
      Version = '1.3.0.2'
      OnClick = glbtn1Click
    end
  end
  object pnlBody: TPanel
    Left = 0
    Top = 113
    Width = 601
    Height = 241
    Align = alClient
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 2
    object grp2: TGroupBox
      Left = 71
      Top = 6
      Width = 458
      Height = 219
      Caption = ' Extend Stay '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object lbl2: TLabel
        Left = 51
        Top = 33
        Width = 82
        Height = 18
        Caption = 'Guest Name'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dbtxtGuestName: TDBText
        Left = 159
        Top = 32
        Width = 290
        Height = 17
        DataField = 'nama_tamu'
        DataSource = dsRegister
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 38
        Top = 56
        Width = 95
        Height = 18
        Cursor = crHandPoint
        Caption = 'Room Number'
        DragCursor = crHandPoint
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dbtxtRoomNo: TDBText
        Left = 159
        Top = 55
        Width = 290
        Height = 17
        DataField = 'no_kamar'
        DataSource = dsRegister
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 99
        Top = 79
        Width = 34
        Height = 18
        Cursor = crHandPoint
        Caption = 'Type'
        DragCursor = crHandPoint
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lbl5: TLabel
        Left = 65
        Top = 108
        Width = 68
        Height = 18
        Cursor = crHandPoint
        Caption = 'Check Out'
        DragCursor = crHandPoint
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lbl6: TLabel
        Left = 66
        Top = 142
        Width = 67
        Height = 18
        Cursor = crHandPoint
        Caption = 'Stay Days'
        DragCursor = crHandPoint
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lblRoomType: TLabel
        Left = 159
        Top = 78
        Width = 35
        Height = 19
        Cursor = crHandPoint
        Caption = 'Type'
        DragCursor = crHandPoint
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lblStayDays: TLabel
        Left = 159
        Top = 141
        Width = 9
        Height = 19
        Cursor = crHandPoint
        Caption = '0'
        DragCursor = crHandPoint
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object cxDtEdtChkOut: TcxDateEdit
        Left = 159
        Top = 105
        EditValue = 0d
        ParentFont = False
        Properties.DisplayFormat = 'dd/mm/yyyy'
        Properties.InputKind = ikMask
        Properties.Kind = ckDateTime
        Properties.OnChange = cxDtEdtChkOutPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 209
      end
      object glbtnSaveXtend: TAdvGlassButton
        Left = 136
        Top = 173
        Width = 192
        Height = 32
        BackColor = clGreen
        Caption = 'Extend Stay'
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
        TabOrder = 1
        Version = '1.3.0.2'
        OnClick = glbtnSaveXtendClick
      end
    end
  end
  object dsRegister: TDataSource
    DataSet = zqryRegister
    Left = 384
    Top = 40
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
      DisplayFormat = 'dd/mm/yyyy'
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
