object frmItemResto: TfrmItemResto
  Left = 0
  Top = 0
  Caption = 'Restaurant Items'
  ClientHeight = 660
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
  object cxDBTreeListRoomData: TcxDBTreeList
    Left = 0
    Top = 115
    Width = 1139
    Height = 291
    BorderStyle = cxcbsNone
    Align = alClient
    Bands = <
      item
        Caption.Text = 'Kolom 1'
      end>
    DataController.DataSource = DataSource1
    DataController.ParentField = 'id_parent'
    DataController.KeyField = 'id_item'
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.SkinName = ''
    Navigator.Buttons.CustomButtons = <>
    Navigator.Buttons.PriorPage.Visible = False
    Navigator.Buttons.NextPage.Visible = False
    Navigator.Buttons.Insert.Visible = False
    Navigator.Buttons.Delete.Visible = False
    Navigator.Buttons.Edit.Visible = False
    Navigator.Buttons.Post.Visible = False
    Navigator.Buttons.Cancel.Visible = False
    Navigator.Buttons.Refresh.Visible = True
    Navigator.Buttons.SaveBookmark.Visible = False
    Navigator.Buttons.GotoBookmark.Visible = False
    Navigator.Buttons.Filter.Visible = True
    Navigator.InfoPanel.Visible = True
    Navigator.Visible = True
    OptionsData.Editing = False
    OptionsSelection.CellSelect = False
    RootValue = -1
    Styles.Selection = DataModule1.cxstylSel
    Styles.ContentEven = DataModule1.cxstyl2
    Styles.ContentOdd = DataModule1.cxstyl1
    TabOrder = 0
    object cxdbtreeColumnDBTreeListRoomDataid_item: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.Text = 'ID/BARCODE'
      DataBinding.FieldName = 'id_item'
      Width = 100
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxdbtreeColumnDBTreeListRoomDatasatuan: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.Text = 'SATUAN'
      DataBinding.FieldName = 'satuan'
      Width = 100
      Position.ColIndex = 2
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxdbtreeColumnDBTreeListRoomDataitem_name: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.Text = 'ITEM NAME'
      DataBinding.FieldName = 'item_name'
      Width = 385
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxdbtreeColumnDBTreeListRoomDatahrg_jual: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.Text = 'SELL PRICE'
      DataBinding.FieldName = 'hrg_jual'
      Width = 150
      Position.ColIndex = 3
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxdbtreeColumnDBTreeListRoomDataisactive: TcxDBTreeListColumn
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.Alignment = taCenter
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Caption.AlignHorz = taCenter
      Caption.Text = 'ACTIVE'
      DataBinding.FieldName = 'isactive'
      Width = 100
      Position.ColIndex = 4
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
  end
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 1139
    Height = 115
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 1
    object Image1: TImage
      Left = 14
      Top = 18
      Width = 105
      Height = 85
      Stretch = True
    end
    object lblFormName: TLabel
      Left = 125
      Top = 12
      Width = 241
      Height = 17
      AutoSize = False
      Caption = 'RESTAURANT ITEMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object lblFormDesc: TLabel
      Left = 125
      Top = 35
      Width = 241
      Height = 49
      AutoSize = False
      Caption = 'Restaurant items list'
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
    Top = 406
    Width = 1139
    Height = 194
    Align = alBottom
    Color = 16315891
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object shp1: TShape
      Left = 6
      Top = 54
      Width = 549
      Height = 41
      Brush.Color = 16710899
    end
    object shp3: TShape
      Left = 6
      Top = 134
      Width = 549
      Height = 41
      Brush.Color = 16710899
    end
    object shp4: TShape
      Left = 6
      Top = 94
      Width = 275
      Height = 41
      Brush.Color = 16710899
    end
    object shp6: TShape
      Left = 6
      Top = 14
      Width = 549
      Height = 41
      Brush.Color = 16710899
    end
    object shp8: TShape
      Left = 280
      Top = 94
      Width = 275
      Height = 41
      Brush.Color = 16710899
    end
    object cxlbl2: TcxLabel
      Left = 10
      Top = 21
      Caption = 'Item Code'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxlbl4: TcxLabel
      Left = 10
      Top = 101
      Caption = 'Satuan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxlbl1: TcxLabel
      Left = 10
      Top = 62
      Caption = 'Item Name'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object dbedtbtnRoomNo: TcxDBButtonEdit
      Left = 104
      Top = 61
      DataBinding.DataField = 'item_name'
      DataBinding.DataSource = DataSource1
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 3
      Width = 435
    end
    object dbedtbtnRoomRate: TcxDBButtonEdit
      Left = 378
      Top = 101
      DataBinding.DataField = 'hrg_jual'
      DataBinding.DataSource = DataSource1
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 4
      Width = 161
    end
    object cxlbl5: TcxLabel
      Left = 284
      Top = 101
      Caption = 'Sell Price'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object dbedtbtnRoomType: TcxDBButtonEdit
      Left = 104
      Top = 21
      DataBinding.DataField = 'id_item'
      DataBinding.DataSource = DataSource1
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 6
      Width = 161
    end
    object txdbcbRoomDetail: TcxDBCheckBox
      Left = 125
      Top = 141
      Caption = 'Detail'
      DataBinding.DataField = 'isdetail'
      DataBinding.DataSource = DataSource1
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      TabOrder = 7
    end
    object txdbcbActive: TcxDBCheckBox
      Left = 378
      Top = 141
      Caption = 'Active'
      DataBinding.DataField = 'isactive'
      DataBinding.DataSource = DataSource1
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      TabOrder = 8
    end
    object edtSatuan: TcxDBLookupComboBox
      Left = 104
      Top = 101
      DataBinding.DataField = 'satuan'
      DataBinding.DataSource = DataSource1
      Properties.KeyFieldNames = 'satuan'
      Properties.ListColumns = <
        item
          Caption = 'SATUAN'
          Width = 161
          FieldName = 'satuan'
        end>
      Properties.ListSource = dsSatuan
      TabOrder = 9
      OnEnter = edtSatuanEnter
      OnKeyPress = edtSatuanKeyPress
      Width = 161
    end
  end
  object advpnlNav: TAdvPanel
    Left = 0
    Top = 600
    Width = 1139
    Height = 60
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvNone
    Color = 16710899
    TabOrder = 3
    UseDockManager = True
    Version = '2.5.5.1'
    Caption.Color = 16710899
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
        Left = 7
        Top = 12
        Width = 114
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
        Left = 127
        Top = 12
        Width = 98
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
        Left = 231
        Top = 12
        Width = 114
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
        Left = 384
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
      Top = 3
      Width = 295
      Height = 54
      BevelOuter = bvNone
      Color = 16710899
      ParentBackground = False
      TabOrder = 1
      Visible = False
      object glbtnCrudSave: TAdvGlassButton
        Left = 7
        Top = 12
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
        Version = '1.3.0.2'
        OnClick = glbtnCrudSaveClick
      end
      object glbtnCrudCancel: TAdvGlassButton
        Left = 111
        Top = 12
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
        Version = '1.3.0.2'
        OnClick = glbtnCrudCancelClick
      end
    end
    object glbtnCLose: TAdvGlassButton
      Left = 1016
      Top = 15
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
      Version = '1.3.0.2'
      OnClick = glbtnCLoseClick
    end
  end
  object DataSource1: TDataSource
    DataSet = zqryDisplay
    Left = 512
    Top = 72
  end
  object zqryDisplay: TZQuery
    Connection = DataModule1.zconHotel
    BeforePost = zqryDisplayBeforePost
    OnNewRecord = zqryDisplayNewRecord
    Params = <>
    Left = 512
    Top = 16
    object strngfldDisplayid_item: TStringField
      FieldName = 'id_item'
      Required = True
      Size = 50
    end
    object strngfldDisplaysatuan: TStringField
      FieldName = 'satuan'
      Required = True
      Size = 10
    end
    object strngfldDisplayid_parent: TStringField
      FieldName = 'id_parent'
      Size = 50
    end
    object strngfldDisplayitem_name: TStringField
      FieldName = 'item_name'
      Required = True
      Size = 255
    end
    object strngfldDisplayid_cat_item: TStringField
      FieldName = 'id_cat_item'
      Required = True
      Size = 2
    end
    object strngfldDisplayisdetail: TStringField
      FieldName = 'isdetail'
      Required = True
      Size = 1
    end
    object strngfldDisplayisinventory: TStringField
      FieldName = 'isinventory'
      Required = True
      Size = 1
    end
    object fltfldDisplaystok_awal: TFloatField
      FieldName = 'stok_awal'
      Required = True
    end
    object fltfldDisplaymin_stock: TFloatField
      FieldName = 'min_stock'
      Required = True
    end
    object fltfldDisplayhrg_beli: TFloatField
      FieldName = 'hrg_beli'
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
    object dtmfldDisplaydt_ins: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object dtmfldDisplaydt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
    object fltfldDisplayhrg_jual: TFloatField
      FieldName = 'hrg_jual'
      Required = True
    end
    object intgrfldDisplaylvl: TIntegerField
      FieldName = 'lvl'
      Required = True
    end
    object strngfldDisplaybarcode: TStringField
      FieldName = 'barcode'
      Size = 255
    end
    object fltfldDisplayhpp: TFloatField
      FieldName = 'hpp'
      Required = True
    end
    object strngfldDisplayid_rek_gl_1: TStringField
      FieldName = 'id_rek_gl_1'
      Size = 30
    end
    object strngfldDisplayid_rek_gl_2: TStringField
      FieldName = 'id_rek_gl_2'
      Size = 30
    end
    object strngfldDisplayisactive: TStringField
      FieldName = 'isactive'
      Size = 1
    end
  end
  object zroqryRoomType: TZReadOnlyQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      'select * from master.tipe_kamar'
      'order by id_tp_kamar')
    Params = <>
    Left = 600
    Top = 64
  end
  object wwlookupDlgRoomType: TwwLookupDialog
    Selected.Strings = (
      'tp_kamar'#9'10'#9'Room Type'#9'F'#9)
    GridTitleAlignment = taLeftJustify
    GridColor = clWindow
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = zroqryRoomType
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 360
    CharCase = ecNormal
    Left = 608
    Top = 16
  end
  object qSatuan: TZReadOnlyQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      'select satuan'
      'from master.msatuan'
      'order by satuan')
    Params = <>
    Left = 456
    Top = 16
    object qSatuansatuan: TStringField
      FieldName = 'satuan'
      ReadOnly = True
      Size = 10
    end
  end
  object dsSatuan: TDataSource
    DataSet = qSatuan
    Left = 448
    Top = 64
  end
end
