object frmBilling: TfrmBilling
  Left = 98
  Top = 0
  Caption = 'Guest Billing'
  ClientHeight = 661
  ClientWidth = 1232
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesigned
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
    Width = 1232
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
      Width = 241
      Height = 49
      AutoSize = False
      Caption = 
        'Berisi data transaksi billing Tamu yang sudah melakukan pembayar' +
        'an'
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
      Caption = 'NOTA BILLING TAMU'
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
    Width = 1232
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
      1232
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
      Left = 1117
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
    Width = 1232
    Height = 492
    Align = alClient
    Color = clMedGray
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    Properties.ActivePage = tsDetail
    Properties.CustomButtons.Buttons = <>
    OnChange = cxPageCtrlGuestBillChange
    ClientRectBottom = 488
    ClientRectLeft = 4
    ClientRectRight = 1228
    ClientRectTop = 24
    object tsBrowse: TcxTabSheet
      Caption = 'Browse Guest Billing'
      ImageIndex = 0
      object cxgrdGuest: TcxGrid
        Left = 0
        Top = 57
        Width = 1224
        Height = 407
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
            Caption = 'Billing Number'
            DataBinding.FieldName = 'no_nota'
            Width = 116
          end
          object cxgrdbclmnGuestDBTableView1dt_nota: TcxGridDBColumn
            Caption = 'Date'
            DataBinding.FieldName = 'dt_nota'
            Width = 119
          end
          object cxgrdbtblvwGuestDBTableView1Column1: TcxGridDBColumn
            Caption = 'Shift'
            DataBinding.FieldName = 'shift'
            Width = 56
          end
          object cxgrdbclmnGuestDBTableView1no_register: TcxGridDBColumn
            Caption = 'No. Register'
            DataBinding.FieldName = 'no_register'
            Width = 96
          end
          object cxgrdbclmnGuestDBTableView1nomor_id: TcxGridDBColumn
            Caption = 'Guest ID'
            DataBinding.FieldName = 'nomor_id'
            Width = 109
          end
          object cxgrdbclmnGuestDBTableView1nama_tamu: TcxGridDBColumn
            Caption = 'Guest Name'
            DataBinding.FieldName = 'nama_tamu'
            Width = 204
          end
          object cxgrdbclmnGuestDBTableView1no_kamar: TcxGridDBColumn
            Caption = 'Room No.'
            DataBinding.FieldName = 'no_kamar'
            Width = 75
          end
          object cxgrdbclmnGuestDBTableView1kelas: TcxGridDBColumn
            Caption = 'Room Type'
            DataBinding.FieldName = 'kelas'
            Width = 100
          end
          object cxgrdbclmnGuestDBTableView1total: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'total'
            Width = 100
          end
          object cxgrdbtblvwGuestDBTableView1Column2: TcxGridDBColumn
            Caption = 'Cara Bayar'
            DataBinding.FieldName = 'cara_bayar'
            Width = 107
          end
          object cxgrdbclmnGuestDBTableView1usr_upd: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'usr_upd'
            Width = 73
          end
          object cxgrdbclmnGuestDBTableView1ispost: TcxGridDBColumn
            Caption = 'Post'
            DataBinding.FieldName = 'ispost'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Width = 47
          end
          object cxgrdbclmnGuestDBTableView1iscancel: TcxGridDBColumn
            Caption = 'Cancel'
            DataBinding.FieldName = 'iscancel'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Width = 41
          end
          object cxgrdbtblvwGuestDBTableViewwDibayar: TcxGridDBColumn
            Caption = 'Dibayar'
            DataBinding.FieldName = 'isclosed'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
        end
        object cxgrdlvlGuest: TcxGridLevel
          GridView = cxgrdbtblvwGuestDBTableView1
        end
      end
      object pnlSearchPanel: TPanel
        Left = 0
        Top = 0
        Width = 1224
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
        Width = 1224
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
        object Label6: TLabel
          Left = 14
          Top = 109
          Width = 22
          Height = 13
          Caption = 'Shift'
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
          DataBinding.DataField = 'no_nota'
          DataBinding.DataSource = dsGuest
          TabOrder = 2
          Width = 137
        end
        object edtIndex: TcxDBTextEdit
          Left = 95
          Top = 56
          DataBinding.DataField = 'id_nota'
          DataBinding.DataSource = dsGuest
          TabOrder = 3
          Width = 137
        end
        object edtDateNota: TcxDBDateEdit
          Left = 95
          Top = 80
          DataBinding.DataField = 'dt_nota'
          DataBinding.DataSource = dsGuest
          Properties.DisplayFormat = 'dd/mm/yyyy hh:mm'
          TabOrder = 4
          Width = 137
        end
        object edtShift: TcxDBComboBox
          Left = 95
          Top = 104
          DataBinding.DataField = 'shift'
          DataBinding.DataSource = dsGuest
          Properties.Items.Strings = (
            '1'
            '2'
            '3')
          TabOrder = 5
          Width = 137
        end
        object GroupBox1: TGroupBox
          Left = 259
          Top = 6
          Width = 326
          Height = 131
          Caption = 'Informasi Transaksi'
          TabOrder = 6
          object Label8: TLabel
            Left = 22
            Top = 75
            Width = 54
            Height = 13
            Caption = 'Cara Bayar'
          end
          object lblKamar: TLabel
            Left = 22
            Top = 25
            Width = 50
            Height = 13
            Caption = 'No. Kamar'
          end
          object lblNama: TLabel
            Left = 22
            Top = 50
            Width = 56
            Height = 13
            Caption = 'Nama Tamu'
          end
          object lblNoKartu: TLabel
            Left = 22
            Top = 100
            Width = 42
            Height = 13
            Caption = 'No Kartu'
          end
          object edtCaraBayar: TcxDBComboBox
            Left = 96
            Top = 72
            DataBinding.DataField = 'cara_bayar'
            DataBinding.DataSource = dsGuest
            Properties.Items.Strings = (
              'TUNAI'
              'KREDIT'
              'DEBIT'
              'TRANSFER')
            Properties.OnCloseUp = edtCaraBayarPropertiesCloseUp
            TabOrder = 0
            Width = 162
          end
          object btnKamar: TcxDBButtonEdit
            Left = 96
            Top = 20
            DataBinding.DataField = 'no_kamar'
            DataBinding.DataSource = dsGuest
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = btnKamarPropertiesButtonClick
            Properties.OnChange = btnKamarPropertiesChange
            TabOrder = 1
            Width = 161
          end
          object edtNoKartu: TcxDBTextEdit
            Left = 96
            Top = 97
            DataBinding.DataField = 'no_kartu'
            DataBinding.DataSource = dsGuest
            TabOrder = 2
            Width = 162
          end
          object dblblNamaTamu: TcxDBLabel
            Left = 96
            Top = 47
            DataBinding.DataField = 'nama_tamu'
            DataBinding.DataSource = dsGuest
            Height = 21
            Width = 161
          end
        end
        object GroupBox2: TGroupBox
          Left = 603
          Top = 6
          Width = 326
          Height = 131
          Caption = 'Keterangan'
          TabOrder = 7
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
        Width = 1225
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
          Caption = 'Get Room Service Data'
          TabOrder = 6
          OnClick = btnGetRoomSvcDataClick
        end
      end
      object advpnlGrid: TAdvPanel
        Left = 0
        Top = 174
        Width = 1221
        Height = 216
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
          Width = 1219
          Height = 214
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
              Width = 44
            end
            object cxgrd1DBTableView1Column1: TcxGridDBColumn
              Caption = 'ID TRANSAKSI'
              DataBinding.FieldName = 'kode'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              Styles.Header = DataModule1.cxstylSel
              Width = 85
            end
            object cxgrdbclmncxgrd1DBTableView1diskripsi: TcxGridDBColumn
              Caption = 'ITEM DESCRIPTION'
              DataBinding.FieldName = 'diskripsi'
              HeaderAlignmentHorz = taCenter
              Styles.Header = DataModule1.cxstylSel
              Width = 223
            end
            object cxgrd1DBTableView1Column2: TcxGridDBColumn
              Caption = 'TGL. MASUK'
              DataBinding.FieldName = 'dt_masuk'
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              Styles.Header = DataModule1.cxstylSel
              Width = 139
            end
            object cxgrd1DBTableView1Column4: TcxGridDBColumn
              Caption = 'TGL. KELUAR'
              DataBinding.FieldName = 'dt_keluar'
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              Styles.Header = DataModule1.cxstylSel
              Width = 141
            end
            object cxgrdbclmncxgrd1DBTableView1satuan: TcxGridDBColumn
              Caption = 'SATUAN'
              DataBinding.FieldName = 'satuan'
              HeaderAlignmentHorz = taCenter
              Styles.Header = DataModule1.cxstylSel
              Width = 71
            end
            object cxgrdbclmncxgrd1DBTableView1qty: TcxGridDBColumn
              Caption = 'QTY'
              DataBinding.FieldName = 'qty'
              HeaderAlignmentHorz = taCenter
              Styles.Header = DataModule1.cxstylSel
              Width = 57
            end
            object cxgrdbclmncxgrd1DBTableView1harga: TcxGridDBColumn
              Caption = 'UNIT PRICE'
              DataBinding.FieldName = 'harga'
              HeaderAlignmentHorz = taCenter
              Styles.Header = DataModule1.cxstylSel
              Width = 104
            end
            object cxgrd1DBTableView1Column3: TcxGridDBColumn
              Caption = 'CHARGE Rp'
              DataBinding.FieldName = 'charge_rp'
              HeaderAlignmentHorz = taCenter
              Styles.Header = DataModule1.cxstylSel
              Width = 113
            end
            object cxgrd1DBTableView1Column5: TcxGridDBColumn
              Caption = 'DISKON RP.'
              DataBinding.FieldName = 'disc_rp'
              GroupSummaryAlignment = taLeftJustify
              HeaderAlignmentHorz = taCenter
              Styles.Header = DataModule1.cxstylSel
              Width = 100
            end
            object cxgrdbclmncxgrd1DBTableView1ColumnSubTotal: TcxGridDBColumn
              Caption = 'SUB TOTAL'
              DataBinding.FieldName = 'subtotal'
              HeaderAlignmentHorz = taCenter
              Styles.Header = DataModule1.cxstylSel
              Width = 120
            end
          end
          object cxgrdlvlGrid1Level1: TcxGridLevel
            GridView = cxgrd1DBTableView1
          end
        end
      end
      object AdvPanel1: TAdvPanel
        Left = 1
        Top = 392
        Width = 1224
        Height = 73
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
          Left = 862
          Top = 11
          Width = 74
          Height = 19
          Caption = 'Total Bill'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbLabelTotal: TcxDBLabel
          Left = 1020
          Top = 9
          DataBinding.DataField = 'total'
          DataBinding.DataSource = dsGuest
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
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
      
        'select a.id_nota, a.no_nota, a.dt_nota, a.cara_bayar, a.no_kartu' +
        ', a.no_register, a.id_tamu, a.nama_tamu, a.shift, a.total, a.no_' +
        'kamar, a.kelas,'
      
        #9'a.asal, a.dibayar, a.ispaket, a.isclosed, a.id_trans, a.usr_ins' +
        ', a.usr_upd, a.ispost, a.iscancel, a.keterangan, a.disc_psn, a.d' +
        'isc_rp, a.ppn_rp, a.isdelete, a.subtotal, a.net_n_ppn,'
      'a.dt_ins, a.dt_upd'
      'from transaksi.nota a'
      
        'where a.isdelete='#39'0'#39'  and a.dt_nota between to_timestamp(:ptgl0,' +
        #39'dd/mm/yyyy'#39') and to_timestamp(:ptgl1,'#39'dd/mm/yyyy'#39') +  interval ' +
        #39'23 hours 59 min'#39)
    Params = <
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
        Name = 'ptgl0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ptgl1'
        ParamType = ptUnknown
      end>
    object lrgntfldDisplayid_nota: TLargeintField
      FieldName = 'id_nota'
      Required = True
    end
    object strngfldDisplayno_nota: TStringField
      FieldName = 'no_nota'
    end
    object dtmfldDisplaydt_nota: TDateTimeField
      FieldName = 'dt_nota'
    end
    object strngfldDisplayno_register: TStringField
      FieldName = 'no_register'
    end
    object strngfldDisplayid_tamu: TStringField
      FieldName = 'id_tamu'
    end
    object strngfldDisplaynama_tamu: TStringField
      FieldName = 'nama_tamu'
      Size = 30
    end
    object intgrfldDisplayshift: TIntegerField
      Alignment = taCenter
      FieldName = 'shift'
    end
    object fltfldDisplaytotal: TFloatField
      FieldName = 'total'
      Required = True
      DisplayFormat = ',0'
    end
    object strngfldDisplayno_kamar: TStringField
      FieldName = 'no_kamar'
      Size = 10
    end
    object strngfldDisplaykelas: TStringField
      FieldName = 'kelas'
      Size = 10
    end
    object strngfldDisplayusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object strngfldDisplayispost: TStringField
      FieldName = 'ispost'
      Required = True
      Size = 1
    end
    object strngfldDisplayiscancel: TStringField
      FieldName = 'iscancel'
      Required = True
      Size = 1
    end
    object strngfldDisplaycara_bayarar: TStringField
      FieldName = 'cara_bayar'
    end
    object strngfldDisplayno_kartu: TStringField
      FieldName = 'no_kartu'
      Size = 50
    end
    object strngfldDisplayketerangan: TStringField
      FieldName = 'keterangan'
      Size = 255
    end
    object strngfldDisplayusr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 30
    end
    object fltfldDisplaydisc_psn: TFloatField
      FieldName = 'disc_psn'
    end
    object fltfldDisplaydisc_rp: TFloatField
      FieldName = 'disc_rp'
      DisplayFormat = ',0'
    end
    object fltfldDisplayppn_rp: TFloatField
      FieldName = 'ppn_rp'
      DisplayFormat = ',0'
    end
    object strngfldDisplayisdelete: TStringField
      FieldName = 'isdelete'
      Size = 1
    end
    object fltfldDisplaynet_n_ppn: TFloatField
      FieldName = 'net_n_ppn'
    end
    object strngfldDisplayid_trans: TStringField
      FieldName = 'id_trans'
      Size = 10
    end
    object strngfldDisplayisclosed: TStringField
      FieldName = 'isclosed'
      Required = True
      Size = 1
    end
    object strngfldDisplayispaket: TStringField
      FieldName = 'ispaket'
      Required = True
      Size = 1
    end
    object fltfldDisplaydibayar: TFloatField
      FieldName = 'dibayar'
      Required = True
      DisplayFormat = ',0'
    end
    object strngfldDisplayasal: TStringField
      FieldName = 'asal'
      Required = True
      Size = 1
    end
    object fltfldDisplaysubtotal: TFloatField
      FieldName = 'subtotal'
      DisplayFormat = ',0'
    end
    object dtmfldDisplaydt_ins: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object dtmfldDisplaydt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
  end
  object dsDetail: TDataSource
    DataSet = zqryDetail
    Left = 416
    Top = 24
  end
  object zqryDetail: TZQuery
    Connection = DataModule1.zconHotel
    BeforePost = zqryDetailBeforePost
    AfterPost = zqryDetailAfterPost
    OnNewRecord = zqryDetailNewRecord
    SQL.Strings = (
      'select * from transaksi.nota_detail'
      'where id_nota=:id_nota'
      'order by urut')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_nota'
        ParamType = ptUnknown
      end>
    Left = 480
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_nota'
        ParamType = ptUnknown
      end>
    object lrgntfldDetailid_nota: TLargeintField
      FieldName = 'id_nota'
      Required = True
    end
    object strngfldDetailkode: TStringField
      FieldName = 'kode'
      Required = True
      Size = 50
    end
    object strngfldDetaildiskripsi: TStringField
      FieldName = 'diskripsi'
      Size = 255
    end
    object fltfldDetailqty: TFloatField
      FieldName = 'qty'
      Required = True
    end
    object strngfldDetailsatuan: TStringField
      FieldName = 'satuan'
      Size = 10
    end
    object fltfldDetailharga: TFloatField
      FieldName = 'harga'
      Required = True
      DisplayFormat = ',0'
    end
    object fltfldDetaildisc_psn: TFloatField
      FieldName = 'disc_psn'
      Required = True
    end
    object fltfldDetaildisc_rp: TFloatField
      FieldName = 'disc_rp'
      Required = True
      DisplayFormat = ',0'
    end
    object strngfldDetailasal: TStringField
      FieldName = 'asal'
      Size = 1
    end
    object intgrfldDetailurut: TIntegerField
      FieldName = 'urut'
      Required = True
    end
    object lrgntfldDetailid_nota_detail: TLargeintField
      FieldName = 'id_nota_detail'
      Required = True
    end
    object strngfldDetailno_reff: TStringField
      FieldName = 'no_reff'
      Size = 100
    end
    object strngfldDetailid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Size = 30
    end
    object dtmfldDetaildt_nota_detail: TDateTimeField
      FieldName = 'dt_nota_detail'
    end
    object strngfldDetailno_kamar: TStringField
      FieldName = 'no_kamar'
      Size = 10
    end
    object strngfldDetailistambahan: TStringField
      FieldName = 'istambahan'
      Required = True
      Size = 1
    end
    object fltfldDetailppn_rp: TFloatField
      FieldName = 'ppn_rp'
      DisplayFormat = ',0'
    end
    object strngfldDetailkelas: TStringField
      FieldName = 'kelas'
      Size = 10
    end
    object strngfldDetailid_nota_item: TStringField
      FieldName = 'id_nota_item'
      Size = 2
    end
    object fltfldDetailhpp: TFloatField
      FieldName = 'hpp'
      Required = True
      DisplayFormat = ',0'
    end
    object dtmfldDetaildt_reff: TDateTimeField
      FieldName = 'dt_reff'
    end
    object fltfldDetailsubtotal: TFloatField
      FieldName = 'subtotal'
      Required = True
      DisplayFormat = ',0'
    end
    object zqryDetailcharge_psn: TFloatField
      FieldName = 'charge_psn'
    end
    object zqryDetailcharge_rp: TFloatField
      FieldName = 'charge_rp'
      DisplayFormat = ',0'
    end
    object zqryDetaildt_masuk: TDateTimeField
      FieldName = 'dt_masuk'
    end
    object zqryDetaildt_keluar: TDateTimeField
      FieldName = 'dt_keluar'
    end
  end
  object sq_nota: TZSequence
    Connection = DataModule1.zconHotel
    SequenceName = 'transaksi.sq_nota'
    Left = 538
    Top = 26
  end
  object sq_nota_detail: TZSequence
    Connection = DataModule1.zconHotel
    SequenceName = 'transaksi.sq_nota_detail'
    Left = 540
    Top = 72
  end
  object Get_No_Trans: TZQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      'select transaksi.fn_gen_nota_number('#39'102'#39')')
    Params = <>
    Left = 584
    Top = 24
    object Get_No_Transfn_gen_nota_number: TMemoField
      FieldName = 'fn_gen_nota_number'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object LookKamar: TwwLookupDialog
    Selected.Strings = (
      'no_kamar'#9'10'#9'no_kamar'#9'F'
      'nama_tamu'#9'50'#9'nama_tamu'#9'F'
      'no_register'#9'20'#9'no_register'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = LKamar
    Caption = 'Look Kamar'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 550
    Top = 192
  end
  object LKamar: TZReadOnlyQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      'select a.no_kamar, b.no_register, b.nama_tamu, b.id_register'
      'from transaksi.register_tamu_detail a'
      
        'left join transaksi.register_tamu b on b.id_register=a.id_regist' +
        'er'
      'where b.iscekout='#39'1'#39' and b.isclosed='#39'0'#39
      'order by b.no_register')
    Params = <>
    Left = 552
    Top = 144
    object LKamarno_kamar: TStringField
      DisplayWidth = 10
      FieldName = 'no_kamar'
      ReadOnly = True
      Size = 10
    end
    object LKamarnama_tamu: TStringField
      DisplayWidth = 50
      FieldName = 'nama_tamu'
      ReadOnly = True
      Size = 255
    end
    object LKamarno_register: TStringField
      DisplayWidth = 20
      FieldName = 'no_register'
      ReadOnly = True
    end
    object LKamarid_register: TLargeintField
      FieldName = 'id_register'
      ReadOnly = True
    end
  end
  object qGetBill: TZReadOnlyQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      'select a.* from transaksi.fn_get_detail_bill (:no_register) a'
      
        'where a.no_register not in (Select b.no_register from transaksi.' +
        'nota_detail a left join transaksi.nota b on b.id_nota=a.id_nota ' +
        'where b.isdelete='#39'0'#39' and b.iscancel='#39'0'#39')')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_register'
        ParamType = ptUnknown
      end>
    Left = 648
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_register'
        ParamType = ptUnknown
      end>
    object qGetBillnomor: TIntegerField
      FieldName = 'nomor'
      ReadOnly = True
    end
    object qGetBillno_register: TMemoField
      FieldName = 'no_register'
      ReadOnly = True
      BlobType = ftMemo
    end
    object qGetBilldt: TDateTimeField
      FieldName = 'dt'
      ReadOnly = True
    end
    object qGetBilldt_masuk: TDateTimeField
      FieldName = 'dt_masuk'
      ReadOnly = True
    end
    object qGetBilldt_keluar: TDateTimeField
      FieldName = 'dt_keluar'
      ReadOnly = True
    end
    object qGetBillno_kamar: TMemoField
      FieldName = 'no_kamar'
      ReadOnly = True
      BlobType = ftMemo
    end
    object qGetBillno_transaksi: TMemoField
      FieldName = 'no_transaksi'
      ReadOnly = True
      BlobType = ftMemo
    end
    object qGetBillid_trans: TMemoField
      FieldName = 'id_trans'
      ReadOnly = True
      BlobType = ftMemo
    end
    object qGetBilldiskripsi: TMemoField
      FieldName = 'diskripsi'
      ReadOnly = True
      BlobType = ftMemo
    end
    object qGetBillqty: TFloatField
      FieldName = 'qty'
      ReadOnly = True
    end
    object qGetBillharga: TFloatField
      FieldName = 'harga'
      ReadOnly = True
    end
    object qGetBillcharge_rp: TFloatField
      FieldName = 'charge_rp'
      ReadOnly = True
    end
    object qGetBilldiskon: TFloatField
      FieldName = 'diskon'
      ReadOnly = True
    end
    object qGetBillsub_total: TFloatField
      FieldName = 'sub_total'
      ReadOnly = True
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
    Active = True
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
      end
      item
        Name = 'tgl_cetak'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'usr_cetak'
        DataType = ftString
        Size = 100
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
    object MemInfotgl_cetak: TStringField
      FieldName = 'tgl_cetak'
    end
    object MemInfousr_cetak: TStringField
      FieldName = 'usr_cetak'
      Size = 100
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
      'tgl_cetak=tgl_cetak'
      'usr_cetak=usr_cetak')
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
      end
      item
        DataSet = frxdbRegDetail
        DataSetName = 'frxdbRegDetail'
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
            'No. Transaksi : [frxdbqryDisplay."no_nota"]')
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
          Top = 246.976500000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 250.212740000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 183.299320000000000000
          Width = 90.708720000000000000
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
          Left = 98.267780000000000000
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
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nama Tamu')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
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
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'No. Kamar')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
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
          Left = 120.944960000000000000
          Top = 183.299320000000000000
          Width = 226.771800000000000000
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
            '[frxdbqryDisplay."dt_nota"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 202.196970000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbqryDisplay."nama_tamu"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 221.094620000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbqryDisplay."no_kamar"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 408.189240000000000000
          Top = 184.196970000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Jenis Pembayaran')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 184.196970000000000000
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
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 184.196970000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbqryDisplay."cara_bayar"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 408.189240000000000000
          Top = 204.094620000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tgl. Masuk')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 204.094620000000000000
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
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 204.094620000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd mmmm yyyy hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbRegDetail."dt_masuk"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 408.189240000000000000
          Top = 222.992270000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tgl. Keluar')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 222.992270000000000000
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
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 222.992270000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd mmmm yyyy hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbRegDetail."dt_keluar"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 164.622140000000000000
        Top = 578.268090000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 90.472480000000000000
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
          Top = 90.472480000000000000
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
          Top = 90.472480000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Color = clSilver
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbqryDisplay."nama_tamu"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoLblPageOfTotalPages: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 146.708720000000000000
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
          Top = 142.929190000000000000
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
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 145.606370000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tgl. Cetak :')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 145.606370000000000000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Jombang, [frxdbInfo."tgl_cetak"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
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
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 90.472480000000000000
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
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 695.433520000000000000
          Top = 90.472480000000000000
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
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 90.472480000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Color = clSilver
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbInfo."usr_cetak"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
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
            'CUSTOMER :')
          ParentFont = False
          VAlign = vaCenter
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
          Width = 665.197280000000000000
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
          Left = 665.197280000000000000
          Top = 49.133890000000000000
          Width = 90.708720000000000000
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
            '[SUM(<frxdbqryDetail."subtotal">,MasterData1)]')
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
        object Memo10: TfrxMemoView
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
            'Tgl. Transaksi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 128.504020000000000000
          Width = 245.669450000000000000
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
          Left = 404.409710000000000000
          Width = 90.708720000000000000
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
            'Harga')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 665.197280000000000000
          Width = 90.708720000000000000
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
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 374.173470000000000000
          Width = 30.236240000000000000
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
            'Qty')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 495.118430000000000000
          Width = 86.929190000000000000
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
            'Charge')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 582.047620000000000000
          Width = 83.149660000000000000
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
            'Diskon')
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
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[frxdbqryDetail."diskripsi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd-mm-yyyy'
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
            '[frxdbqryDetail."dt_reff"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Width = 34.015770000000000000
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
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Width = 30.236240000000000000
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
            '[frxdbqryDetail."qty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Width = 90.708720000000000000
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
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbqryDetail."harga"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Width = 90.708720000000000000
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
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbqryDetail."subtotal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Width = 86.929190000000000000
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
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbqryDetail."charge_rp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
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
            '[frxdbqryDetail."disc_rp"]')
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
      'id_nota=id_nota'
      'no_nota=no_nota'
      'dt_nota=dt_nota'
      'no_register=no_register'
      'id_tamu=id_tamu'
      'nama_tamu=nama_tamu'
      'shift=shift'
      'total=total'
      'no_kamar=no_kamar'
      'kelas=kelas'
      'usr_upd=usr_upd'
      'ispost=ispost'
      'iscancel=iscancel'
      'cara_bayar=cara_bayar'
      'no_kartu=no_kartu'
      'keterangan=keterangan'
      'usr_ins=usr_ins'
      'disc_psn=disc_psn'
      'disc_rp=disc_rp'
      'ppn_rp=ppn_rp'
      'isdelete=isdelete'
      'net_n_ppn=net_n_ppn'
      'id_trans=id_trans'
      'isclosed=isclosed'
      'ispaket=ispaket'
      'dibayar=dibayar'
      'asal=asal'
      'subtotal=subtotal'
      'dt_ins=dt_ins'
      'dt_upd=dt_upd')
    DataSet = zqryDisplay
    BCDToCurrency = False
    Left = 784
    Top = 72
  end
  object frxdbqryDetail: TfrxDBDataset
    UserName = 'frxdbqryDetail'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_nota=id_nota'
      'kode=kode'
      'diskripsi=diskripsi'
      'qty=qty'
      'satuan=satuan'
      'harga=harga'
      'disc_psn=disc_psn'
      'disc_rp=disc_rp'
      'asal=asal'
      'urut=urut'
      'id_nota_detail=id_nota_detail'
      'no_reff=no_reff'
      'id_rek_gl=id_rek_gl'
      'dt_nota_detail=dt_nota_detail'
      'no_kamar=no_kamar'
      'istambahan=istambahan'
      'ppn_rp=ppn_rp'
      'kelas=kelas'
      'id_nota_item=id_nota_item'
      'hpp=hpp'
      'dt_reff=dt_reff'
      'subtotal=subtotal'
      'charge_psn=charge_psn'
      'charge_rp=charge_rp'
      'dt_masuk=dt_masuk'
      'dt_keluar=dt_keluar')
    DataSet = zqryDetail
    BCDToCurrency = False
    Left = 824
    Top = 72
  end
  object qTotal: TZQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      'select sum(subtotal) as total_bill'
      'from transaksi.nota_detail'
      'where id_nota=:pid_nota')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid_nota'
        ParamType = ptUnknown
      end>
    Left = 600
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pid_nota'
        ParamType = ptUnknown
      end>
    object qTotaltotal_bill: TFloatField
      FieldName = 'total_bill'
      ReadOnly = True
    end
  end
  object qryRegDetail: TZQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      
        'select a.no_kamar, a.dt_masuk, a.dt_keluar, a.harga, a.id_item, ' +
        'a.qty, a.diskripsi as type_kamar'
      'from transaksi.register_tamu_detail a'
      
        'left join transaksi.register_tamu b on b.id_register=a.id_regist' +
        'er'
      'where b.no_register=:pno_reg')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pno_reg'
        ParamType = ptUnknown
      end>
    Left = 784
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pno_reg'
        ParamType = ptUnknown
      end>
    object qryRegDetailno_kamar: TStringField
      FieldName = 'no_kamar'
      Size = 10
    end
    object qryRegDetaildt_masuk: TDateTimeField
      FieldName = 'dt_masuk'
    end
    object qryRegDetaildt_keluar: TDateTimeField
      FieldName = 'dt_keluar'
    end
    object qryRegDetailharga: TFloatField
      FieldName = 'harga'
      Required = True
    end
    object qryRegDetailid_item: TStringField
      FieldName = 'id_item'
      Size = 50
    end
    object qryRegDetailqty: TFloatField
      FieldName = 'qty'
    end
    object qryRegDetailtype_kamar: TStringField
      FieldName = 'type_kamar'
      Size = 255
    end
  end
  object frxdbRegDetail: TfrxDBDataset
    UserName = 'frxdbRegDetail'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_kamar=no_kamar'
      'dt_masuk=dt_masuk'
      'dt_keluar=dt_keluar'
      'harga=harga'
      'id_item=id_item'
      'qty=qty'
      'type_kamar=type_kamar')
    DataSet = qryRegDetail
    BCDToCurrency = False
    Left = 832
    Top = 32
  end
  object zqryExec: TZQuery
    Connection = DataModule1.zconHotel
    Params = <>
    Left = 352
    Top = 24
  end
end
