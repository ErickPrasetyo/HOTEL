object frmLapKasir: TfrmLapKasir
  Left = 0
  Top = 0
  Caption = 'Laporan Kasir'
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
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 1139
    Height = 109
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object Image1: TImage
      Left = 10
      Top = 12
      Width = 105
      Height = 85
      Stretch = True
    end
    object Label1: TLabel
      Left = 121
      Top = 31
      Width = 256
      Height = 49
      AutoSize = False
      Caption = 
        'Berisi rekap data per Shift dari transaksi billing Tamu yang sud' +
        'ah melakukan pembayaran'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label2: TLabel
      Left = 121
      Top = 12
      Width = 241
      Height = 13
      AutoSize = False
      Caption = 'LAPORAN KASIR PER SHIFT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
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
    TabOrder = 1
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
        Left = 16
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
        Left = 126
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
        Left = 223
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
        Left = 335
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
      object AdvGlbtnPrint: TAdvGlassButton
        Left = 446
        Top = 12
        Width = 106
        Height = 32
        BackColor = clLime
        BackGroundSymbolColor = clCream
        Caption = 'Print'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ForeColor = clWhite
        GlowColor = 16760205
        InnerBorderColor = clSkyBlue
        OuterBorderColor = clWhite
        ParentFont = False
        ShineColor = clWhite
        TabOrder = 4
        Version = '1.3.0.2'
        OnClick = AdvGlbtnPrintClick
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
  object cxPageCtrlGuestBill: TcxPageControl
    Left = 0
    Top = 109
    Width = 1139
    Height = 492
    Align = alClient
    Color = clMedGray
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    Properties.ActivePage = tsBrowse
    Properties.CustomButtons.Buttons = <>
    OnChange = cxPageCtrlGuestBillChange
    ClientRectBottom = 492
    ClientRectRight = 1139
    ClientRectTop = 24
    object tsBrowse: TcxTabSheet
      Caption = 'Browse Guest Billing'
      ImageIndex = 0
      object cxgrdGuest: TcxGrid
        Left = 0
        Top = 57
        Width = 1139
        Height = 411
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwGuestDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxgrdbtblvwGuestDBTableView1CellDblClick
          OnFocusedItemChanged = cxgrdbtblvwGuestDBTableView1FocusedItemChanged
          OnFocusedRecordChanged = cxgrdbtblvwGuestDBTableView1FocusedRecordChanged
          DataController.DataSource = dsGuest
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0'
              Kind = skSum
              Column = cxgrdbclmnGuestDBTableView1total
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
          object cxgrdbclmnGuestDBTableView1no_nota: TcxGridDBColumn
            Caption = 'No. Transaksi'
            DataBinding.FieldName = 'no_kasir'
            Width = 116
          end
          object cxgrdbclmnGuestDBTableView1dt_nota: TcxGridDBColumn
            Caption = 'Tgl. Transaksi'
            DataBinding.FieldName = 'dt_kasir'
            Width = 129
          end
          object cxgrdbclmnGuestDBTableView1no_register: TcxGridDBColumn
            Caption = 'Tgl. Laporan'
            DataBinding.FieldName = 'dt_transaksi'
            Width = 128
          end
          object cxgrdbclmnGuestDBTableView1nomor_id: TcxGridDBColumn
            Caption = 'Shift'
            DataBinding.FieldName = 'shift'
            Width = 55
          end
          object cxgrdbclmnGuestDBTableView1nama_tamu: TcxGridDBColumn
            Caption = 'Nama Petugas'
            DataBinding.FieldName = 'an'
            Width = 204
          end
          object cxgrdbclmnGuestDBTableView1no_kamar: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'keterangan'
            Width = 170
          end
          object cxgrdbclmnGuestDBTableView1total: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'total'
            Width = 100
          end
          object cxgrdbclmnGuestDBTableView1usr_upd: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'usr_upd'
            Width = 73
          end
          object cxgrdbclmnGuestDBTableView1ispost: TcxGridDBColumn
            Caption = 'Post'
            DataBinding.FieldName = 'ispost'
            Width = 71
          end
          object cxgrdbclmnGuestDBTableView1iscancel: TcxGridDBColumn
            Caption = 'Cancel'
            DataBinding.FieldName = 'iscancel'
            Width = 71
          end
        end
        object cxgrdlvlGuest: TcxGridLevel
          GridView = cxgrdbtblvwGuestDBTableView1
        end
      end
      object pnlSearchPanel: TPanel
        Left = 0
        Top = 0
        Width = 1139
        Height = 57
        Align = alTop
        TabOrder = 1
        object lbl1: TLabel
          Left = 27
          Top = 17
          Width = 74
          Height = 19
          Caption = 'From Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl2: TLabel
          Left = 301
          Top = 17
          Width = 14
          Height = 19
          Caption = 'to'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object wwDbDtpFrom: TwwDBDateTimePicker
          Left = 114
          Top = 14
          Width = 175
          Height = 27
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'Tahoma'
          CalendarAttributes.Font.Style = []
          Epoch = 1950
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 0
          OnCloseUp = wwDbDtpFromCloseUp
        end
        object wwDbDtpTo: TwwDBDateTimePicker
          Left = 329
          Top = 14
          Width = 175
          Height = 27
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'Tahoma'
          CalendarAttributes.Font.Style = []
          Epoch = 1950
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 1
        end
        object edtFilter: TEdit
          Left = 517
          Top = 14
          Width = 228
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object glbtnGo: TAdvGlassButton
          Left = 759
          Top = 12
          Width = 106
          Height = 32
          BackColor = clGreen
          Caption = '>> OK'
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
          OnClick = glbtnGoClick
        end
      end
    end
    object tsDetail: TcxTabSheet
      Caption = 'Bill Detail'
      ImageIndex = 1
      object advpnlMaster: TAdvPanel
        Left = 0
        Top = 0
        Width = 1139
        Height = 140
        Align = alTop
        TabOrder = 0
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
        FullHeight = 140
        object Shape1: TShape
          Left = 6
          Top = 6
          Width = 233
          Height = 25
        end
        object Shape2: TShape
          Left = 6
          Top = 30
          Width = 83
          Height = 25
        end
        object Shape3: TShape
          Left = 88
          Top = 30
          Width = 151
          Height = 25
        end
        object Shape5: TShape
          Left = 6
          Top = 54
          Width = 83
          Height = 25
        end
        object Shape4: TShape
          Left = 88
          Top = 54
          Width = 151
          Height = 25
        end
        object Shape7: TShape
          Left = 6
          Top = 78
          Width = 83
          Height = 25
        end
        object Shape6: TShape
          Left = 88
          Top = 78
          Width = 151
          Height = 25
        end
        object Shape9: TShape
          Left = 6
          Top = 102
          Width = 83
          Height = 25
        end
        object Shape8: TShape
          Left = 88
          Top = 102
          Width = 151
          Height = 25
        end
        object Label3: TLabel
          Left = 14
          Top = 37
          Width = 43
          Height = 13
          Caption = 'No. Nota'
          Transparent = True
        end
        object Label4: TLabel
          Left = 14
          Top = 59
          Width = 28
          Height = 13
          Caption = 'Index'
          Transparent = True
        end
        object Label5: TLabel
          Left = 14
          Top = 85
          Width = 44
          Height = 13
          Caption = 'Tgl. Nota'
          Transparent = True
        end
        object DBCheckBox1: TDBCheckBox
          Left = 14
          Top = 10
          Width = 59
          Height = 17
          Caption = 'Post'
          Color = clWhite
          DataField = 'ispost'
          DataSource = dsGuest
          ParentColor = False
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 89
          Top = 10
          Width = 67
          Height = 17
          Caption = 'Cancel'
          Color = clWhite
          DataField = 'iscancel'
          DataSource = dsGuest
          ParentColor = False
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object edtNoNota: TcxDBTextEdit
          Left = 95
          Top = 32
          DataBinding.DataField = 'no_kasir'
          DataBinding.DataSource = dsGuest
          TabOrder = 2
          Width = 137
        end
        object edtIndex: TcxDBTextEdit
          Left = 95
          Top = 56
          DataBinding.DataField = 'kd_kasir'
          DataBinding.DataSource = dsGuest
          TabOrder = 3
          Width = 137
        end
        object edtDateNota: TcxDBDateEdit
          Left = 95
          Top = 80
          DataBinding.DataField = 'dt_kasir'
          DataBinding.DataSource = dsGuest
          Properties.DisplayFormat = 'dd/mm/yyyy hh:mm'
          TabOrder = 4
          Width = 137
        end
        object GroupBox1: TGroupBox
          Left = 259
          Top = 6
          Width = 326
          Height = 131
          Caption = 'Informasi Transaksi'
          TabOrder = 5
          object Label8: TLabel
            Left = 22
            Top = 86
            Width = 80
            Height = 13
            Caption = 'Shift                  :'
          end
          object lblKamar: TLabel
            Left = 22
            Top = 25
            Width = 82
            Height = 13
            Caption = 'Nama Petugas   :'
          end
          object Label6: TLabel
            Left = 22
            Top = 55
            Width = 81
            Height = 13
            Caption = 'Tanggal             :'
          end
          object edtShift: TcxDBComboBox
            Left = 112
            Top = 83
            DataBinding.DataField = 'shift'
            DataBinding.DataSource = dsGuest
            Properties.Items.Strings = (
              '1'
              '2'
              '3')
            Properties.OnCloseUp = edtShiftPropertiesCloseUp
            TabOrder = 0
            Width = 57
          end
          object btnNamaPetugas: TcxDBButtonEdit
            Left = 112
            Top = 20
            DataBinding.DataField = 'an'
            DataBinding.DataSource = dsGuest
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = btnNamaPetugasPropertiesButtonClick
            TabOrder = 1
            Width = 185
          end
          object edtDateLap: TcxDBDateEdit
            Left = 112
            Top = 52
            DataBinding.DataField = 'dt_transaksi'
            DataBinding.DataSource = dsGuest
            Properties.DisplayFormat = 'dd/mm/yyyy'
            TabOrder = 2
            Width = 185
          end
        end
        object GroupBox2: TGroupBox
          Left = 603
          Top = 6
          Width = 326
          Height = 131
          Caption = 'Keterangan'
          TabOrder = 6
          object Label11: TLabel
            Left = 87
            Top = 101
            Width = 4
            Height = 16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object memKeterangan: TcxDBMemo
            Left = 16
            Top = 24
            DataBinding.DataField = 'keterangan'
            DataBinding.DataSource = dsGuest
            TabOrder = 0
            Height = 89
            Width = 297
          end
        end
      end
      object advtlbrDetailNav: TAdvToolBar
        Left = 0
        Top = 143
        Width = 1141
        Height = 29
        AllowFloating = True
        AutoSize = False
        Caption = ''
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = []
        CompactImageIndex = -1
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ParentStyler = False
        ParentOptionPicture = True
        ToolBarIndex = -1
        object advglowbtnEdit: TDBAdvGlowButton
          Left = 89
          Top = 2
          Width = 90
          Height = 23
          Caption = 'Correction'
          ImageIndex = 0
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 0
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          AutoDisable = True
          ConfirmAction = False
          DataSource = dsDetail
          DBButtonType = dbEdit
          DisableControl = [drReadonly, drEditing, drEmpty]
        end
        object advglowbtnAdd: TDBAdvGlowButton
          Left = 9
          Top = 2
          Width = 80
          Height = 23
          Caption = 'Add'
          ImageIndex = 0
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 1
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          AutoDisable = True
          ConfirmAction = False
          DataSource = dsDetail
          DBButtonType = dbAppend
          DisableControl = [drReadonly, drEditing]
        end
        object advglowbtnDEL: TDBAdvGlowButton
          Left = 179
          Top = 2
          Width = 80
          Height = 23
          Caption = 'Delete'
          ImageIndex = 0
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 2
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          AutoDisable = True
          ConfirmAction = False
          ConfirmActionString = 'Delete record?'
          DataSource = dsDetail
          DBButtonType = dbDelete
          DisableControl = [drReadonly, drEditing, drEmpty]
        end
        object advglowbtnSave: TDBAdvGlowButton
          Left = 259
          Top = 2
          Width = 80
          Height = 23
          Caption = 'Save'
          ImageIndex = 0
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 3
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          AutoDisable = True
          ConfirmAction = False
          DataSource = dsDetail
          DBButtonType = dbPost
          DisableControl = [drNotEditing]
        end
        object advglowbtnCancel: TDBAdvGlowButton
          Left = 339
          Top = 2
          Width = 80
          Height = 23
          Caption = 'Cancel'
          ImageIndex = 0
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 4
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          AutoDisable = True
          ConfirmAction = False
          DataSource = dsDetail
          DBButtonType = dbCancel
          DisableControl = [drNotEditing]
        end
        object advglowbtnRefresh: TDBAdvGlowButton
          Left = 419
          Top = 2
          Width = 80
          Height = 23
          Caption = 'Refresh'
          ImageIndex = 0
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 5
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          AutoDisable = True
          ConfirmAction = False
          DataSource = dsDetail
          DBButtonType = dbRefresh
          DisableControl = [drEditing]
        end
        object btnGetRoomSvcData: TBitBtn
          Left = 499
          Top = 2
          Width = 196
          Height = 25
          Caption = 'Get Data Transaksi'
          TabOrder = 6
          OnClick = btnGetRoomSvcDataClick
        end
      end
      object advpnlGrid: TAdvPanel
        Left = 0
        Top = 174
        Width = 1139
        Height = 250
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
        FullHeight = 200
        object cxgrd1: TcxGrid
          Left = 1
          Top = 1
          Width = 1137
          Height = 248
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object cxgrd1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsDetail
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsSelection.CellSelect = False
            object cxgrdbclmncxgrd1DBTableView1urut: TcxGridDBColumn
              Caption = 'NO'
              DataBinding.FieldName = 'urut'
              HeaderAlignmentHorz = taCenter
              Styles.Header = DataModule1.cxstylSel
              Width = 55
            end
            object cxgrd1DBTableView1Column1: TcxGridDBColumn
              Caption = 'NO. BILLING'
              DataBinding.FieldName = 'no_nota'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              Styles.Header = DataModule1.cxstylSel
              Width = 94
            end
            object cxgrdbclmncxgrd1DBTableView1satuan: TcxGridDBColumn
              Caption = 'TGL. TRANSAKSI'
              DataBinding.FieldName = 'dt_nota'
              HeaderAlignmentHorz = taCenter
              Styles.Header = DataModule1.cxstylSel
              Width = 135
            end
            object cxgrdbclmncxgrd1DBTableView1diskripsi: TcxGridDBColumn
              Caption = 'ITEM DESCRIPTION'
              DataBinding.FieldName = 'jns_pembayaran'
              HeaderAlignmentHorz = taCenter
              Styles.Header = DataModule1.cxstylSel
              Width = 298
            end
            object cxgrdbclmncxgrd1DBTableView1qty: TcxGridDBColumn
              Caption = 'NAMA TAMU'
              DataBinding.FieldName = 'keterangan'
              HeaderAlignmentHorz = taCenter
              Styles.Header = DataModule1.cxstylSel
              Width = 160
            end
            object cxgrdbclmncxgrd1DBTableView1ColumnSubTotal: TcxGridDBColumn
              Caption = 'TOTAL'
              DataBinding.FieldName = 'dibayar'
              HeaderAlignmentHorz = taCenter
              Styles.Header = DataModule1.cxstylSel
              Width = 130
            end
          end
          object cxgrdlvlGrid1Level1: TcxGridLevel
            GridView = cxgrd1DBTableView1
          end
        end
      end
      object AdvPanel1: TAdvPanel
        Left = 1
        Top = 424
        Width = 1129
        Height = 40
        TabOrder = 3
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
        FullHeight = 200
        object Label7: TLabel
          Left = 602
          Top = 8
          Width = 113
          Height = 23
          Caption = 'TOTAL BILL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbLabelTotal: TcxDBLabel
          Left = 760
          Top = 6
          DataBinding.DataField = 'total'
          DataBinding.DataSource = dsGuest
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Height = 27
          Width = 134
        end
      end
    end
  end
  object dsGuest: TDataSource
    DataSet = zqryDisplay
    Left = 416
    Top = 72
  end
  object zqryDisplay: TZQuery
    Connection = DataModule1.zconHotel
    AfterOpen = zqryDisplayAfterOpen
    BeforePost = zqryDisplayBeforePost
    OnNewRecord = zqryDisplayNewRecord
    SQL.Strings = (
      
        'select a.kd_kasir, a.no_kasir, a.an, a.id_rek_gl, a.usr_ins, a.u' +
        'sr_upd, a.dt_ins,'
      
        'a.dt_upd, a.ispost, a.iscancel, a.isdelete, a.isclosed, a.id_tra' +
        'ns, a.total, a.dt_kasir,'
      'a.keterangan, a.shift, a.dt_transaksi'
      'from accfin.kasir a'
      'where a.id_trans=:pid_trans and a.isdelete='#39'0'#39
      
        'and a.dt_kasir between to_timestamp (:ptgl0,'#39'dd/mm/yyyy'#39') and to' +
        '_timestamp (:ptgl1,'#39'dd/mm/yyyy'#39') + interval '#39'23 hour 59 minutes'#39
      'order by a.dt_kasir')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid_trans'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ptgl0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ptgl1'
        ParamType = ptUnknown
      end>
    Left = 480
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pid_trans'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ptgl0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ptgl1'
        ParamType = ptUnknown
      end>
    object zqryDisplaykd_kasir: TLargeintField
      FieldName = 'kd_kasir'
      Required = True
    end
    object zqryDisplayno_kasir: TStringField
      FieldName = 'no_kasir'
      Size = 30
    end
    object zqryDisplayan: TStringField
      FieldName = 'an'
      Size = 100
    end
    object zqryDisplayid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Size = 30
    end
    object zqryDisplayusr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 30
    end
    object zqryDisplayusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object zqryDisplaydt_ins: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object zqryDisplaydt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
    object zqryDisplayispost: TStringField
      FieldName = 'ispost'
      Required = True
      Size = 1
    end
    object zqryDisplayiscancel: TStringField
      FieldName = 'iscancel'
      Required = True
      Size = 1
    end
    object zqryDisplayisdelete: TStringField
      FieldName = 'isdelete'
      Required = True
      Size = 1
    end
    object zqryDisplayisclosed: TStringField
      FieldName = 'isclosed'
      Required = True
      Size = 1
    end
    object zqryDisplayid_trans: TStringField
      FieldName = 'id_trans'
      Required = True
      Size = 10
    end
    object zqryDisplaytotal: TFloatField
      FieldName = 'total'
      DisplayFormat = ',0'
    end
    object zqryDisplaydt_kasir: TDateTimeField
      FieldName = 'dt_kasir'
      Required = True
    end
    object zqryDisplayketerangan: TStringField
      FieldName = 'keterangan'
      Size = 255
    end
    object zqryDisplayshift: TIntegerField
      FieldName = 'shift'
      Required = True
    end
    object zqryDisplaydt_transaksi: TDateTimeField
      FieldName = 'dt_transaksi'
    end
  end
  object dsDetail: TDataSource
    DataSet = zqryDetail
    Left = 416
    Top = 24
  end
  object zqryDetail: TZQuery
    Connection = DataModule1.zconHotel
    AfterOpen = zqryDetailAfterOpen
    BeforePost = zqryDetailBeforePost
    AfterPost = zqryDetailAfterPost
    OnNewRecord = zqryDetailNewRecord
    SQL.Strings = (
      'select *'
      'from accfin.kasir_detail'
      'where kd_kasir=:pkd_kasir'
      'order by kd_kasir')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pkd_kasir'
        ParamType = ptUnknown
      end>
    Left = 480
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pkd_kasir'
        ParamType = ptUnknown
      end>
    object zqryDetailkd_kasir: TLargeintField
      FieldName = 'kd_kasir'
      Required = True
    end
    object zqryDetailno_nota: TStringField
      FieldName = 'no_nota'
      Required = True
      Size = 30
    end
    object zqryDetailurut: TIntegerField
      FieldName = 'urut'
    end
    object zqryDetailno_register: TStringField
      FieldName = 'no_register'
    end
    object zqryDetailcara_bayar: TStringField
      FieldName = 'cara_bayar'
    end
    object zqryDetailid_trans: TStringField
      FieldName = 'id_trans'
      Size = 10
    end
    object zqryDetailid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Size = 30
    end
    object zqryDetaildibayar: TFloatField
      FieldName = 'dibayar'
      Required = True
      DisplayFormat = ',0'
    end
    object zqryDetailusr_ins: TStringField
      FieldName = 'usr_ins'
      Size = 30
    end
    object zqryDetaildt_nota: TDateTimeField
      FieldName = 'dt_nota'
    end
    object zqryDetailketerangan: TStringField
      FieldName = 'keterangan'
      Size = 255
    end
    object zqryDetailjns_pembayaran: TStringField
      FieldName = 'jns_pembayaran'
      Size = 255
    end
    object zqryDetailnk: TStringField
      FieldName = 'nk'
      Size = 255
    end
  end
  object sq_kasir: TZSequence
    Connection = DataModule1.zconHotel
    SequenceName = 'accfin.sq_kasir'
    Left = 538
    Top = 26
  end
  object Get_No_Trans: TZQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      'select accfin.fn_gen_kasir_number('#39'108'#39')')
    Params = <>
    Left = 584
    Top = 24
    object Get_No_Transfn_gen_kasir_number: TMemoField
      FieldName = 'fn_gen_kasir_number'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object LookUser: TwwLookupDialog
    Selected.Strings = (
      'full_name'#9'50'#9'NAMA PETUGAS'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = LUser
    Caption = 'Look Kamar'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 582
    Top = 136
  end
  object LUser: TZReadOnlyQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      'select a.vuser, a.full_name'
      'from master.vuser a'
      'order by a.vuser')
    Params = <>
    Left = 560
    Top = 96
    object LUserfull_name: TStringField
      DisplayLabel = 'NAMA PETUGAS'
      DisplayWidth = 50
      FieldName = 'full_name'
      ReadOnly = True
      Size = 50
    end
    object LUservuser: TStringField
      FieldName = 'vuser'
      ReadOnly = True
      Visible = False
      Size = 30
    end
  end
  object qGetBill: TZReadOnlyQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      
        'select a.no_nota, a.dt_nota, a.cara_bayar, a.usr_upd, c.nama_tam' +
        'u, a.no_kamar,'
      'a.total, b.description'
      'from transaksi.nota_penjualan a'
      
        'left join transaksi.register_tamu c on c.no_register=a.no_regist' +
        'er'
      'left join master.mtransaction b on b.id_trans=a.id_trans'
      
        'where a.id_trans=:pid_trans and a.isdelete='#39'0'#39' and a.iscancel='#39'0' +
        #39' and a.isclosed='#39'1'#39' and a.cara_bayar='#39'TUNAI'#39
      'and a.shift=:pshift'
      
        'and a.dt_nota between to_timestamp (:ptgl0,'#39'dd/mm/yyyy'#39') and to_' +
        'timestamp (:ptgl1,'#39'dd/mm/yyyy'#39') + interval '#39'23 hour 59 minutes'#39
      
        'and a.no_nota not in(Select b.no_nota from accfin.kasir_detail b' +
        ' left join accfin.kasir a on a.kd_kasir=b.kd_kasir where a.isdel' +
        'ete='#39'0'#39' and a.iscancel='#39'0'#39')'
      'order by a.no_nota')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid_trans'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pshift'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ptgl0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ptgl1'
        ParamType = ptUnknown
      end>
    Left = 648
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pid_trans'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pshift'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ptgl0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ptgl1'
        ParamType = ptUnknown
      end>
    object qGetBillno_nota: TStringField
      FieldName = 'no_nota'
      ReadOnly = True
    end
    object qGetBilldt_nota: TDateTimeField
      FieldName = 'dt_nota'
      ReadOnly = True
    end
    object qGetBillcara_bayar: TStringField
      FieldName = 'cara_bayar'
      ReadOnly = True
      Size = 50
    end
    object qGetBillusr_upd: TStringField
      FieldName = 'usr_upd'
      ReadOnly = True
      Size = 10
    end
    object qGetBillnama_tamu: TStringField
      FieldName = 'nama_tamu'
      ReadOnly = True
      Size = 255
    end
    object qGetBillno_kamar: TStringField
      FieldName = 'no_kamar'
      ReadOnly = True
      Size = 10
    end
    object qGetBilltotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
    end
    object qGetBilldescription: TStringField
      FieldName = 'description'
      ReadOnly = True
      Size = 255
    end
  end
  object Exec: TZQuery
    Connection = DataModule1.zconHotel
    BeforePost = zqryDetailBeforePost
    OnNewRecord = zqryDetailNewRecord
    Params = <>
    Left = 344
    Top = 56
  end
  object MemInfo: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'logo'
        DataType = ftBlob
        Size = 10
      end
      item
        Name = 'nama_perusahaan'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'alamat_perusahaan'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'tlp_perusahaan'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'kota_perusahaan'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'email'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'judul'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.74.00 Professional Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 744
    Top = 24
    object MemInfologo: TBlobField
      FieldName = 'logo'
      Size = 10
    end
    object MemInfonama_perusahaan: TStringField
      FieldName = 'nama_perusahaan'
      Size = 50
    end
    object MemInfoalamat_perusahaan: TStringField
      FieldName = 'alamat_perusahaan'
      Size = 100
    end
    object MemInfotlp_perusahaan: TStringField
      FieldName = 'tlp_perusahaan'
    end
    object MemInfokota_perusahaan: TStringField
      FieldName = 'kota_perusahaan'
    end
    object MemInfoemail: TStringField
      FieldName = 'email'
    end
    object MemInfojudul: TStringField
      FieldName = 'judul'
      Size = 30
    end
    object MemInfousr_cetak: TStringField
      FieldName = 'usr_cetak'
      Size = 255
    end
    object MemInfotgl_cetak: TStringField
      FieldName = 'tgl_cetak'
    end
  end
  object frxdbInfo: TfrxDBDataset
    UserName = 'frxdbInfo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'logo=logo'
      'nama_perusahaan=nama_perusahaan'
      'alamat_perusahaan=alamat_perusahaan'
      'tlp_perusahaan=tlp_perusahaan'
      'kota_perusahaan=kota_perusahaan'
      'email=email'
      'judul=judul'
      'usr_cetak=usr_cetak'
      'tgl_cetak=tgl_cetak')
    DataSet = MemInfo
    BCDToCurrency = False
    Left = 744
    Top = 72
  end
  object RepNota_A4: TfrxReport
    Version = '6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40999.391171145800000000
    ReportOptions.LastChange = 40999.399441180600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure PageFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if <Page#>=<TotalPages#> then begin'
      '      MemoPreparedBy.visible:=True;'
      '      MemoPreparer.visible:=True;'
      '      Memo16.visible:=True;'
      '      Memo18.visible:=True;'
      
        '      MemoLine.Visible:= False;                                 ' +
        '            '
      '   end else begin'
      '      MemoPreparedBy.visible:=False;'
      '      MemoPreparer.visible:=False;          '
      '      Memo16.visible:=False;'
      '      Memo18.visible:=False;'
      '      MemoLine.Visible:= True;          '
      '   end;'
      '   Memo2.Visible:= True;       '
      '   MemoDTPrint.Visible:= True;       '
      '   MemoLblPageOfTotalPages.Visible:= True;       '
      'end;'
      '  '
      'begin'
      ''
      'end.')
    Left = 737
    Top = 123
    Datasets = <
      item
        DataSet = frxdbInfo
        DataSetName = 'frxdbInfo'
      end
      item
        DataSet = frxdbqryDetail
        DataSetName = 'frxdbqryDetail'
      end
      item
        DataSet = frxdbqryDisplay
        DataSetName = 'frxdbqryDisplay'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 275.905690000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 110.488250000000000000
          Width = 755.906000000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbInfo."judul"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Width = 94.488250000000000000
          Height = 75.590600000000000000
          DataField = 'logo'
          DataSet = frxdbInfo
          DataSetName = 'frxdbInfo'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 99.047310000000000000
          Width = 279.685220000000000000
          Height = 15.118120000000000000
          DataField = 'nama_perusahaan'
          DataSet = frxdbInfo
          DataSetName = 'frxdbInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbInfo."nama_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 99.047310000000000000
          Top = 15.118120000000000000
          Width = 279.685220000000000000
          Height = 15.118120000000000000
          DataField = 'alamat_perusahaan'
          DataSet = frxdbInfo
          DataSetName = 'frxdbInfo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frxdbInfo."alamat_perusahaan"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 99.047310000000000000
          Top = 48.133890000000000000
          Width = 279.685220000000000000
          Height = 15.118120000000000000
          DataField = 'kota_perusahaan'
          DataSet = frxdbInfo
          DataSetName = 'frxdbInfo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frxdbInfo."kota_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 99.023473150000000000
          Top = 30.236240000000000000
          Width = 279.685220000000000000
          Height = 15.118120000000000000
          DataField = 'tlp_perusahaan'
          DataSet = frxdbInfo
          DataSetName = 'frxdbInfo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frxdbInfo."tlp_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 133.165430000000000000
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbqryDisplay."no_kasir"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 165.842610000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 169.078850000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 241.976500000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 245.212740000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 183.299320000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tgl. Transaksi')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 183.299320000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 202.196970000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nama Petugas')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 202.196970000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 221.094620000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Shift')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 221.094620000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 183.299320000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbqryDisplay."dt_kasir"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 202.196970000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbqryDisplay."an"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 221.094620000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbqryDisplay."shift"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 126.826840000000000000
        Top = 578.268090000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object MemoPreparedBy: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DICETAK OLEH :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 60.472480000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 60.472480000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ')')
          ParentFont = False
        end
        object MemoPreparer: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 60.472480000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbInfo."usr_cetak"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoLblPageOfTotalPages: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 111.708720000000000000
          Width = 204.094620000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#] of [TotalPages#]')
          ParentFont = False
        end
        object MemoLine: TfrxMemoView
          AllowVectorExport = True
          Top = 107.929190000000000000
          Width = 755.906000000000000000
          Height = 3.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Top = 110.385900000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tgl. Cetak : ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 110.606370000000000000
          Width = 166.299320000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbInfo."tgl_cetak"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 483.779840000000000000
        Width = 755.906000000000000000
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 634.961040000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL TAGIHAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 49.133890000000000000
          Width = 120.944960000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdbqryDetail."dibayar">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 31.574830000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 34.811070000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 355.275820000000000000
        Width = 755.906000000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Width = 34.015770000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'No. Transaksi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 128.504020000000000000
          Width = 113.385900000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Tgl. Transaksi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 241.889920000000000000
          Width = 238.110390000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Diskripsi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 480.000310000000000000
          Width = 154.960730000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Cara Bayar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 634.961040000000000000
          Width = 120.944960000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Total Bill')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 404.409710000000000000
        Width = 755.906000000000000000
        DataSet = frxdbqryDetail
        DataSetName = 'frxdbqryDetail'
        RowCount = 0
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbqryDetail."no_nota"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[frxdbqryDetail."jns_pembayaran"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd-mm-yyyy hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbqryDetail."dt_nota"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbqryDetail."cara_bayar"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbqryDetail."dibayar"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxdbqryDisplay: TfrxDBDataset
    UserName = 'frxdbqryDisplay'
    CloseDataSource = False
    FieldAliases.Strings = (
      'kd_kasir=kd_kasir'
      'no_kasir=no_kasir'
      'an=an'
      'id_rek_gl=id_rek_gl'
      'usr_ins=usr_ins'
      'usr_upd=usr_upd'
      'dt_ins=dt_ins'
      'dt_upd=dt_upd'
      'ispost=ispost'
      'iscancel=iscancel'
      'isdelete=isdelete'
      'isclosed=isclosed'
      'id_trans=id_trans'
      'total=total'
      'dt_kasir=dt_kasir'
      'keterangan=keterangan'
      'shift=shift'
      'dt_transaksi=dt_transaksi')
    DataSet = zqryDisplay
    BCDToCurrency = False
    Left = 784
    Top = 72
  end
  object frxdbqryDetail: TfrxDBDataset
    UserName = 'frxdbqryDetail'
    CloseDataSource = False
    FieldAliases.Strings = (
      'kd_kasir=kd_kasir'
      'no_nota=no_nota'
      'urut=urut'
      'no_register=no_register'
      'cara_bayar=cara_bayar'
      'id_trans=id_trans'
      'id_rek_gl=id_rek_gl'
      'dibayar=dibayar'
      'usr_ins=usr_ins'
      'dt_nota=dt_nota'
      'keterangan=keterangan'
      'jns_pembayaran=jns_pembayaran'
      'nk=nk')
    DataSet = zqryDetail
    BCDToCurrency = False
    Left = 824
    Top = 72
  end
  object qTotal: TZQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      'select sum(dibayar) as total_pendapatan'
      'from accfin.kasir_detail'
      'where kd_kasir=:pkd_kasir')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pkd_kasir'
        ParamType = ptUnknown
      end>
    Left = 600
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pkd_kasir'
        ParamType = ptUnknown
      end>
    object qTotaltotal_pendapatan: TFloatField
      FieldName = 'total_pendapatan'
      ReadOnly = True
      DisplayFormat = ',0'
    end
  end
end
