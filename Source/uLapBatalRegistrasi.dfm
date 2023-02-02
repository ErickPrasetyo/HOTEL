object frmLapBatalRegistrasi: TfrmLapBatalRegistrasi
  Left = 0
  Top = 0
  Caption = 'Laporan Batal Registrasi'
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
        'Berisi data transaksi Register Tamu yang Batal Registrasi/Check ' +
        'In'
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
      Width = 264
      Height = 13
      AutoSize = False
      Caption = 'LAPORAN BATAL REGISTRASI/CHECK IN'
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
    object AdvGlBtnRefresh: TAdvGlassButton
      Left = 27
      Top = 15
      Width = 106
      Height = 32
      BackColor = clNavy
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
      TabOrder = 1
      Version = '1.3.0.2'
      OnClick = AdvGlBtnRefreshClick
    end
    object AdvGlbtnExport: TAdvGlassButton
      Left = 145
      Top = 15
      Width = 106
      Height = 32
      BackColor = clBlack
      Caption = 'Export To Excell'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
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
      OnClick = AdvGlbtnExportClick
    end
    object AdvGlbtnPrint: TAdvGlassButton
      Left = 264
      Top = 15
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
      TabOrder = 3
      Version = '1.3.0.2'
      OnClick = AdvGlbtnPrintClick
    end
  end
  object pgLapResto: TcxPageControl
    Left = 0
    Top = 162
    Width = 1139
    Height = 439
    Align = alClient
    Color = clMedGray
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    Properties.ActivePage = tsRekap
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 435
    ClientRectLeft = 4
    ClientRectRight = 1135
    ClientRectTop = 24
    object tsRekap: TcxTabSheet
      Caption = 'Rekap Batal Transaksi'
      ImageIndex = 0
      object grdRekap: TcxGrid
        Left = 0
        Top = 0
        Width = 1131
        Height = 411
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        ExplicitLeft = 32
        ExplicitTop = -3
        object grddbtvRekap: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsRekap
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
          object cxgrdbclmnGuestDBTableView1no_register: TcxGridDBColumn
            Caption = 'No. Register'
            DataBinding.FieldName = 'no_register'
            Width = 111
          end
          object cxgrdbclmnGuestDBTableView1dt_nota: TcxGridDBColumn
            Caption = 'Tgl. Ceck In'
            DataBinding.FieldName = 'dt_register'
            Width = 148
          end
          object cxgrdbclmnGuestDBTableView1nama_tamu: TcxGridDBColumn
            Caption = 'Nama Tamu'
            DataBinding.FieldName = 'nama_tamu'
            Width = 204
          end
          object grddbtvRekapColumn2: TcxGridDBColumn
            Caption = 'No. Kamar'
            DataBinding.FieldName = 'no_kamar'
            HeaderAlignmentHorz = taCenter
            Width = 73
          end
          object grddbtvRekapColumn5: TcxGridDBColumn
            Caption = 'Alasan Pembatalan'
            DataBinding.FieldName = 'alasan_batal'
            HeaderAlignmentHorz = taCenter
            Width = 249
          end
          object cxgrdbclmnGuestDBTableView1nomor_id: TcxGridDBColumn
            Caption = 'Jenis Kedatangan'
            DataBinding.FieldName = 'jenis'
            Width = 109
          end
          object grddbtvRekapColumn1: TcxGridDBColumn
            Caption = 'Tgl. Dibatalkan'
            DataBinding.FieldName = 'dt_cancel'
            Width = 109
          end
          object cxgrdbclmnGuestDBTableView1usr_upd: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'usr_upd'
            Width = 104
          end
          object grddbtvRekapColumn3: TcxGridDBColumn
            Caption = 'Post'
            DataBinding.FieldName = 'ispost'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Width = 52
          end
          object grddbtvRekapColumn4: TcxGridDBColumn
            Caption = 'Cancel'
            DataBinding.FieldName = 'iscancel'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Width = 51
          end
        end
        object grdlvlRekap: TcxGridLevel
          GridView = grddbtvRekap
        end
      end
    end
  end
  object pnlSearchPanel: TPanel
    Left = 0
    Top = 105
    Width = 1139
    Height = 57
    Align = alTop
    TabOrder = 3
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
    object glbtnGo: TAdvGlassButton
      Left = 543
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
      TabOrder = 2
      Version = '1.3.0.2'
      OnClick = glbtnGoClick
    end
  end
  object qRekap: TZQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      
        'select a.no_register, a.dt_register, a.nama_tamu, b.no_kamar, a.' +
        'keterangan as alasan_batal, a.ispost, a.iscancel, a.usr_upd, a.d' +
        't_upd as dt_cancel, a.shift,'
      'a.jenis, c.no_nota, c.dt_keluar, c.total as total_billing'
      'from transaksi.register_tamu a'
      
        'left join transaksi.register_tamu_detail b on b.id_register=a.id' +
        '_register'
      'left join transaksi.nota c on c.no_register=a.no_register'
      'where a.iscancel='#39'1'#39' and a.isclosed='#39'0'#39' and a.iscekout='#39'0'#39
      
        'and a.dt_register between to_timestamp (:ptgl0,'#39'dd/mm/yyyy'#39') and' +
        ' to_timestamp (:ptgl1,'#39'dd/mm/yyyy'#39') + interval '#39'23 hour 59 minut' +
        'es'#39)
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
    Left = 384
    Top = 24
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
    object qRekapno_register: TStringField
      FieldName = 'no_register'
      Required = True
    end
    object qRekapdt_register: TDateTimeField
      FieldName = 'dt_register'
      Required = True
    end
    object qRekapnama_tamu: TStringField
      FieldName = 'nama_tamu'
      Size = 255
    end
    object qRekapispost: TStringField
      FieldName = 'ispost'
      Required = True
      Size = 1
    end
    object qRekapiscancel: TStringField
      FieldName = 'iscancel'
      Required = True
      Size = 1
    end
    object qRekapusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object qRekapdt_cancel: TDateTimeField
      FieldName = 'dt_cancel'
      Required = True
    end
    object qRekapshift: TIntegerField
      FieldName = 'shift'
    end
    object qRekapjenis: TStringField
      FieldName = 'jenis'
      Size = 30
    end
    object qRekapno_nota: TStringField
      FieldName = 'no_nota'
    end
    object qRekapdt_keluar: TDateTimeField
      FieldName = 'dt_keluar'
    end
    object qRekapno_kamar: TStringField
      FieldName = 'no_kamar'
      Size = 10
    end
    object qRekapalasan_batal: TStringField
      FieldName = 'alasan_batal'
      Size = 255
    end
  end
  object dsRekap: TDataSource
    DataSet = qRekap
    Left = 384
    Top = 72
  end
  object MemInfoPerusahaan: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'logo'
        DataType = ftBlob
      end
      item
        Name = 'nama_perusahaan'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'alamat_perusahaan'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'telp_perusahaan'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'kota_perusahaan'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'periode'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'tgl_cetak'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'email'
        DataType = ftString
        Size = 50
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
    Left = 504
    Top = 16
    object MemInfoPerusahaanlogo: TBlobField
      FieldName = 'logo'
    end
    object MemInfoPerusahaannama_perusahaan: TStringField
      FieldName = 'nama_perusahaan'
      Size = 100
    end
    object MemInfoPerusahaanalamat_perusahaan: TStringField
      FieldName = 'alamat_perusahaan'
      Size = 255
    end
    object MemInfoPerusahaantelp_perusahaan: TStringField
      FieldName = 'telp_perusahaan'
      Size = 100
    end
    object MemInfoPerusahaankota_perusahaan: TStringField
      FieldName = 'kota_perusahaan'
      Size = 100
    end
    object MemInfoPerusahaanperiode: TStringField
      FieldName = 'periode'
      Size = 50
    end
    object MemInfoPerusahaantgl_cetak: TStringField
      FieldName = 'tgl_cetak'
    end
    object MemInfoPerusahaanemail: TStringField
      FieldName = 'email'
      Size = 50
    end
  end
  object frxdbInfoPerusahaan: TfrxDBDataset
    UserName = 'frxdbInfoPerusahaan'
    CloseDataSource = False
    FieldAliases.Strings = (
      'logo=logo'
      'nama_perusahaan=nama_perusahaan'
      'alamat_perusahaan=alamat_perusahaan'
      'telp_perusahaan=telp_perusahaan'
      'kota_perusahaan=kota_perusahaan'
      'periode=periode'
      'tgl_cetak=tgl_cetak'
      'email=email')
    DataSet = MemInfoPerusahaan
    BCDToCurrency = False
    Left = 504
    Top = 64
  end
  object frxdbRekap: TfrxDBDataset
    UserName = 'frxdbRekap'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_register=no_register'
      'dt_register=dt_register'
      'nama_tamu=nama_tamu'
      'ispost=ispost'
      'iscancel=iscancel'
      'usr_upd=usr_upd'
      'dt_cancel=dt_cancel'
      'shift=shift'
      'jenis=jenis'
      'no_nota=no_nota'
      'dt_keluar=dt_keluar'
      'no_kamar=no_kamar'
      'alasan_batal=alasan_batal')
    DataSet = MemRekap
    BCDToCurrency = False
    Left = 384
    Top = 120
  end
  object MemRekap: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'no_register'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'dt_register'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'nama_tamu'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'ispost'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'iscancel'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'usr_upd'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'dt_cancel'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'shift'
        DataType = ftInteger
      end
      item
        Name = 'jenis'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'no_nota'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'dt_keluar'
        DataType = ftDateTime
      end
      item
        Name = 'no_kamar'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'alasan_batal'
        DataType = ftString
        Size = 255
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
    Left = 384
    Top = 168
    object MemRekapno_register: TStringField
      FieldName = 'no_register'
      Required = True
    end
    object MemRekapdt_register: TDateTimeField
      FieldName = 'dt_register'
      Required = True
    end
    object MemRekapnama_tamu: TStringField
      FieldName = 'nama_tamu'
      Size = 255
    end
    object MemRekapispost: TStringField
      FieldName = 'ispost'
      Required = True
      Size = 1
    end
    object MemRekapiscancel: TStringField
      FieldName = 'iscancel'
      Required = True
      Size = 1
    end
    object MemRekapusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object MemRekapdt_cancel: TDateTimeField
      FieldName = 'dt_cancel'
      Required = True
    end
    object MemRekapshift: TIntegerField
      FieldName = 'shift'
    end
    object MemRekapjenis: TStringField
      FieldName = 'jenis'
      Size = 30
    end
    object MemRekapno_nota: TStringField
      FieldName = 'no_nota'
    end
    object MemRekapdt_keluar: TDateTimeField
      FieldName = 'dt_keluar'
    end
    object MemRekapno_kamar: TStringField
      FieldName = 'no_kamar'
      Size = 10
    end
    object MemRekapalasan_batal: TStringField
      FieldName = 'alasan_batal'
      Size = 255
    end
  end
  object RepRekap: TfrxReport
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
    Left = 385
    Top = 219
    Datasets = <
      item
        DataSet = frxdbInfoPerusahaan
        DataSetName = 'frxdbInfoPerusahaan'
      end
      item
        DataSet = frxdbRekap
        DataSetName = 'frxdbRekap'
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
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 81.913420000000000000
          Width = 755.906000000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LAPORAN TAMU BATAL REGISTRASI')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Width = 94.488250000000000000
          Height = 75.590600000000000000
          DataField = 'logo'
          DataSet = frxdbInfoPerusahaan
          DataSetName = 'frxdbInfoPerusahaan'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 99.047310000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DataField = 'nama_perusahaan'
          DataSet = frxdbInfoPerusahaan
          DataSetName = 'frxdbInfoPerusahaan'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbInfoPerusahaan."nama_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 99.047310000000000000
          Top = 15.118120000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DataField = 'alamat_perusahaan'
          DataSet = frxdbInfoPerusahaan
          DataSetName = 'frxdbInfoPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frxdbInfoPerusahaan."alamat_perusahaan"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 99.047310000000000000
          Top = 48.133890000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DataField = 'kota_perusahaan'
          DataSet = frxdbInfoPerusahaan
          DataSetName = 'frxdbInfoPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frxdbInfoPerusahaan."kota_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 99.023473150000000000
          Top = 30.236240000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DataField = 'telp_perusahaan'
          DataSet = frxdbInfoPerusahaan
          DataSetName = 'frxdbInfoPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frxdbInfoPerusahaan."telp_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 104.590600000000000000
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          DataField = 'periode'
          DataSet = frxdbInfoPerusahaan
          DataSetName = 'frxdbInfoPerusahaan'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbInfoPerusahaan."periode"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 127.267780000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 105.826840000000000000
        Top = 393.071120000000000000
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
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoLblPageOfTotalPages: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 90.708720000000000000
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
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 90.708720000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tanggal :')
          ParentFont = False
        end
        object MemoDTPrint: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 90.708720000000000000
          Width = 166.299320000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = 'dd-mm-yyyy hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbInfoPerusahaan."tgl_cetak"]')
          ParentFont = False
        end
        object MemoLine: TfrxMemoView
          AllowVectorExport = True
          Top = 86.929190000000000000
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
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 347.716760000000000000
        Width = 755.906000000000000000
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Width = 665.197280000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Frame.LeftLine.Width = 1.000000000000000000
          Frame.TopLine.Width = 1.000000000000000000
          Frame.RightLine.Width = 1.000000000000000000
          Frame.BottomLine.Width = 1.000000000000000000
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'JUMLAH PEMBATALAN REGISTRASI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Width = 90.708720000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Frame.LeftLine.Width = 1.000000000000000000
          Frame.TopLine.Width = 1.000000000000000000
          Frame.BottomLine.Width = 1.000000000000000000
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 219.212740000000000000
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
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.TopLine.Width = 2.000000000000000000
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
          Left = 385.512060000000000000
          Width = 177.637910000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Alasan Batal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 34.015770000000000000
          Width = 98.267780000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Tgl. Masuk')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 192.756030000000000000
          Width = 192.756030000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama Tamu')
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
          Frame.TopLine.Width = 2.000000000000000000
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'User yang Membatalkan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 563.149970000000000000
          Width = 102.047310000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Tgl. Dibatalkan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 132.283550000000000000
          Width = 60.472480000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'No. Kamar')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 268.346630000000000000
        Width = 755.906000000000000000
        DataSet = frxdbRekap
        DataSetName = 'frxdbRekap'
        RowCount = 0
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Width = 177.637910000000000000
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
            '[frxdbRekap."alasan_batal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Width = 192.756030000000000000
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
            '[frxdbRekap."nama_tamu"]')
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
          Frame.LeftLine.Width = 2.000000000000000000
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Width = 98.267780000000000000
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
            '[frxdbRekap."dt_register"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Width = 90.708720000000000000
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
            '[frxdbRekap."usr_upd"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = 'dd-mm-yyyy hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[frxdbRekap."dt_cancel"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Width = 60.472480000000000000
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
            '[frxdbRekap."no_kamar"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
