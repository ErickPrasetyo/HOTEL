object frmFloorData: TfrmFloorData
  Left = 0
  Top = 0
  Caption = 'Floor Data'
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
    Height = 413
    BorderStyle = cxcbsNone
    Align = alClient
    Bands = <
      item
        Caption.Text = 'Kolom 1'
      end>
    DataController.DataSource = DataSource1
    DataController.ParentField = 'id_lantai'
    DataController.KeyField = 'id_lantai'
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
    object cxdbtreeColumnDBTreeListRoomDataid_lantai: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.Text = 'ID'
      DataBinding.FieldName = 'id_lantai'
      Width = 42
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxdbtreeColumnDBTreeListRoomDatadiskripsi: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.Text = 'Floor Description'
      DataBinding.FieldName = 'diskripsi'
      Width = 333
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxdbtreeColumnDBTreeListRoomDatausr_ins: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.Text = 'User Input'
      DataBinding.FieldName = 'usr_ins'
      Width = 180
      Position.ColIndex = 2
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxdbtreeColumnDBTreeListRoomDatausr_upd: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.Text = 'User Update'
      DataBinding.FieldName = 'usr_upd'
      Width = 180
      Position.ColIndex = 3
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxdbtreeColumnDBTreeListRoomDatadt_upd: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.Text = 'Last Update'
      DataBinding.FieldName = 'dt_upd'
      Width = 180
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
      Left = 15
      Top = 17
      Width = 105
      Height = 85
      Stretch = True
    end
    object Label2: TLabel
      Left = 129
      Top = 16
      Width = 241
      Height = 17
      AutoSize = False
      Caption = 'MASTER LANTAI (FLOOR)'
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
      Top = 35
      Width = 241
      Height = 49
      AutoSize = False
      Caption = 'Berisi master data tingkat/Lantai yang ada pada Hotel'
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
    Top = 528
    Width = 1139
    Height = 72
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
    object shp6: TShape
      Left = 11
      Top = 14
      Width = 349
      Height = 41
      Brush.Color = 16710899
    end
    object cxlbl6: TcxLabel
      Left = 15
      Top = 22
      Caption = 'Floor Description'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object dbedtbtnRoomFloor: TcxDBButtonEdit
      Left = 153
      Top = 21
      DataBinding.DataField = 'diskripsi'
      DataBinding.DataSource = DataSource1
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 1
      Width = 197
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
    Left = 568
    Top = 64
  end
  object zqryDisplay: TZQuery
    Connection = DataModule1.zconHotel
    BeforePost = zqryDisplayBeforePost
    OnNewRecord = zqryDisplayNewRecord
    SQL.Strings = (
      'select * from master.mlantai'
      'order by id_lantai;')
    Params = <>
    Left = 568
    Top = 16
    object lrgntfldDisplayid_lantai: TLargeintField
      FieldName = 'id_lantai'
      Required = True
    end
    object strngfldDisplaydiskripsi: TStringField
      FieldName = 'diskripsi'
      Size = 255
    end
    object strngfldDisplayusr_ins: TStringField
      FieldName = 'usr_ins'
      Size = 30
    end
    object strngfldDisplayusr_upd: TStringField
      FieldName = 'usr_upd'
      Size = 30
    end
    object dtmfldDisplaydt_ins: TDateTimeField
      FieldName = 'dt_ins'
    end
    object dtmfldDisplaydt_upd: TDateTimeField
      FieldName = 'dt_upd'
    end
  end
end
