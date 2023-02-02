object frmLapResto: TfrmLapResto
  Left = 0
  Top = 0
  Caption = 'Laporan Transaksi Resto'
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
      Caption = 'Berisi data transaksi Billing Restaurant yang sudah terposting'
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
      Caption = 'LAPORAN PENDAPATAN RESTAURANT'
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
    Properties.ActivePage = tsDetail
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 435
    ClientRectLeft = 4
    ClientRectRight = 1135
    ClientRectTop = 24
    object tsRekap: TcxTabSheet
      Caption = 'Rekap Transaksi'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdRekap: TcxGrid
        Left = 0
        Top = 0
        Width = 1131
        Height = 411
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        object grddbtvRekap: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsRekap
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0'
              Kind = skSum
              Column = cxgrdbclmnGuestDBTableView1total
            end
            item
              Kind = skCount
              Column = cxgrdbclmnGuestDBTableView1no_nota
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
            DataBinding.FieldName = 'no_nota'
            Width = 116
          end
          object cxgrdbclmnGuestDBTableView1dt_nota: TcxGridDBColumn
            Caption = 'Tgl. Transaksi'
            DataBinding.FieldName = 'dt_nota'
            Width = 148
          end
          object cxgrdbclmnGuestDBTableView1no_register: TcxGridDBColumn
            Caption = 'No. Register'
            DataBinding.FieldName = 'no_register'
            Width = 111
          end
          object cxgrdbclmnGuestDBTableView1nama_tamu: TcxGridDBColumn
            Caption = 'Nama Tamu'
            DataBinding.FieldName = 'nama_tamu'
            Width = 204
          end
          object cxgrdbclmnGuestDBTableView1nomor_id: TcxGridDBColumn
            Caption = 'Cara Bayar'
            DataBinding.FieldName = 'cara_bayar'
            Width = 109
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
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ReadOnly = False
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Width = 71
          end
          object cxgrdbclmnGuestDBTableView1iscancel: TcxGridDBColumn
            Caption = 'Cancel'
            DataBinding.FieldName = 'iscancel'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ReadOnly = False
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Width = 71
          end
        end
        object grdlvlRekap: TcxGridLevel
          GridView = grddbtvRekap
        end
      end
    end
    object tsDetail: TcxTabSheet
      Caption = 'Detail Transaksi'
      ImageIndex = 1
      OnShow = tsDetailShow
      object grdDetail: TcxGrid
        Left = 0
        Top = 0
        Width = 1131
        Height = 411
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        object grddbtvDetail: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsDetail
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0'
              Kind = skSum
              Column = cxGridDBColumn6
            end
            item
              Kind = skCount
              Column = cxGridDBColumn1
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
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'No. Transaksi'
            DataBinding.FieldName = 'no_nota'
            Width = 108
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Tgl. Transaksi'
            DataBinding.FieldName = 'dt_nota'
            Width = 107
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'No. Register'
            DataBinding.FieldName = 'no_register'
            Width = 107
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Nama Tamu'
            DataBinding.FieldName = 'nama_tamu'
            Width = 179
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'Kode Item'
            DataBinding.FieldName = 'id_item'
            Width = 89
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Nama Item'
            DataBinding.FieldName = 'diskripsi'
            Width = 162
          end
          object grddbtvDetailColumn3: TcxGridDBColumn
            Caption = 'Satuan'
            DataBinding.FieldName = 'satuan'
          end
          object grddbtvDetailColumn2: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'qty'
            Width = 42
          end
          object grddbtvDetailColumn1: TcxGridDBColumn
            Caption = 'Diskon %'
            DataBinding.FieldName = 'disc_psn'
            Width = 55
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Sub Total'
            DataBinding.FieldName = 'sub_total'
            Width = 116
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Post'
            DataBinding.FieldName = 'ispost'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ReadOnly = False
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Width = 44
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = 'Cancel'
            DataBinding.FieldName = 'iscancel'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ReadOnly = False
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Width = 41
          end
        end
        object grdlvlDetail: TcxGridLevel
          GridView = grddbtvDetail
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
      'select a.*, b.nama_tamu'
      'from transaksi.nota_penjualan a'
      
        'left join transaksi.register_tamu b on b.no_register=a.no_regist' +
        'er'
      'where a.isdelete='#39'0'#39' and a.id_trans=:pid_trans'
      
        'and a.dt_nota between to_timestamp (:ptgl0,'#39'dd/mm/yyyy'#39') and to_' +
        'timestamp (:ptgl1,'#39'dd/mm/yyyy'#39') + interval '#39'23 hour 59 minutes'#39
      'order by a.dt_nota')
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
    Left = 384
    Top = 24
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
    object qRekapid_nota: TLargeintField
      FieldName = 'id_nota'
      Required = True
    end
    object qRekapno_nota: TStringField
      FieldName = 'no_nota'
    end
    object qRekapdt_nota: TDateTimeField
      FieldName = 'dt_nota'
      Required = True
      DisplayFormat = 'dd/mm/yyyy hh:mm'
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
    object qRekapusr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 10
    end
    object qRekapusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 10
    end
    object qRekapketerangan: TStringField
      FieldName = 'keterangan'
      Size = 255
    end
    object qRekapid_trans: TStringField
      FieldName = 'id_trans'
      Required = True
      Size = 10
    end
    object qRekapdisc_psn: TFloatField
      FieldName = 'disc_psn'
      Required = True
    end
    object qRekapdisc_rp: TFloatField
      FieldName = 'disc_rp'
      Required = True
    end
    object qRekapcara_bayar: TStringField
      FieldName = 'cara_bayar'
      Size = 50
    end
    object qRekaptotal: TFloatField
      FieldName = 'total'
      DisplayFormat = ',0'
    end
    object qRekapppn_rp: TFloatField
      FieldName = 'ppn_rp'
    end
    object qRekapket_disc: TStringField
      FieldName = 'ket_disc'
      Size = 100
    end
    object qRekapisdelete: TStringField
      FieldName = 'isdelete'
      Size = 1
    end
    object qRekapno_register: TStringField
      FieldName = 'no_register'
      Size = 100
    end
    object qRekapsubtotal: TFloatField
      FieldName = 'subtotal'
      DisplayFormat = ',0'
    end
    object qRekapsts: TStringField
      FieldName = 'sts'
      Size = 100
    end
    object qRekapshift: TIntegerField
      FieldName = 'shift'
    end
    object qRekapisclosed: TStringField
      FieldName = 'isclosed'
      Required = True
      Size = 1
    end
    object qRekapdt_ins: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object qRekapdt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
    object qRekapdibayar: TFloatField
      FieldName = 'dibayar'
    end
    object qRekapisbilling: TStringField
      FieldName = 'isbilling'
      Size = 1
    end
    object qRekapno_kamar: TStringField
      FieldName = 'no_kamar'
      Size = 10
    end
    object qRekapnama_tamu: TStringField
      FieldName = 'nama_tamu'
      Size = 255
    end
  end
  object dsRekap: TDataSource
    DataSet = qRekap
    Left = 384
    Top = 72
  end
  object qDetail: TZQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      
        'select b.no_nota, b.no_register, c.nama_tamu, b.cara_bayar, b.dt' +
        '_nota, a.nomor, a.id_item, a.diskripsi, a.qty, a.satuan, a.harga' +
        ', a.disc_psn,'
      
        '((a.harga-(a.harga*a.disc_psn)/100)*a.qty) as sub_total, b.ispos' +
        't, b.iscancel'
      'from transaksi.nota_penjualan_detail a'
      'left join transaksi.nota_penjualan b on b.id_nota=a.id_nota'
      
        'left join transaksi.register_tamu c on c.no_register=b.no_regist' +
        'er'
      'where b.isdelete='#39'0'#39' and b.id_trans=:pid_trans'
      
        'and b.dt_nota between to_timestamp (:ptgl0,'#39'dd/mm/yyyy'#39') and to_' +
        'timestamp (:ptgl1,'#39'dd/mm/yyyy'#39') + interval '#39'23 hour 59 minutes'#39)
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
    Left = 424
    Top = 24
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
    object qDetailno_register: TStringField
      FieldName = 'no_register'
      Size = 100
    end
    object qDetailnama_tamu: TStringField
      FieldName = 'nama_tamu'
      Size = 255
    end
    object qDetailnomor: TIntegerField
      FieldName = 'nomor'
    end
    object qDetailid_item: TStringField
      FieldName = 'id_item'
      Required = True
      Size = 50
    end
    object qDetaildiskripsi: TStringField
      FieldName = 'diskripsi'
      Size = 255
    end
    object qDetailqty: TFloatField
      FieldName = 'qty'
    end
    object qDetailsatuan: TStringField
      FieldName = 'satuan'
      Size = 10
    end
    object qDetailharga: TFloatField
      FieldName = 'harga'
      DisplayFormat = ',0'
    end
    object qDetaildisc_psn: TFloatField
      FieldName = 'disc_psn'
    end
    object qDetailsub_total: TFloatField
      FieldName = 'sub_total'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object qDetaildt_nota: TDateTimeField
      FieldName = 'dt_nota'
      Required = True
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object qDetailno_nota: TStringField
      FieldName = 'no_nota'
    end
    object qDetailispost: TStringField
      FieldName = 'ispost'
      Required = True
      Size = 1
    end
    object qDetailiscancel: TStringField
      FieldName = 'iscancel'
      Required = True
      Size = 1
    end
    object qDetailcara_bayar: TStringField
      FieldName = 'cara_bayar'
      Size = 50
    end
  end
  object dsDetail: TDataSource
    DataSet = qDetail
    Left = 424
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
      'id_nota=id_nota'
      'no_nota=no_nota'
      'dt_nota=dt_nota'
      'ispost=ispost'
      'iscancel=iscancel'
      'usr_ins=usr_ins'
      'usr_upd=usr_upd'
      'keterangan=keterangan'
      'id_trans=id_trans'
      'disc_psn=disc_psn'
      'disc_rp=disc_rp'
      'cara_bayar=cara_bayar'
      'total=total'
      'ppn_rp=ppn_rp'
      'ket_disc=ket_disc'
      'isdelete=isdelete'
      'no_register=no_register'
      'subtotal=subtotal'
      'sts=sts'
      'shift=shift'
      'isclosed=isclosed'
      'dt_ins=dt_ins'
      'dt_upd=dt_upd'
      'dibayar=dibayar'
      'isbilling=isbilling'
      'no_kamar=no_kamar'
      'nama_tamu=nama_tamu')
    DataSet = MemRekap
    BCDToCurrency = False
    Left = 384
    Top = 120
  end
  object frxdbDetail: TfrxDBDataset
    UserName = 'frxdbDetail'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cara_bayar=cara_bayar'
      'no_register=no_register'
      'nama_tamu=nama_tamu'
      'nomor=nomor'
      'id_item=id_item'
      'diskripsi=diskripsi'
      'qty=qty'
      'satuan=satuan'
      'harga=harga'
      'disc_psn=disc_psn'
      'sub_total=sub_total'
      'dt_nota=dt_nota'
      'no_nota=no_nota'
      'ispost=ispost'
      'iscancel=iscancel')
    DataSet = MemDetail
    BCDToCurrency = False
    Left = 424
    Top = 120
  end
  object MemRekap: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'id_nota'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'no_nota'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'dt_nota'
        Attributes = [faRequired]
        DataType = ftDateTime
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
        Name = 'usr_ins'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'usr_upd'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'keterangan'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'id_trans'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'disc_psn'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'disc_rp'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'cara_bayar'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'total'
        DataType = ftFloat
      end
      item
        Name = 'ppn_rp'
        DataType = ftFloat
      end
      item
        Name = 'ket_disc'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'isdelete'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'no_register'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'subtotal'
        DataType = ftFloat
      end
      item
        Name = 'sts'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'shift'
        DataType = ftInteger
      end
      item
        Name = 'isclosed'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'dt_ins'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'dt_upd'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'dibayar'
        DataType = ftFloat
      end
      item
        Name = 'isbilling'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'no_kamar'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'nama_tamu'
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
    object MemRekapid_nota: TLargeintField
      FieldName = 'id_nota'
      Required = True
    end
    object MemRekapno_nota: TStringField
      FieldName = 'no_nota'
    end
    object MemRekapdt_nota: TDateTimeField
      FieldName = 'dt_nota'
      Required = True
      DisplayFormat = 'dd/mm/yyyy hh:mm'
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
    object MemRekapusr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 10
    end
    object MemRekapusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 10
    end
    object MemRekapketerangan: TStringField
      FieldName = 'keterangan'
      Size = 255
    end
    object MemRekapid_trans: TStringField
      FieldName = 'id_trans'
      Required = True
      Size = 10
    end
    object MemRekapdisc_psn: TFloatField
      FieldName = 'disc_psn'
      Required = True
    end
    object MemRekapdisc_rp: TFloatField
      FieldName = 'disc_rp'
      Required = True
    end
    object MemRekapcara_bayar: TStringField
      FieldName = 'cara_bayar'
      Size = 50
    end
    object MemRekaptotal: TFloatField
      FieldName = 'total'
      DisplayFormat = ',0'
    end
    object MemRekapppn_rp: TFloatField
      FieldName = 'ppn_rp'
    end
    object MemRekapket_disc: TStringField
      FieldName = 'ket_disc'
      Size = 100
    end
    object MemRekapisdelete: TStringField
      FieldName = 'isdelete'
      Size = 1
    end
    object MemRekapno_register: TStringField
      FieldName = 'no_register'
      Size = 100
    end
    object MemRekapsubtotal: TFloatField
      FieldName = 'subtotal'
      DisplayFormat = ',0'
    end
    object MemRekapsts: TStringField
      FieldName = 'sts'
      Size = 100
    end
    object MemRekapshift: TIntegerField
      FieldName = 'shift'
    end
    object MemRekapisclosed: TStringField
      FieldName = 'isclosed'
      Required = True
      Size = 1
    end
    object MemRekapdt_ins: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object MemRekapdt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
    object MemRekapdibayar: TFloatField
      FieldName = 'dibayar'
    end
    object MemRekapisbilling: TStringField
      FieldName = 'isbilling'
      Size = 1
    end
    object MemRekapno_kamar: TStringField
      FieldName = 'no_kamar'
      Size = 10
    end
    object MemRekapnama_tamu: TStringField
      FieldName = 'nama_tamu'
      Size = 255
    end
  end
  object MemDetail: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'cara_bayar'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'no_register'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'nama_tamu'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'nomor'
        DataType = ftInteger
      end
      item
        Name = 'id_item'
        Attributes = [faRequired]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'diskripsi'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'qty'
        DataType = ftFloat
      end
      item
        Name = 'satuan'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'harga'
        DataType = ftFloat
      end
      item
        Name = 'disc_psn'
        DataType = ftFloat
      end
      item
        Name = 'sub_total'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'dt_nota'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'no_nota'
        DataType = ftString
        Size = 20
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
    Left = 424
    Top = 168
    object MemDetailcara_bayar: TStringField
      FieldName = 'cara_bayar'
      Size = 50
    end
    object MemDetailno_register: TStringField
      FieldName = 'no_register'
      Size = 100
    end
    object MemDetailnama_tamu: TStringField
      FieldName = 'nama_tamu'
      Size = 255
    end
    object MemDetailnomor: TIntegerField
      FieldName = 'nomor'
    end
    object MemDetailid_item: TStringField
      FieldName = 'id_item'
      Required = True
      Size = 50
    end
    object MemDetaildiskripsi: TStringField
      FieldName = 'diskripsi'
      Size = 255
    end
    object MemDetailqty: TFloatField
      FieldName = 'qty'
    end
    object MemDetailsatuan: TStringField
      FieldName = 'satuan'
      Size = 10
    end
    object MemDetailharga: TFloatField
      FieldName = 'harga'
      DisplayFormat = ',0'
    end
    object MemDetaildisc_psn: TFloatField
      FieldName = 'disc_psn'
    end
    object MemDetailsub_total: TFloatField
      FieldName = 'sub_total'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object MemDetaildt_nota: TDateTimeField
      FieldName = 'dt_nota'
      Required = True
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object MemDetailno_nota: TStringField
      FieldName = 'no_nota'
    end
    object MemDetailispost: TStringField
      FieldName = 'ispost'
      Required = True
      Size = 1
    end
    object MemDetailiscancel: TStringField
      FieldName = 'iscancel'
      Required = True
      Size = 1
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
            'REKAP PENDAPATAN RESTAURANT')
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
          Width = 623.622450000000000000
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
            'TOTAL PENDAPATAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 132.283550000000000000
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
          Frame.Width = 2.000000000000000000
          Frame.LeftLine.Width = 1.000000000000000000
          Frame.TopLine.Width = 1.000000000000000000
          Frame.BottomLine.Width = 1.000000000000000000
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdbRekap."total">,MasterData1)]')
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
          Left = 34.015770000000000000
          Width = 94.488250000000000000
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
          Frame.TopLine.Width = 2.000000000000000000
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 241.889920000000000000
          Width = 136.063080000000000000
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
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 510.236550000000000000
          Width = 113.385900000000000000
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
            'User')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 623.622450000000000000
          Width = 132.283550000000000000
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
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 377.953000000000000000
          Width = 132.283550000000000000
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
            'Cara Bayar')
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
            '[frxdbRekap."no_nota"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Width = 136.063080000000000000
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
            '[frxdbRekap."dt_nota"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Width = 113.385900000000000000
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
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbRekap."usr_upd"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 132.283550000000000000
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
            '[frxdbRekap."total"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 132.283550000000000000
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
            '[frxdbRekap."cara_bayar"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object RepDetail: TfrxReport
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
    Left = 429
    Top = 221
    Datasets = <
      item
        DataSet = frxdbDetail
        DataSetName = 'frxdbDetail'
      end
      item
        DataSet = frxdbInfoPerusahaan
        DataSetName = 'frxdbInfoPerusahaan'
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
      object Master: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 343.937230000000000000
        Width = 755.906000000000000000
        OnAfterPrint = 'Band6OnAfterPrint'
        OnBeforePrint = 'Band6OnBeforePrint'
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frxdbDetail
        DataSetName = 'frxdbDetail'
        RowCount = 0
        Stretched = True
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Width = 64.252010000000000000
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
            '[frxdbDetail."qty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 211.653680000000000000
          Width = 245.669450000000000000
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
            '[frxdbDetail."diskripsi"]')
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
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
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
            '[frxdbDetail."dt_nota"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Width = 98.267780000000000000
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
            '[frxdbDetail."id_item"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Width = 128.504020000000000000
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
          Frame.RightLine.Width = 2.000000000000000000
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbDetail."sub_total"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Width = 105.826840000000000000
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
            '[frxdbDetail."harga"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 170.078850000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 98.590600000000000000
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
            'REKAP DETAIL'
            'PENDAPATAN RESTAURANT')
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
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 99.047310000000000000
          Width = 279.685220000000000000
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
          Width = 279.685220000000000000
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
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 99.047310000000000000
          Top = 45.354360000000000000
          Width = 279.685220000000000000
          Height = 15.118120000000000000
          DataSet = frxdbInfoPerusahaan
          DataSetName = 'frxdbInfoPerusahaan'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frxDBInfoPerusahaan."telp_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 99.047310000000000000
          Top = 60.472480000000000000
          Width = 279.685220000000000000
          Height = 15.118120000000000000
          DataField = 'email'
          DataSet = frxdbInfoPerusahaan
          DataSetName = 'frxdbInfoPerusahaan'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frxdbInfoPerusahaan."email"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 99.023473150000000000
          Top = 30.236240000000000000
          Width = 279.685220000000000000
          Height = 15.118120000000000000
          DataSet = frxdbInfoPerusahaan
          DataSetName = 'frxdbInfoPerusahaan'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frxDBInfoPerusahaan."kota_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 136.385900000000000000
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
            '[frxdbInfoPerusahaan."periode"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 159.063080000000000000
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
        Top = 521.575140000000000000
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
        Top = 476.220780000000000000
        Width = 755.906000000000000000
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Width = 627.401980000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
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
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Total Pendapatan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 653.858690000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Frame.LeftLine.Width = 1.000000000000000000
          Frame.TopLine.Width = 1.000000000000000000
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdbDetail."sub_total">,Master)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Width = 26.456710000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Frame.LeftLine.Width = 1.000000000000000000
          Frame.TopLine.Width = 1.000000000000000000
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Rp.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 70.811070000000000000
        Top = 249.448980000000000000
        Width = 755.906000000000000000
        Condition = 'frxdbDetail."no_register"'
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Top = 44.354360000000000000
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
          Left = 457.323130000000000000
          Top = 44.354360000000000000
          Width = 64.252010000000000000
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
            'Qty')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 34.015770000000000000
          Top = 44.354360000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = '.'
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
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 211.653680000000000000
          Top = 44.354360000000000000
          Width = 245.669450000000000000
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
            'Nama Item')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 113.385900000000000000
          Top = 44.354360000000000000
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
            'Kode Item')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 627.401980000000000000
          Top = 44.354360000000000000
          Width = 128.504020000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Sub. Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[frxdbDetail."no_nota"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 521.575140000000000000
          Top = 44.354360000000000000
          Width = 105.826840000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = '.'
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
            'Harga')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 18.897650000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[frxdbDetail."cara_bayar"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[frxdbDetail."no_register"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'No. Transaksi')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'Cara Bayar')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 18.897650000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 408.189240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'No. Register')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 502.677490000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 408.189240000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'Nama Tamu')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 19.897650000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 18.897650000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[frxdbDetail."nama_tamu"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 385.512060000000000000
        Width = 755.906000000000000000
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Width = 627.401980000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
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
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 653.858690000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Frame.LeftLine.Width = 1.000000000000000000
          Frame.TopLine.Width = 1.000000000000000000
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdbDetail."sub_total">,Master)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Width = 26.456710000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Frame.LeftLine.Width = 1.000000000000000000
          Frame.TopLine.Width = 1.000000000000000000
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Rp.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
