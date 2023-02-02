object frmRoomMoving: TfrmRoomMoving
  Left = 0
  Top = 0
  Caption = 'Room Moving'
  ClientHeight = 613
  ClientWidth = 598
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
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 598
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
    Top = 552
    Width = 598
    Height = 61
    Align = alBottom
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      598
      61)
    object glbtnCrudSave: TAdvGlassButton
      Left = 15
      Top = 16
      Width = 98
      Height = 32
      BackColor = clGreen
      Caption = 'Save'
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
      OnClick = glbtnCrudSaveClick
    end
    object glbtnCrudCancel: TAdvGlassButton
      Left = 127
      Top = 16
      Width = 98
      Height = 32
      BackColor = clRed
      Caption = 'Cancel'
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
      Version = '1.3.0.4'
    end
    object glbtn1: TAdvGlassButton
      Left = 483
      Top = 16
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
      TabOrder = 2
      Version = '1.3.0.4'
      OnClick = glbtn1Click
    end
  end
  object pnlBody: TPanel
    Left = 0
    Top = 113
    Width = 598
    Height = 439
    Align = alClient
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 2
    object lbl1: TLabel
      Left = 86
      Top = 26
      Width = 80
      Height = 18
      Caption = 'No. Register'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbl2: TLabel
      Left = 84
      Top = 52
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
    object lbl3: TLabel
      Left = 71
      Top = 79
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
    object lbl4: TLabel
      Left = 108
      Top = 106
      Width = 58
      Height = 18
      Cursor = crHandPoint
      Caption = 'Check In'
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
      Left = 98
      Top = 135
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
      Left = 121
      Top = 167
      Width = 45
      Height = 18
      Cursor = crHandPoint
      Caption = 'Day[s]'
      DragCursor = crHandPoint
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dbtxtNoRegis: TDBText
      Left = 192
      Top = 28
      Width = 337
      Height = 17
      DataField = 'no_register'
      DataSource = dsRegister
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbtxtGuestName: TDBText
      Left = 192
      Top = 51
      Width = 337
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
    object dbtxtRoomNo: TDBText
      Left = 192
      Top = 78
      Width = 337
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
    object dbtxtChkIn: TDBText
      Left = 192
      Top = 105
      Width = 337
      Height = 17
      DataField = 'dt_masuk'
      DataSource = dsRegister
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dbtxtChkOut: TDBText
      Left = 192
      Top = 134
      Width = 337
      Height = 17
      DataField = 'dt_keluar'
      DataSource = dsRegister
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblStayDays: TLabel
      Left = 192
      Top = 166
      Width = 31
      Height = 19
      Cursor = crHandPoint
      Caption = 'Rate'
      DragCursor = crHandPoint
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object grp1: TGroupBox
      Left = 71
      Top = 224
      Width = 458
      Height = 169
      Caption = 'Room moving -> Destination Room '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object lbl7: TLabel
        Left = 57
        Top = 88
        Width = 77
        Height = 18
        Caption = 'Room Type'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lbl8: TLabel
        Left = 68
        Top = 47
        Width = 66
        Height = 18
        Cursor = crHandPoint
        Caption = 'Room No.'
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
        Left = 104
        Top = 124
        Width = 30
        Height = 18
        Cursor = crHandPoint
        Caption = 'Rate'
        DragCursor = crHandPoint
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dbtxtDestRoomRate: TDBText
        Left = 150
        Top = 123
        Width = 304
        Height = 17
        DataField = 'tarif'
        DataSource = dsKamar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dbedtbtnRoomNo: TcxDBButtonEdit
        Left = 150
        Top = 43
        DataBinding.DataField = 'no_kamar'
        DataBinding.DataSource = dsKamar
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        TabOrder = 0
        OnClick = dbedtbtnRoomNoClick
        Width = 240
      end
      object dbedtbtnRoomType: TcxDBButtonEdit
        Left = 150
        Top = 84
        DataBinding.DataField = 'tipe'
        DataBinding.DataSource = dsKamar
        Properties.Buttons = <
          item
            Default = True
            Kind = bkText
          end>
        Properties.ReadOnly = True
        TabOrder = 1
        Width = 240
      end
    end
  end
  object zseqMoveRoom: TZSequence
    Left = 296
    Top = 40
  end
  object dsRegister: TDataSource
    DataSet = zqryRegister
    Left = 384
    Top = 40
  end
  object zqryKamar: TZQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      'select a.*, b.tp_kamar as tipe'
      'from master.mkamar a'
      'left join master.tipe_kamar b on b.id_tp_kamar=a.id_tp_kamar'
      'where a.is_isi='#39'0'#39
      'order by a.no_kamar asc')
    Params = <>
    Left = 488
    Top = 304
    object strngfldKamarno_kamar: TStringField
      DisplayLabel = 'ROOM Nr.'
      DisplayWidth = 20
      FieldName = 'no_kamar'
      Required = True
      Size = 10
    end
    object strngfldKamartipe: TStringField
      DisplayLabel = 'ROOM TYPE'
      DisplayWidth = 20
      FieldName = 'tipe'
      Required = True
      Size = 10
    end
    object fltfldKamartarif: TFloatField
      DisplayLabel = 'RATE'
      DisplayWidth = 20
      FieldName = 'tarif'
      Required = True
    end
    object strngfldKamaris_isi: TStringField
      DisplayLabel = 'OCC'
      DisplayWidth = 1
      FieldName = 'is_isi'
      Required = True
      Visible = False
      Size = 1
    end
    object lrgntfldKamarid_tp_kamar: TLargeintField
      DisplayWidth = 15
      FieldName = 'id_tp_kamar'
      Visible = False
    end
    object strngfldKamarisdetail: TStringField
      DisplayWidth = 1
      FieldName = 'isdetail'
      Required = True
      Visible = False
      Size = 1
    end
    object intgrfldKamarlvl: TIntegerField
      DisplayWidth = 10
      FieldName = 'lvl'
      Required = True
      Visible = False
    end
    object strngfldKamardiskripsi: TStringField
      DisplayWidth = 255
      FieldName = 'diskripsi'
      Visible = False
      Size = 255
    end
    object strngfldKamartotal_bed: TStringField
      DisplayWidth = 100
      FieldName = 'total_bed'
      Visible = False
      Size = 100
    end
    object dtmfldKamardt_ins: TDateTimeField
      DisplayWidth = 18
      FieldName = 'dt_ins'
      Required = True
      Visible = False
    end
    object dtmfldKamardt_upd: TDateTimeField
      DisplayWidth = 18
      FieldName = 'dt_upd'
      Required = True
      Visible = False
    end
    object strngfldKamarusr_ins: TStringField
      DisplayWidth = 30
      FieldName = 'usr_ins'
      Required = True
      Visible = False
      Size = 30
    end
    object strngfldKamarusr_upd: TStringField
      DisplayWidth = 30
      FieldName = 'usr_upd'
      Required = True
      Visible = False
      Size = 30
    end
    object strngfldKamarid_parent: TStringField
      DisplayWidth = 10
      FieldName = 'id_parent'
      Visible = False
      Size = 10
    end
    object strngfldKamarno_bed: TStringField
      DisplayWidth = 10
      FieldName = 'no_bed'
      Visible = False
      Size = 10
    end
    object strngfldKamartp_kamar: TStringField
      DisplayWidth = 255
      FieldName = 'tp_kamar'
      Visible = False
      Size = 255
    end
  end
  object dsKamar: TDataSource
    DataSet = zqryKamar
    Left = 532
    Top = 308
  end
  object wwlookupDlgRoomNo: TwwLookupDialog
    Selected.Strings = (
      'no_kamar'#9'20'#9'ROOM Nr.'#9'T'
      'tipe'#9'20'#9'ROOM TYPE'#9'F'
      'tarif'#9'20'#9'RATE'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWindow
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = zqryKamar
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 360
    CharCase = ecNormal
    ControlType.Strings = (
      'is_isi;CheckBox;1;0')
    Left = 495
    Top = 385
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
    Left = 184
    Top = 40
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
  object qExec: TZQuery
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
    Left = 328
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pno_reg'
        ParamType = ptUnknown
      end>
  end
end
