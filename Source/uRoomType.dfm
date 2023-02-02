object frmRoomType: TfrmRoomType
  Left = 0
  Top = 0
  Caption = 'Room Type'
  ClientHeight = 661
  ClientWidth = 1139
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object shp5: TShape
    Left = 14
    Top = 62
    Width = 275
    Height = 41
    Brush.Color = 16710899
  end
  object shp9: TShape
    Left = -4
    Top = 501
    Width = 338
    Height = 41
    Brush.Color = 16710899
  end
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 1139
    Height = 121
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object Image1: TImage
      Left = 14
      Top = 18
      Width = 105
      Height = 85
      Stretch = True
    end
    object Label2: TLabel
      Left = 129
      Top = 18
      Width = 241
      Height = 17
      AutoSize = False
      Caption = 'MASTER TYPE KAMAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label1: TLabel
      Left = 129
      Top = 39
      Width = 241
      Height = 49
      AutoSize = False
      Caption = 'Berisi data Type Kamar yang tersedia pada Hotel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
  end
  object pnlFooter: TPanel
    Left = 0
    Top = 411
    Width = 1139
    Height = 190
    Align = alBottom
    Color = 16315891
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object shp3: TShape
      Left = 10
      Top = 94
      Width = 483
      Height = 41
      Brush.Color = 16710899
    end
    object shp4: TShape
      Left = 10
      Top = 54
      Width = 483
      Height = 41
      Brush.Color = 16710899
    end
    object shp8: TShape
      Left = 10
      Top = 134
      Width = 483
      Height = 41
      Brush.Color = 16710899
    end
    object shp7: TShape
      Left = 10
      Top = 14
      Width = 483
      Height = 41
      Brush.Color = 16710899
    end
    object cxlbl5: TcxLabel
      Left = 20
      Top = 25
      Caption = 'Tipe Kamar'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxlbl7: TcxLabel
      Left = 20
      Top = 65
      Caption = 'Tipe Bed'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxlbl8: TcxLabel
      Left = 18
      Top = 105
      Caption = 'Jumlah Bed'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object edtTypeKamar: TcxDBButtonEdit
      Left = 133
      Top = 21
      DataBinding.DataField = 'tp_kamar'
      DataBinding.DataSource = dsGuest
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 3
      Width = 224
    end
    object edtJumlahBed: TcxDBButtonEdit
      Left = 133
      Top = 101
      DataBinding.DataField = 'jml_bed'
      DataBinding.DataSource = dsGuest
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 4
      Width = 224
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 133
      Top = 141
      Caption = 'Can Smoke'
      DataBinding.DataField = 'can_smoke'
      DataBinding.DataSource = dsGuest
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      TabOrder = 5
    end
    object edtTipeBed: TcxDBComboBox
      Left = 133
      Top = 61
      DataBinding.DataField = 'tipe_bed'
      DataBinding.DataSource = dsGuest
      Properties.Items.Strings = (
        'Single Bed'
        'Twin Bed'
        'Double Bed'
        'Kings Bed')
      TabOrder = 6
      Width = 222
    end
  end
  object advpnlNav: TAdvPanel
    Left = 0
    Top = 601
    Width = 1139
    Height = 60
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvNone
    Color = 16710899
    TabOrder = 2
    UseDockManager = True
    Version = '2.5.5.1'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Indent = 0
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    DesignSize = (
      1139
      60)
    FullHeight = 200
    object pnlCrudCtrl: TPanel
      Left = 10
      Top = 3
      Width = 593
      Height = 54
      BevelOuter = bvNone
      Color = 16710899
      ParentBackground = False
      TabOrder = 0
      object glbtnAddNew: TAdvGlassButton
        Left = 32
        Top = 12
        Width = 103
        Height = 32
        BackColor = clGreen
        Caption = 'Add New'
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
        OnClick = glbtnAddNewClick
      end
      object glbtnEdit: TAdvGlassButton
        Left = 142
        Top = 12
        Width = 91
        Height = 32
        BackColor = clNavy
        Caption = 'Edit'
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
        OnClick = glbtnEditClick
      end
      object glbtnDel: TAdvGlassButton
        Left = 239
        Top = 12
        Width = 106
        Height = 32
        BackColor = clRed
        Caption = 'Delete'
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
        Version = '1.3.0.2'
        OnClick = glbtnDelClick
      end
      object glbtnRefresh: TAdvGlassButton
        Left = 432
        Top = 12
        Width = 105
        Height = 32
        BackColor = clAqua
        Caption = 'Refresh'
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
        TabOrder = 3
        Version = '1.3.0.2'
        OnClick = glbtnRefreshClick
      end
    end
    object pnlCrudAct: TPanel
      Left = 618
      Top = 6
      Width = 295
      Height = 54
      BevelOuter = bvNone
      Color = 16710899
      ParentBackground = False
      TabOrder = 1
      Visible = False
      object glbtnCrudSave: TAdvGlassButton
        Left = 7
        Top = 9
        Width = 106
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
        Version = '1.3.0.2'
        OnClick = glbtnCrudSaveClick
      end
      object glbtnCrudCancel: TAdvGlassButton
        Left = 119
        Top = 9
        Width = 106
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
        Version = '1.3.0.2'
        OnClick = glbtnCrudCancelClick
      end
    end
    object glbtnCLose: TAdvGlassButton
      Left = 1024
      Top = 15
      Width = 99
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
      Version = '1.3.0.2'
      OnClick = glbtnCLoseClick
    end
  end
  object cxgrdGuest: TcxGrid
    Left = 0
    Top = 121
    Width = 1139
    Height = 290
    Align = alClient
    TabOrder = 3
    object cxgrdGuestDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnFocusedItemChanged = cxgrdGuestDBTableView1FocusedItemChanged
      OnFocusedRecordChanged = cxgrdGuestDBTableView1FocusedRecordChanged
      DataController.DataSource = dsGuest
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      Styles.ContentEven = DataModule1.cxstyl2
      Styles.ContentOdd = DataModule1.cxstyl1
      Styles.Selection = DataModule1.cxstylSel
      object cxgrdbclmnName: TcxGridDBColumn
        Caption = 'Room Type'
        DataBinding.FieldName = 'tp_kamar'
        HeaderAlignmentHorz = taCenter
        Width = 245
      end
      object cxgrdbclmnBedType: TcxGridDBColumn
        DataBinding.FieldName = 'tipe_bed'
        HeaderAlignmentHorz = taCenter
        Width = 198
      end
      object cxgrdbclmnUsr_ins: TcxGridDBColumn
        Caption = 'User Update'
        DataBinding.FieldName = 'usr_upd'
        Width = 159
      end
      object cxgrdbclmndt_upd: TcxGridDBColumn
        Caption = 'Tgl. Update'
        DataBinding.FieldName = 'dt_upd'
        Width = 182
      end
    end
    object cxgrdlvlGuest: TcxGridLevel
      GridView = cxgrdGuestDBTableView1
    end
  end
  object dsGuest: TDataSource
    DataSet = zqryDisplay
    Left = 608
    Top = 24
  end
  object zqryDisplay: TZQuery
    Connection = DataModule1.zconHotel
    BeforePost = zqryDisplayBeforePost
    OnNewRecord = zqryDisplayNewRecord
    SQL.Strings = (
      'select * from master.tipe_kamar'
      'order by id_tp_kamar;')
    Params = <>
    Left = 664
    Top = 24
    object lrgntfldDisplayid_tp_kamar: TLargeintField
      FieldName = 'id_tp_kamar'
      Required = True
    end
    object strngfldDisplaytp_kamar: TStringField
      FieldName = 'tp_kamar'
      Required = True
      Size = 10
    end
    object strngfldDisplaydiskripsi: TStringField
      FieldName = 'diskripsi'
      Size = 255
    end
    object intgrfldDisplayjml_dewasa: TIntegerField
      FieldName = 'jml_dewasa'
      Required = True
    end
    object intgrfldDisplayjml_anak: TIntegerField
      FieldName = 'jml_anak'
      Required = True
    end
    object intgrfldDisplayjml_bayi: TIntegerField
      FieldName = 'jml_bayi'
      Required = True
    end
    object dtmfldDisplaydt_ins: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object dtmfldDisplaydt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
    object strngfldDisplayusr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 30
    end
    object strngfldDisplayusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object intgrfldDisplayjml_bed: TIntegerField
      FieldName = 'jml_bed'
      Required = True
    end
    object strngfldDisplaycan_smoke: TStringField
      FieldName = 'can_smoke'
      Size = 1
    end
    object strngfldDisplaytipe_bed: TStringField
      FieldName = 'tipe_bed'
      Size = 100
    end
    object fltfldDisplaytarif: TFloatField
      FieldName = 'tarif'
      Required = True
    end
  end
end
