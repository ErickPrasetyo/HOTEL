object frmUserMgt: TfrmUserMgt
  Left = 0
  Top = 0
  Caption = 'frmUserMgt'
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
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 1139
    Height = 105
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object img1: TImage
      Left = 10
      Top = 12
      Width = 105
      Height = 85
      Stretch = True
    end
    object lbl1: TLabel
      Left = 121
      Top = 31
      Width = 241
      Height = 49
      AutoSize = False
      Caption = 'Majemen User Aplikasi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object lbl2: TLabel
      Left = 121
      Top = 12
      Width = 241
      Height = 13
      AutoSize = False
      Caption = 'USER MANAGEMENT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
  end
  object cxPageCtrlUserMgt: TcxPageControl
    Left = 0
    Top = 105
    Width = 1139
    Height = 496
    Align = alClient
    Color = clMedGray
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    Properties.ActivePage = tsDetail
    Properties.CustomButtons.Buttons = <>
    OnChange = cxPageCtrlUserMgtChange
    OnPageChanging = cxPageCtrlUserMgtPageChanging
    ClientRectBottom = 492
    ClientRectLeft = 4
    ClientRectRight = 1135
    ClientRectTop = 24
    object tsRekap: TcxTabSheet
      Caption = 'Browse'
      ImageIndex = 0
      object cxgrdRekap: TcxGrid
        Left = 0
        Top = 0
        Width = 1131
        Height = 468
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        object cxGridRekap: TcxGridDBTableView
          OnDblClick = cxGridRekapDblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsMaster
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0'
              Kind = skSum
            end
            item
              Kind = skCount
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.Footer = True
          Styles.ContentEven = DataModule1.cxstyl2
          Styles.ContentOdd = DataModule1.cxstyl1
          Styles.Selection = DataModule1.cxstylSel
          object cxgrdbclmnGridRekapvuser: TcxGridDBColumn
            Caption = 'User Name'
            DataBinding.FieldName = 'vuser'
            HeaderAlignmentHorz = taCenter
          end
          object cxgrdbclmnGridRekapfull_name: TcxGridDBColumn
            Caption = 'Full Name'
            DataBinding.FieldName = 'full_name'
            HeaderAlignmentHorz = taCenter
          end
          object cxgrdbclmnGridRekappasswd: TcxGridDBColumn
            Caption = 'Password'
            DataBinding.FieldName = 'passwd'
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
        end
        object cxgrdlvlRekap: TcxGridLevel
          GridView = cxGridRekap
        end
      end
    end
    object tsDetail: TcxTabSheet
      Caption = 'Detail'
      ImageIndex = 1
      object pnlDetailData: TPanel
        Left = 0
        Top = 0
        Width = 1131
        Height = 90
        Align = alTop
        BevelOuter = bvNone
        Color = 16382457
        TabOrder = 0
        object lbl3: TLabel
          Left = 12
          Top = 11
          Width = 67
          Height = 13
          Caption = 'Nama User :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lbl4: TLabel
          Left = 12
          Top = 35
          Width = 60
          Height = 13
          Caption = 'Password :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lbl5: TLabel
          Left = 12
          Top = 59
          Width = 89
          Height = 13
          Caption = 'Nama Lengkap :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object cxDbEditvuser: TcxDBTextEdit
          Left = 111
          Top = 8
          DataBinding.DataField = 'vuser'
          DataBinding.DataSource = dsMaster
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 366
        end
        object cxDbEditpasswd: TcxDBTextEdit
          Left = 111
          Top = 32
          DataBinding.DataField = 'passwd'
          DataBinding.DataSource = dsMaster
          ParentFont = False
          Properties.EchoMode = eemPassword
          Properties.PasswordChar = '*'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 366
        end
        object cxDbEditfull_name: TcxDBTextEdit
          Left = 111
          Top = 56
          DataBinding.DataField = 'full_name'
          DataBinding.DataSource = dsMaster
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 366
        end
      end
      object pnlDetailNav: TPanel
        Left = 0
        Top = 90
        Width = 1131
        Height = 29
        Align = alTop
        BevelOuter = bvNone
        Color = 11507049
        TabOrder = 1
        object btnCreateMenu: TAdvGlowButton
          Left = 6
          Top = 5
          Width = 81
          Height = 19
          Caption = 'Make Menu'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnCreateMenuClick
          Appearance.BorderColor = 12631218
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = 4548219
          Appearance.Color = 14671574
          Appearance.ColorTo = 15000283
          Appearance.ColorChecked = 11918331
          Appearance.ColorCheckedTo = 7915518
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = 14144974
          Appearance.ColorMirrorTo = 15197664
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
      end
      object grdDetail: TcxGrid
        Left = 0
        Top = 119
        Width = 1131
        Height = 349
        Align = alClient
        TabOrder = 2
        object grddbtvDetail: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          DataController.DataSource = dsDetail
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0'
              Kind = skSum
              FieldName = 'sub_total'
            end>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnMRUItemsList = False
          OptionsBehavior.AlwaysShowEditor = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.GroupRowStyle = grsOffice11
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderHeight = 25
          OptionsView.Indicator = True
          Styles.Header = DataModule1.cxstylSel
          object grddbtvDetaildiskripsi: TcxGridDBColumn
            Caption = 'NAMA MENU'
            DataBinding.FieldName = 'menu_caption'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.FilteringPopupIncrementalFiltering = True
            Styles.Header = DataModule1.cxstylSel
            Width = 350
          end
          object grddbtvDetailqty: TcxGridDBColumn
            Caption = 'LIHAT'
            DataBinding.FieldName = 'isbrowse'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.FilteringPopupIncrementalFiltering = True
            Styles.Header = DataModule1.cxstylSel
            Width = 69
          end
          object grddbtvDetailColumn1: TcxGridDBColumn
            Caption = 'TAMBAH'
            DataBinding.FieldName = 'isinsert'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Styles.Header = DataModule1.cxstylSel
            Width = 65
          end
          object grddbtvDetailColumn2: TcxGridDBColumn
            Caption = 'EDIT'
            DataBinding.FieldName = 'isedit'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Styles.Header = DataModule1.cxstylSel
            Width = 65
          end
          object grddbtvDetailColumn3: TcxGridDBColumn
            Caption = 'HAPUS'
            DataBinding.FieldName = 'isdelete'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Styles.Header = DataModule1.cxstylSel
            Width = 61
          end
          object grddbtvDetailColumn4: TcxGridDBColumn
            Caption = 'CETAK'
            DataBinding.FieldName = 'isprint'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Styles.Header = DataModule1.cxstylSel
            Width = 64
          end
          object grddbtvDetailColumn5: TcxGridDBColumn
            Caption = 'EXPORT'
            DataBinding.FieldName = 'isexport'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Styles.Header = DataModule1.cxstylSel
            Width = 67
          end
        end
        object grdlvlDetail: TcxGridLevel
          GridView = grddbtvDetail
        end
      end
      object Memo1: TMemo
        Left = 695
        Top = 163
        Width = 424
        Height = 145
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 3
        Visible = False
      end
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
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
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
      TabOrder = 0
      Version = '1.3.0.2'
      OnClick = glbtnCLoseClick
    end
    object pnlCrudCtrl: TPanel
      Left = 10
      Top = 3
      Width = 593
      Height = 54
      BevelOuter = bvNone
      Color = 16710899
      ParentBackground = False
      TabOrder = 1
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
        TabOrder = 0
        Version = '1.3.0.2'
      end
      object glbtnAddNew: TAdvGlassButton
        Left = 16
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
        TabOrder = 1
        Version = '1.3.0.2'
        OnClick = glbtnAddNewClick
      end
      object glbtnEdit: TAdvGlassButton
        Left = 136
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
        TabOrder = 2
        Version = '1.3.0.2'
        OnClick = glbtnEditClick
      end
      object glbtnDel: TAdvGlassButton
        Left = 240
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
        TabOrder = 3
        Version = '1.3.0.2'
        OnClick = glbtnDelClick
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
      TabOrder = 2
      Visible = False
      object glbtnCrudSave: TAdvGlassButton
        Left = 7
        Top = 12
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
        Top = 12
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
  end
  object zqryMaster: TZQuery
    Connection = DataModule1.zconHotel
    BeforePost = zqryMasterBeforePost
    OnNewRecord = zqryMasterNewRecord
    SQL.Strings = (
      'select * from master.vuser')
    Params = <>
    Left = 312
    Top = 16
    object strngfldMastervuser: TStringField
      FieldName = 'vuser'
      Required = True
      Size = 30
    end
    object strngfldMasterpasswd: TStringField
      FieldName = 'passwd'
      Required = True
      OnSetText = strngfldMasterpasswdSetText
      Size = 32
    end
    object strngfldMasterfull_name: TStringField
      FieldName = 'full_name'
      Size = 50
    end
  end
  object dsMaster: TDataSource
    DataSet = zqryMaster
    Left = 360
    Top = 24
  end
  object zqryDetail: TZQuery
    Connection = DataModule1.zconHotel
    OnCalcFields = zqryDetailCalcFields
    BeforePost = zqryDetailBeforePost
    OnNewRecord = zqryDetailNewRecord
    SQL.Strings = (
      'select * from master.vuser_menu'
      'where  vuser=:vuser'
      'order by imenu asc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'vuser'
        ParamType = ptUnknown
      end>
    Left = 440
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vuser'
        ParamType = ptUnknown
      end>
    object strngfldDetailvuser: TStringField
      FieldName = 'vuser'
      Required = True
      Size = 30
    end
    object intgrfldDetailimenu: TIntegerField
      FieldName = 'imenu'
      Required = True
    end
    object strngfldDetailmenu_name: TStringField
      FieldName = 'menu_name'
      Size = 50
    end
    object strngfldDetailmenu_caption: TStringField
      FieldName = 'menu_caption'
      Size = 50
    end
    object intgrfldDetaillvl: TIntegerField
      FieldName = 'lvl'
    end
    object intgrfldDetailtag: TIntegerField
      FieldName = 'tag'
      Required = True
    end
    object strngfldDetailisbrowse: TStringField
      FieldName = 'isbrowse'
      Required = True
      Size = 1
    end
    object strngfldDetailisinsert: TStringField
      FieldName = 'isinsert'
      Required = True
      Size = 1
    end
    object strngfldDetailisedit: TStringField
      FieldName = 'isedit'
      Required = True
      Size = 1
    end
    object strngfldDetailisdelete: TStringField
      FieldName = 'isdelete'
      Required = True
      Size = 1
    end
    object strngfldDetailisprint: TStringField
      FieldName = 'isprint'
      Required = True
      Size = 1
    end
    object strngfldDetailisexport: TStringField
      FieldName = 'isexport'
      Required = True
      Size = 1
    end
    object strngfldDetailis_preparer: TStringField
      FieldName = 'is_preparer'
      Required = True
      Size = 1
    end
    object strngfldDetailis_reviewer: TStringField
      FieldName = 'is_reviewer'
      Required = True
      Size = 1
    end
    object strngfldDetailis_approver: TStringField
      FieldName = 'is_approver'
      Required = True
      Size = 1
    end
  end
  object dsDetail: TDataSource
    DataSet = zqryDetail
    Left = 488
    Top = 32
  end
end
