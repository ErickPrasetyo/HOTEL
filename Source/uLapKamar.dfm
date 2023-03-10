object frmLapKamar: TfrmLapKamar
  Left = 0
  Top = 0
  Caption = 'Laporan Transaksi Kamar'
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
      Caption = 'Berisi data transaksi Billing Kamar yang sudah terposting'
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
      Caption = 'LAPORAN PENDAPATAN KAMAR'
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
    Version = '2.5.7.7'
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
      Version = '1.3.0.4'
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
      Version = '1.3.0.4'
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
      Version = '1.3.0.4'
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
      Version = '1.3.0.4'
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
    Properties.ActivePage = tsPajak
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 435
    ClientRectLeft = 4
    ClientRectRight = 1135
    ClientRectTop = 24
    object tsRekap: TcxTabSheet
      Caption = 'Rekap Transaksi Kamar'
      ImageIndex = 0
      OnShow = tsRekapShow
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
            end
            item
              Format = ',0'
              Kind = skSum
            end
            item
              Format = ',0'
              Kind = skSum
              Column = grddbtvRekapColumn4
            end
            item
              Format = ',0'
              Kind = skSum
              Column = grddbtvRekapColumn9
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
          object grddbtvRekapColumn6: TcxGridDBColumn
            DataBinding.FieldName = 'shift'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 49
          end
          object cxgrdbclmnGuestDBTableView1nama_tamu: TcxGridDBColumn
            Caption = 'Nama Tamu'
            DataBinding.FieldName = 'nama_tamu'
            Width = 204
          end
          object grddbtvRekapColumn5: TcxGridDBColumn
            Caption = 'Jenis Reservasi'
            DataBinding.FieldName = 'jns_reservasi'
            Width = 121
          end
          object cxgrdbclmnGuestDBTableView1nomor_id: TcxGridDBColumn
            Caption = 'No. Kamar'
            DataBinding.FieldName = 'no_kamar'
            Width = 68
          end
          object grddbtvRekapColumn1: TcxGridDBColumn
            Caption = 'Jumlah Hari'
            DataBinding.FieldName = 'qty'
            Width = 81
          end
          object grddbtvRekapColumn3: TcxGridDBColumn
            Caption = 'Tgl. Ceck In'
            DataBinding.FieldName = 'dt_masuk'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
          end
          object grddbtvRekapColumn7: TcxGridDBColumn
            Caption = 'Tgl. Ceck Out'
            DataBinding.FieldName = 'dt_keluar'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
          end
          object grddbtvRekapColumn8: TcxGridDBColumn
            Caption = 'Jenis Pembayaran'
            DataBinding.FieldName = 'cara_bayar'
            Width = 101
          end
          object grddbtvRekapColumn2: TcxGridDBColumn
            Caption = 'Harga Net'
            DataBinding.FieldName = 'harga'
            Width = 103
          end
          object grddbtvRekapColumn4: TcxGridDBColumn
            Caption = 'Pajak'
            DataBinding.FieldName = 'tot_tax'
            Width = 97
          end
          object grddbtvRekapColumn9: TcxGridDBColumn
            Caption = 'Diskon'
            DataBinding.FieldName = 'diskon'
            HeaderAlignmentHorz = taCenter
            Width = 103
          end
          object cxgrdbclmnGuestDBTableView1total: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'total'
            Width = 100
          end
          object cxgrdbclmnGuestDBTableView1usr_upd: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'usr_upd'
            Width = 104
          end
        end
        object grdlvlRekap: TcxGridLevel
          GridView = grddbtvRekap
        end
      end
    end
    object tsDetail: TcxTabSheet
      Caption = 'Rekap Transaksi Extra Bed'
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
            DataBinding.FieldName = 'no_extra_bed'
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
            DataBinding.FieldName = 'keterangan'
            Width = 162
          end
          object grddbtvDetailColumn2: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'qty'
            Width = 42
          end
          object grddbtvDetailColumn3: TcxGridDBColumn
            Caption = 'Tarif'
            DataBinding.FieldName = 'tarif'
            Width = 91
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Sub Total'
            DataBinding.FieldName = 'total'
            Width = 97
          end
          object grddbtvDetailColumn1: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'usr_upd'
            Width = 124
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
    object cxTabSheet1: TcxTabSheet
      Caption = 'Rekap Room Charge'
      ImageIndex = 2
      OnShow = cxTabSheet1Show
      object grdCharge: TcxGrid
        Left = 0
        Top = 0
        Width = 1131
        Height = 411
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        object grdDBtvCharge: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsRoomCharge
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0'
              Kind = skSum
              Column = cxGridDBColumn18
            end
            item
              Kind = skCount
            end
            item
              Kind = skCount
              Column = cxGridDBColumn12
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.DataRowSizing = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.Footer = True
          Styles.ContentEven = DataModule1.cxstyl2
          Styles.ContentOdd = DataModule1.cxstyl1
          Styles.Selection = DataModule1.cxstylSel
          object cxGridDBColumn12: TcxGridDBColumn
            Caption = 'No. Register'
            DataBinding.FieldName = 'no_register'
            Width = 107
          end
          object cxGridDBColumn11: TcxGridDBColumn
            Caption = 'Tgl. Transaksi'
            DataBinding.FieldName = 'dt_nota'
            Width = 107
          end
          object cxGridDBColumn13: TcxGridDBColumn
            Caption = 'Nama Tamu'
            DataBinding.FieldName = 'nama_tamu'
            Width = 179
          end
          object cxGridDBColumn14: TcxGridDBColumn
            Caption = 'No Kamar'
            DataBinding.FieldName = 'no_kamar'
            Width = 89
          end
          object grdDBtvChargeColumn1: TcxGridDBColumn
            Caption = 'Tgl. Ceck In'
            DataBinding.FieldName = 'dt_masuk'
            Width = 125
          end
          object grdDBtvChargeColumn2: TcxGridDBColumn
            Caption = 'Tgl. Ceck Out'
            DataBinding.FieldName = 'dt_keluar'
            Width = 125
          end
          object grdDBtvChargeColumn3: TcxGridDBColumn
            Caption = 'Charge Early CI %'
            DataBinding.FieldName = 'ci_charge_psn'
            Width = 110
          end
          object cxGridDBColumn16: TcxGridDBColumn
            Caption = 'Charge lead CO %'
            DataBinding.FieldName = 'charge_psn'
            Width = 104
          end
          object cxGridDBColumn17: TcxGridDBColumn
            Caption = 'Tarif Kamar'
            DataBinding.FieldName = 'harga'
            Width = 99
          end
          object cxGridDBColumn18: TcxGridDBColumn
            Caption = 'Total Charge'
            DataBinding.FieldName = 'tot_charge'
            Width = 102
          end
          object cxGridDBColumn19: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'usr_upd'
            Width = 124
          end
        end
        object grdlvlCharge: TcxGridLevel
          GridView = grdDBtvCharge
        end
      end
    end
    object tsPajak: TcxTabSheet
      Caption = 'Rekap Pelaporan Pajak'
      ImageIndex = 0
      OnShow = tsPajakShow
      object grdPajak: TcxGrid
        Left = 0
        Top = 0
        Width = 1131
        Height = 411
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        object grdDbTvPajak: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsRepPajak
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0'
              Kind = skSum
              Column = cxGridDBColumn30
            end
            item
              Kind = skCount
            end
            item
              Format = ',0'
              Kind = skSum
            end
            item
              Format = ',0'
              Kind = skSum
            end
            item
              Format = ',0'
              Kind = skSum
            end
            item
              Format = ',0'
              Kind = skSum
              FieldName = 'diskon'
              Column = grdDbTvPajakColumn1
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
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = 'No. Register'
            DataBinding.FieldName = 'no_register'
            Width = 111
          end
          object cxGridDBColumn15: TcxGridDBColumn
            DataBinding.FieldName = 'shift'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 49
          end
          object cxGridDBColumn20: TcxGridDBColumn
            Caption = 'Nama Tamu'
            DataBinding.FieldName = 'nama_tamu'
            Width = 204
          end
          object cxGridDBColumn21: TcxGridDBColumn
            Caption = 'Jenis Reservasi'
            DataBinding.FieldName = 'jns_reservasi'
            Width = 121
          end
          object cxGridDBColumn22: TcxGridDBColumn
            Caption = 'No. Kamar'
            DataBinding.FieldName = 'no_kamar'
            Width = 68
          end
          object cxGridDBColumn24: TcxGridDBColumn
            Caption = 'Tgl. Ceck In'
            DataBinding.FieldName = 'dt_masuk'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 150
          end
          object cxGridDBColumn25: TcxGridDBColumn
            Caption = 'Tgl. Ceck Out'
            DataBinding.FieldName = 'dt_keluar'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 166
          end
          object cxGridDBColumn26: TcxGridDBColumn
            Caption = 'Jenis Pembayaran'
            DataBinding.FieldName = 'cara_bayar'
            Width = 125
          end
          object cxGridDBColumn23: TcxGridDBColumn
            Caption = 'Jumlah Hari'
            DataBinding.FieldName = 'qty'
            Width = 81
          end
          object cxGridDBColumn27: TcxGridDBColumn
            Caption = 'Harga Net'
            DataBinding.FieldName = 'harga'
            Width = 103
          end
          object grdDbTvPajakColumn1: TcxGridDBColumn
            Caption = 'Diskon'
            DataBinding.FieldName = 'diskon'
            Width = 86
          end
          object cxGridDBColumn30: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'sub_total'
            Width = 100
          end
          object cxGridDBColumn31: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'usr_upd'
            Width = 104
          end
        end
        object grdlvlPajak: TcxGridLevel
          GridView = grdDbTvPajak
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
    object Label3: TLabel
      Left = 533
      Top = 17
      Width = 106
      Height = 19
      Caption = 'Jenis Reservasi'
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
      Left = 851
      Top = 9
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
      Version = '1.3.0.4'
      OnClick = glbtnGoClick
    end
    object edtjnsReservasi: TcxComboBox
      Left = 655
      Top = 14
      AutoSize = False
      ParentFont = False
      Properties.Items.Strings = (
        'SEMUA'
        'WALK IN'
        'PHONE'
        'TRAVELOKA'
        'PEGI.PEGI'
        'BOOKING.COM'
        'TICKET.COM')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Height = 27
      Width = 190
    end
  end
  object qRekap: TZQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      
        'select a.*, d.dt_nota, d.shift, b.no_register, b.nama_tamu, b.je' +
        'nis as jns_reservasi, b.usr_upd, d.cara_bayar,'
      '(a.qty*c.service) as tot_service,'
      '(a.qty*c.tax) as tot_tax,'
      '(a.qty*c.base_tarif) as tot_base_tarif,'
      '(a.qty*a.harga)-a.diskon as total'
      'from transaksi.register_tamu_detail a'
      
        'left join transaksi.register_tamu b on b.id_register=a.id_regist' +
        'er'
      'left join master.mkamar c on c.no_kamar=a.no_kamar'
      'left join transaksi.nota d on d.no_register=b.no_register'
      
        'where b.iscekout='#39'1'#39' and b.isclosed='#39'1'#39' and d.iscancel='#39'0'#39' and d' +
        '.isdelete='#39'0'#39' and d.isclosed='#39'1'#39
      
        'and d.dt_nota between to_timestamp (:ptgl0,'#39'dd/mm/yyyy'#39') and to_' +
        'timestamp (:ptgl1,'#39'dd/mm/yyyy'#39') + interval '#39'23 hour 59 minutes'#39
      'and b.jenis=:jns_reservasi'
      'order by b.jenis')
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
      end
      item
        DataType = ftUnknown
        Name = 'jns_reservasi'
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
      end
      item
        DataType = ftUnknown
        Name = 'jns_reservasi'
        ParamType = ptUnknown
      end>
    object qRekapid_register: TLargeintField
      FieldName = 'id_register'
      Required = True
    end
    object qRekapid_register_detail: TLargeintField
      FieldName = 'id_register_detail'
      Required = True
    end
    object qRekapno_kamar: TStringField
      FieldName = 'no_kamar'
      Size = 10
    end
    object qRekapdt_masuk: TDateTimeField
      FieldName = 'dt_masuk'
    end
    object qRekapdt_keluar: TDateTimeField
      FieldName = 'dt_keluar'
    end
    object qRekapharga: TFloatField
      FieldName = 'harga'
      Required = True
      DisplayFormat = ',0'
    end
    object qRekapismaster: TStringField
      FieldName = 'ismaster'
      Required = True
      Size = 1
    end
    object qRekapid_item: TStringField
      FieldName = 'id_item'
      Size = 50
    end
    object qRekapqty: TFloatField
      FieldName = 'qty'
    end
    object qRekapdiskripsi: TStringField
      FieldName = 'diskripsi'
      Size = 255
    end
    object qRekapismoving: TStringField
      FieldName = 'ismoving'
      Size = 1
    end
    object qRekapno_register: TStringField
      FieldName = 'no_register'
      Required = True
    end
    object qRekapnama_tamu: TStringField
      FieldName = 'nama_tamu'
      Size = 255
    end
    object qRekapusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object qRekaptotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object qRekapcharge_psn: TFloatField
      FieldName = 'charge_psn'
    end
    object qRekapcharge_rp: TFloatField
      FieldName = 'charge_rp'
      DisplayFormat = ',0'
    end
    object qRekaptot_service: TFloatField
      FieldName = 'tot_service'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object qRekaptot_tax: TFloatField
      FieldName = 'tot_tax'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object qRekaptot_base_tarif: TFloatField
      FieldName = 'tot_base_tarif'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object qRekapdt_nota: TDateTimeField
      FieldName = 'dt_nota'
    end
    object qRekapshift: TIntegerField
      FieldName = 'shift'
    end
    object qRekapjns_reservasi: TStringField
      FieldName = 'jns_reservasi'
      Size = 5
    end
    object qRekapcara_bayar: TStringField
      FieldName = 'cara_bayar'
    end
    object qRekapdiskon: TFloatField
      FieldName = 'diskon'
      DisplayFormat = ',0'
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
      'select a.*, c.dt_nota, c.shift as shift_nota, b.nama_tamu,'
      '(a.qty*a.tarif) as total'
      'from transaksi.extra_bed a'
      
        'left join transaksi.register_tamu b on b.no_register=a.no_regist' +
        'er'
      'left join transaksi.nota c on c.no_register=b.no_register'
      
        'where b.iscancel='#39'0'#39'and b.iscekout='#39'1'#39' and b.isclosed='#39'1'#39' and c.' +
        'isclosed='#39'1'#39
      
        'and c.dt_nota between to_timestamp (:ptgl0,'#39'dd/mm/yyyy'#39') and to_' +
        'timestamp (:ptgl1,'#39'dd/mm/yyyy'#39') + interval '#39'23 hours 59 minutes'#39
      'order by c.dt_nota')
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
    Left = 424
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
    object qDetailid_extra_bed: TLargeintField
      FieldName = 'id_extra_bed'
      Required = True
    end
    object qDetailno_extra_bed: TStringField
      FieldName = 'no_extra_bed'
    end
    object qDetailno_register: TStringField
      FieldName = 'no_register'
    end
    object qDetailno_kamar: TStringField
      FieldName = 'no_kamar'
      Required = True
      Size = 10
    end
    object qDetaildt_masuk: TDateTimeField
      FieldName = 'dt_masuk'
    end
    object qDetaildt_keluar: TDateTimeField
      FieldName = 'dt_keluar'
    end
    object qDetaildt_extra_bed: TDateTimeField
      FieldName = 'dt_extra_bed'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object qDetailid_item: TStringField
      FieldName = 'id_item'
      Size = 50
    end
    object qDetailid_trans: TStringField
      FieldName = 'id_trans'
      Size = 10
    end
    object qDetailqty: TFloatField
      FieldName = 'qty'
      Required = True
    end
    object qDetailtarif: TFloatField
      FieldName = 'tarif'
      Required = True
      DisplayFormat = ',0'
    end
    object qDetailusr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 30
    end
    object qDetailusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object qDetaildt_ins: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object qDetaildt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
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
    object qDetailshift: TIntegerField
      FieldName = 'shift'
    end
    object qDetailisdelete: TStringField
      FieldName = 'isdelete'
      Size = 1
    end
    object qDetailketerangan: TStringField
      FieldName = 'keterangan'
      Size = 255
    end
    object qDetailnama_tamu: TStringField
      FieldName = 'nama_tamu'
      Size = 255
    end
    object qDetailtotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object qDetaildt_nota: TDateTimeField
      FieldName = 'dt_nota'
    end
    object qDetailshift_nota: TIntegerField
      FieldName = 'shift_nota'
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
      end
      item
        Name = 'usr_cetak'
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
    Left = 336
    Top = 24
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
    object MemInfoPerusahaanusr_cetak: TStringField
      FieldName = 'usr_cetak'
      Size = 255
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
      'email=email'
      'usr_cetak=usr_cetak')
    DataSet = MemInfoPerusahaan
    BCDToCurrency = False
    Left = 336
    Top = 72
  end
  object frxdbRekap: TfrxDBDataset
    UserName = 'frxdbRekap'
    CloseDataSource = False
    FieldAliases.Strings = (
      'diskon=diskon'
      'cara_bayar=cara_bayar'
      'jns_reservasi=jns_reservasi'
      'dt_nota=dt_nota'
      'shift=shift'
      'id_register=id_register'
      'id_register_detail=id_register_detail'
      'no_kamar=no_kamar'
      'dt_masuk=dt_masuk'
      'dt_keluar=dt_keluar'
      'harga=harga'
      'ismaster=ismaster'
      'id_item=id_item'
      'qty=qty'
      'diskripsi=diskripsi'
      'ismoving=ismoving'
      'no_register=no_register'
      'nama_tamu=nama_tamu'
      'usr_upd=usr_upd'
      'total=total'
      'charge_psn=charge_psn'
      'charge_rp=charge_rp'
      'tot_service=tot_service'
      'tot_tax=tot_tax'
      'tot_base_tarif=tot_base_tarif')
    DataSet = MemRekap
    BCDToCurrency = False
    Left = 384
    Top = 120
  end
  object frxdbDetail: TfrxDBDataset
    UserName = 'frxdbDetail'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_extra_bed=id_extra_bed'
      'no_extra_bed=no_extra_bed'
      'no_register=no_register'
      'no_kamar=no_kamar'
      'dt_masuk=dt_masuk'
      'dt_keluar=dt_keluar'
      'dt_extra_bed=dt_extra_bed'
      'id_item=id_item'
      'id_trans=id_trans'
      'qty=qty'
      'tarif=tarif'
      'dt_nota=dt_nota'
      'shift_nota=shift_nota'
      'usr_ins=usr_ins'
      'usr_upd=usr_upd'
      'dt_ins=dt_ins'
      'dt_upd=dt_upd'
      'ispost=ispost'
      'iscancel=iscancel'
      'shift=shift'
      'isdelete=isdelete'
      'keterangan=keterangan'
      'nama_tamu=nama_tamu'
      'total=total')
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
        Name = 'diskon'
        DataType = ftFloat
      end
      item
        Name = 'cara_bayar'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'jns_reservasi'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'dt_nota'
        DataType = ftDateTime
      end
      item
        Name = 'shift'
        DataType = ftInteger
      end
      item
        Name = 'id_register'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'id_register_detail'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'no_kamar'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'dt_masuk'
        DataType = ftDateTime
      end
      item
        Name = 'dt_keluar'
        DataType = ftDateTime
      end
      item
        Name = 'harga'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'ismaster'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'id_item'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'qty'
        DataType = ftFloat
      end
      item
        Name = 'diskripsi'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'ismoving'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'no_register'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nama_tamu'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'usr_upd'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'total'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'charge_psn'
        DataType = ftFloat
      end
      item
        Name = 'charge_rp'
        DataType = ftFloat
      end
      item
        Name = 'tot_service'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'tot_tax'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'tot_base_tarif'
        Attributes = [faReadonly]
        DataType = ftFloat
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
    object MemRekapdiskon: TFloatField
      FieldName = 'diskon'
      DisplayFormat = ',0'
    end
    object MemRekapcara_bayar: TStringField
      FieldName = 'cara_bayar'
    end
    object MemRekapjns_reservasi: TStringField
      FieldName = 'jns_reservasi'
      Size = 30
    end
    object MemRekapdt_nota: TDateTimeField
      FieldName = 'dt_nota'
    end
    object MemRekapshift: TIntegerField
      FieldName = 'shift'
    end
    object MemRekapid_register: TLargeintField
      FieldName = 'id_register'
      Required = True
    end
    object MemRekapid_register_detail: TLargeintField
      FieldName = 'id_register_detail'
      Required = True
    end
    object MemRekapno_kamar: TStringField
      FieldName = 'no_kamar'
      Size = 10
    end
    object MemRekapdt_masuk: TDateTimeField
      FieldName = 'dt_masuk'
    end
    object MemRekapdt_keluar: TDateTimeField
      FieldName = 'dt_keluar'
    end
    object MemRekapharga: TFloatField
      FieldName = 'harga'
      Required = True
      DisplayFormat = ',0'
    end
    object MemRekapismaster: TStringField
      FieldName = 'ismaster'
      Required = True
      Size = 1
    end
    object MemRekapid_item: TStringField
      FieldName = 'id_item'
      Size = 50
    end
    object MemRekapqty: TFloatField
      FieldName = 'qty'
    end
    object MemRekapdiskripsi: TStringField
      FieldName = 'diskripsi'
      Size = 255
    end
    object MemRekapismoving: TStringField
      FieldName = 'ismoving'
      Size = 1
    end
    object MemRekapno_register: TStringField
      FieldName = 'no_register'
      Required = True
    end
    object MemRekapnama_tamu: TStringField
      FieldName = 'nama_tamu'
      Size = 255
    end
    object MemRekapusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object MemRekaptotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object MemRekapcharge_psn: TFloatField
      FieldName = 'charge_psn'
    end
    object MemRekapcharge_rp: TFloatField
      FieldName = 'charge_rp'
      DisplayFormat = ',0'
    end
    object MemRekaptot_service: TFloatField
      FieldName = 'tot_service'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object MemRekaptot_tax: TFloatField
      FieldName = 'tot_tax'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object MemRekaptot_base_tarif: TFloatField
      FieldName = 'tot_base_tarif'
      ReadOnly = True
      DisplayFormat = ',0'
    end
  end
  object MemDetail: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'id_extra_bed'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'no_extra_bed'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'no_register'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'no_kamar'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'dt_masuk'
        DataType = ftDateTime
      end
      item
        Name = 'dt_keluar'
        DataType = ftDateTime
      end
      item
        Name = 'dt_extra_bed'
        DataType = ftDateTime
      end
      item
        Name = 'id_item'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'id_trans'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'qty'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'tarif'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'dt_nota'
        DataType = ftDateTime
      end
      item
        Name = 'shift_nota'
        DataType = ftInteger
      end
      item
        Name = 'usr_ins'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'usr_upd'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
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
        Name = 'shift'
        DataType = ftInteger
      end
      item
        Name = 'isdelete'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'keterangan'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'nama_tamu'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'total'
        Attributes = [faReadonly]
        DataType = ftFloat
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
    object MemDetailid_extra_bed: TLargeintField
      FieldName = 'id_extra_bed'
      Required = True
    end
    object MemDetailno_extra_bed: TStringField
      FieldName = 'no_extra_bed'
    end
    object MemDetailno_register: TStringField
      FieldName = 'no_register'
    end
    object MemDetailno_kamar: TStringField
      FieldName = 'no_kamar'
      Required = True
      Size = 10
    end
    object MemDetaildt_masuk: TDateTimeField
      FieldName = 'dt_masuk'
    end
    object MemDetaildt_keluar: TDateTimeField
      FieldName = 'dt_keluar'
    end
    object MemDetaildt_extra_bed: TDateTimeField
      FieldName = 'dt_extra_bed'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object MemDetailid_item: TStringField
      FieldName = 'id_item'
      Size = 50
    end
    object MemDetailid_trans: TStringField
      FieldName = 'id_trans'
      Size = 10
    end
    object MemDetailqty: TFloatField
      FieldName = 'qty'
      Required = True
    end
    object MemDetailtarif: TFloatField
      FieldName = 'tarif'
      Required = True
      DisplayFormat = ',0'
    end
    object MemDetaildt_nota: TDateTimeField
      FieldName = 'dt_nota'
    end
    object MemDetailshift_nota: TIntegerField
      FieldName = 'shift_nota'
    end
    object MemDetailusr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 30
    end
    object MemDetailusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object MemDetaildt_ins: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object MemDetaildt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
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
    object MemDetailshift: TIntegerField
      FieldName = 'shift'
    end
    object MemDetailisdelete: TStringField
      FieldName = 'isdelete'
      Size = 1
    end
    object MemDetailketerangan: TStringField
      FieldName = 'keterangan'
      Size = 255
    end
    object MemDetailnama_tamu: TStringField
      FieldName = 'nama_tamu'
      Size = 255
    end
    object MemDetailtotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
      DisplayFormat = ',0'
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
    Left = 377
    Top = 227
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 81.913420000000000000
          Width = 1046.929810000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'REKAP PENDAPATAN KAMAR')
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
          Width = 1046.929810000000000000
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
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 105.826840000000000000
        Top = 498.897960000000000000
        Width = 1046.929810000000000000
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
            '[frxdbInfoPerusahaan."usr_cetak"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoLblPageOfTotalPages: TfrxMemoView
          AllowVectorExport = True
          Left = 842.835190000000000000
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
          Width = 1046.929810000000000000
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
        Height = 49.133890000000000000
        Top = 427.086890000000000000
        Width = 1046.929810000000000000
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Top = 26.456710000000000000
          Width = 767.244590000000000000
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
            'TOTAL     KESELURUHAN   ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 952.441560000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
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
            '[SUM(<frxdbRekap."total">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 767.244590000000000000
          Top = 26.456710000000000000
          Width = 90.708720000000000000
          Height = 22.677180000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
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
            '[SUM(<frxdbRekap."tot_tax">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 857.953310000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
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
            '[SUM(<frxdbRekap."diskon">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 219.212740000000000000
        Width = 1046.929810000000000000
        Condition = 'frxdbRekap."jns_reservasi"'
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Top = 11.338590000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.TopLine.Width = 2.000000000000000000
          Memo.UTF8W = (
            'JENIS RESERVASI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 11.338590000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.TopLine.Width = 2.000000000000000000
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 11.338590000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.TopLine.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frxdbRekap."jns_reservasi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Top = 34.015770000000000000
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
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 34.015770000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
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
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 113.385900000000000000
          Top = 34.015770000000000000
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
            'Tgl. CI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 294.803340000000000000
          Top = 34.015770000000000000
          Width = 185.196970000000000000
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
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 480.000310000000000000
          Top = 34.015770000000000000
          Width = 56.692950000000000000
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
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 627.401980000000000000
          Top = 34.015770000000000000
          Width = 45.354360000000000000
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
            'Jumlah Hari')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 536.693260000000000000
          Top = 34.015770000000000000
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
            'Jenis Pembayaran')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 672.756340000000000000
          Top = 34.015770000000000000
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
            'Tarif Net Kamar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 767.244590000000000000
          Top = 34.015770000000000000
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
            'Pajak 10%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 952.441560000000000000
          Top = 34.015770000000000000
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
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 204.094620000000000000
          Top = 34.015770000000000000
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
            'Tgl. CO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 857.953310000000000000
          Top = 34.015770000000000000
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
            'Diskon Rp.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 302.362400000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbRekap
        DataSetName = 'frxdbRekap'
        RowCount = 0
        Stretched = True
        object Memo56: TfrxMemoView
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
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Width = 79.370130000000000000
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
            '[frxdbRekap."no_register"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = 'dd/mm/yyyy hh:nn'
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
            '[frxdbRekap."dt_masuk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 204.094620000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = 'dd/mm/yyyy hh:nn'
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
            '[frxdbRekap."dt_keluar"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Width = 185.196970000000000000
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
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Width = 56.692950000000000000
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
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Width = 90.708720000000000000
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
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Width = 45.354360000000000000
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
            '[frxdbRekap."qty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Width = 94.488250000000000000
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
            '[frxdbRekap."harga"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 767.244590000000000000
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
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbRekap."tot_tax"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 952.441560000000000000
          Width = 94.488250000000000000
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
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 857.953310000000000000
          Width = 94.488250000000000000
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
            '[frxdbRekap."diskon"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 343.937230000000000000
        Width = 1046.929810000000000000
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Width = 767.244590000000000000
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
            'TOTAL     ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 952.441560000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
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
            '[SUM(<frxdbRekap."total">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 767.244590000000000000
          Width = 90.708720000000000000
          Height = 22.677180000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
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
            '[SUM(<frxdbRekap."tot_tax">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 857.953310000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
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
            '[SUM(<frxdbRekap."diskon">,MasterData1)]')
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
            'PENDAPATAN EXTRA BED')
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
        Top = 423.307360000000000000
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
            '[frxdbInfoPerusahaan."usr_cetak"]')
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
        Top = 377.953000000000000000
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
            '[SUM(<frxdbDetail."total">,MasterData1)]')
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
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 249.448980000000000000
        Width = 755.906000000000000000
        object Memo52: TfrxMemoView
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
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 457.323130000000000000
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
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 34.015770000000000000
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
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 211.653680000000000000
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
            'Nama Tamu')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 113.385900000000000000
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
            'No. Kamar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 627.401980000000000000
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
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 521.575140000000000000
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 298.582870000000000000
        Width = 755.906000000000000000
        DataSet = frxdbDetail
        DataSetName = 'frxdbDetail'
        RowCount = 0
        object Memo41: TfrxMemoView
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
        object Memo42: TfrxMemoView
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
            '[frxdbDetail."nama_tamu"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
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
        object Memo48: TfrxMemoView
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
        object Memo49: TfrxMemoView
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
            '[frxdbDetail."no_kamar"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
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
            '[frxdbDetail."total"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
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
            '[frxdbDetail."tarif"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object qRoomCharge: TZQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      
        'select z.* from (select a.no_kamar, a.dt_masuk, a.dt_keluar, a.h' +
        'arga,a.ci_charge_psn, a.charge_psn, d.dt_nota, d.shift, b.no_reg' +
        'ister, b.nama_tamu, b.jenis as jns_reservasi, b.usr_upd,'
      
        '((a.harga*(a.ci_charge_psn/100))+(a.harga*(a.charge_psn/100))) a' +
        's tot_charge'
      'from transaksi.register_tamu_detail a'
      
        'left join transaksi.register_tamu b on b.id_register=a.id_regist' +
        'er'
      'left join master.mkamar c on c.no_kamar=a.no_kamar'
      'left join transaksi.nota d on d.no_register=b.no_register'
      
        'where b.iscekout='#39'1'#39' and b.isclosed='#39'1'#39' and d.iscancel='#39'0'#39' and d' +
        '.isdelete='#39'0'#39' and d.isclosed='#39'1'#39
      
        'and d.dt_nota between to_timestamp (:ptgl0,'#39'dd/mm/yyyy'#39') and to_' +
        'timestamp (:ptgl1,'#39'dd/mm/yyyy'#39') + interval '#39'23 hour 59 minutes'#39
      'order by d.dt_nota) as z'
      'where z.tot_charge > 0')
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
    object qRoomChargeno_kamar: TStringField
      FieldName = 'no_kamar'
      Size = 10
    end
    object qRoomChargedt_masuk: TDateTimeField
      FieldName = 'dt_masuk'
    end
    object qRoomChargedt_keluar: TDateTimeField
      FieldName = 'dt_keluar'
    end
    object qRoomChargeharga: TFloatField
      FieldName = 'harga'
      Required = True
      DisplayFormat = ',0'
    end
    object qRoomChargecharge_psn: TFloatField
      FieldName = 'charge_psn'
    end
    object qRoomChargedt_nota: TDateTimeField
      FieldName = 'dt_nota'
    end
    object qRoomChargeshift: TIntegerField
      FieldName = 'shift'
    end
    object qRoomChargeno_register: TStringField
      FieldName = 'no_register'
      Required = True
    end
    object qRoomChargenama_tamu: TStringField
      FieldName = 'nama_tamu'
      Size = 255
    end
    object qRoomChargejns_reservasi: TStringField
      FieldName = 'jns_reservasi'
      Size = 5
    end
    object qRoomChargeusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object qRoomChargetot_charge: TFloatField
      FieldName = 'tot_charge'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object qRoomChargeci_charge_psn: TFloatField
      FieldName = 'ci_charge_psn'
    end
  end
  object dsRoomCharge: TDataSource
    DataSet = qRoomCharge
    Left = 480
    Top = 72
  end
  object frxdbRoomCharge: TfrxDBDataset
    UserName = 'frxdbRoomCharge'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ci_charge_psn=ci_charge_psn'
      'no_kamar=no_kamar'
      'dt_masuk=dt_masuk'
      'dt_keluar=dt_keluar'
      'harga=harga'
      'charge_psn=charge_psn'
      'dt_nota=dt_nota'
      'shift=shift'
      'no_register=no_register'
      'nama_tamu=nama_tamu'
      'jns_reservasi=jns_reservasi'
      'usr_upd=usr_upd'
      'tot_charge=tot_charge')
    DataSet = memRoomCharge
    BCDToCurrency = False
    Left = 480
    Top = 120
  end
  object memRoomCharge: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ci_charge_psn'
        DataType = ftFloat
      end
      item
        Name = 'no_kamar'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'dt_masuk'
        DataType = ftDateTime
      end
      item
        Name = 'dt_keluar'
        DataType = ftDateTime
      end
      item
        Name = 'harga'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'charge_psn'
        DataType = ftFloat
      end
      item
        Name = 'dt_nota'
        DataType = ftDateTime
      end
      item
        Name = 'shift'
        DataType = ftInteger
      end
      item
        Name = 'no_register'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nama_tamu'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'jns_reservasi'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'usr_upd'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'tot_charge'
        Attributes = [faReadonly]
        DataType = ftFloat
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
    Top = 168
    object memRoomChargeci_charge_psn: TFloatField
      FieldName = 'ci_charge_psn'
    end
    object memRoomChargeno_kamar: TStringField
      FieldName = 'no_kamar'
      Size = 10
    end
    object memRoomChargedt_masuk: TDateTimeField
      FieldName = 'dt_masuk'
    end
    object memRoomChargedt_keluar: TDateTimeField
      FieldName = 'dt_keluar'
    end
    object memRoomChargeharga: TFloatField
      FieldName = 'harga'
      Required = True
      DisplayFormat = ',0'
    end
    object memRoomChargecharge_psn: TFloatField
      FieldName = 'charge_psn'
    end
    object memRoomChargedt_nota: TDateTimeField
      FieldName = 'dt_nota'
    end
    object memRoomChargeshift: TIntegerField
      FieldName = 'shift'
    end
    object memRoomChargeno_register: TStringField
      FieldName = 'no_register'
      Required = True
    end
    object memRoomChargenama_tamu: TStringField
      FieldName = 'nama_tamu'
      Size = 255
    end
    object memRoomChargejns_reservasi: TStringField
      FieldName = 'jns_reservasi'
      Size = 5
    end
    object memRoomChargeusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object memRoomChargetot_charge: TFloatField
      FieldName = 'tot_charge'
      ReadOnly = True
      DisplayFormat = ',0'
    end
  end
  object RepRoomCharge: TfrxReport
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
    Left = 485
    Top = 229
    Datasets = <
      item
        DataSet = frxdbInfoPerusahaan
        DataSetName = 'frxdbInfoPerusahaan'
      end
      item
        DataSet = frxdbRoomCharge
        DataSetName = 'frxdbRoomCharge'
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
            'REKAP'
            'PENDAPATAN ROOM CHARGE')
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
        Top = 423.307360000000000000
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
            '[frxdbInfoPerusahaan."usr_cetak"]')
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
        Top = 377.953000000000000000
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
            '[SUM(<frxdbRoomCharge."tot_charge">,MasterData1)]')
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
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 249.448980000000000000
        Width = 755.906000000000000000
        object Memo52: TfrxMemoView
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
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 423.307360000000000000
          Width = 49.133890000000000000
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
            'Charge CI %')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 34.015770000000000000
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
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 177.637910000000000000
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
            'Nama Tamu')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 113.385900000000000000
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
            'No. Kamar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 627.401980000000000000
          Width = 128.504020000000000000
          Height = 26.456710000000000000
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
            'Total Charge')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 521.575140000000000000
          Width = 105.826840000000000000
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
            'Tarif Room')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 472.441250000000000000
          Width = 49.133890000000000000
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
            'Charge CO %')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 298.582870000000000000
        Width = 755.906000000000000000
        DataSet = frxdbRoomCharge
        DataSetName = 'frxdbRoomCharge'
        RowCount = 0
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
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
            '[frxdbRoomCharge."ci_charge_psn"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
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
            '[frxdbRoomCharge."nama_tamu"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
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
        object Memo48: TfrxMemoView
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
            '[frxdbRoomCharge."dt_nota"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Width = 64.252010000000000000
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
            '[frxdbRoomCharge."no_kamar"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
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
            '[frxdbRoomCharge."tot_charge"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
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
            '[frxdbRoomCharge."harga"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
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
            '[frxdbRoomCharge."charge_psn"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object qRepPajak: TZQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      
        'select a.*, b.nama_tamu, b.no_register, b.nama_tamu, b.jenis as ' +
        'jns_reservasi, c.cara_bayar, c.dt_nota as tgl_bayar, c.usr_upd, ' +
        'c.shift'
      'from report.register_tamu_detail a'
      
        'left join transaksi.register_tamu b on b.id_register=a.id_regist' +
        'er'
      'left join transaksi.nota c on c.no_register=b.no_register'
      'where c.isclosed='#39'1'#39' and c.iscancel='#39'0'#39
      
        'and c.dt_nota between to_timestamp (:ptgl0,'#39'dd/mm/yyyy'#39') and to_' +
        'timestamp (:ptgl1,'#39'dd/mm/yyyy'#39') + interval '#39'23 hour 59 minutes'#39
      'and b.jenis=:jns_reservasi'
      'order by a.dt_keluar')
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
      end
      item
        DataType = ftUnknown
        Name = 'jns_reservasi'
        ParamType = ptUnknown
      end>
    Left = 536
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
      end
      item
        DataType = ftUnknown
        Name = 'jns_reservasi'
        ParamType = ptUnknown
      end>
    object qRepPajakid_register: TLargeintField
      FieldName = 'id_register'
      Required = True
    end
    object qRepPajakid_register_detail: TLargeintField
      FieldName = 'id_register_detail'
      Required = True
    end
    object qRepPajakno_kamar: TStringField
      Alignment = taCenter
      FieldName = 'no_kamar'
      Size = 10
    end
    object qRepPajakdt_masuk: TDateTimeField
      FieldName = 'dt_masuk'
    end
    object qRepPajakdt_keluar: TDateTimeField
      FieldName = 'dt_keluar'
    end
    object qRepPajakharga: TFloatField
      FieldName = 'harga'
      Required = True
      DisplayFormat = ',0'
    end
    object qRepPajakqty: TFloatField
      Alignment = taCenter
      FieldName = 'qty'
    end
    object qRepPajakdiskripsi: TStringField
      FieldName = 'diskripsi'
      Size = 255
    end
    object qRepPajaksub_total: TFloatField
      FieldName = 'sub_total'
      Required = True
      DisplayFormat = ',0'
    end
    object qRepPajaknama_tamu: TStringField
      FieldName = 'nama_tamu'
      Size = 255
    end
    object qRepPajakno_register: TStringField
      FieldName = 'no_register'
      Required = True
    end
    object qRepPajaknama_tamu_1: TStringField
      FieldName = 'nama_tamu_1'
      Size = 255
    end
    object qRepPajakjns_reservasi: TStringField
      Alignment = taCenter
      FieldName = 'jns_reservasi'
      Size = 30
    end
    object qRepPajakcara_bayar: TStringField
      Alignment = taCenter
      FieldName = 'cara_bayar'
    end
    object qRepPajaktgl_bayar: TDateTimeField
      FieldName = 'tgl_bayar'
    end
    object qRepPajakusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object qRepPajakshift: TIntegerField
      FieldName = 'shift'
    end
    object qRepPajakdiskon: TFloatField
      FieldName = 'diskon'
      DisplayFormat = ',0'
    end
  end
  object dsRepPajak: TDataSource
    DataSet = qRepPajak
    Left = 536
    Top = 72
  end
  object memRepPajak: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'id_register'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'id_register_detail'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'no_kamar'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'dt_masuk'
        DataType = ftDateTime
      end
      item
        Name = 'dt_keluar'
        DataType = ftDateTime
      end
      item
        Name = 'harga'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'qty'
        DataType = ftFloat
      end
      item
        Name = 'diskripsi'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'sub_total'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'nama_tamu'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'no_register'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nama_tamu_1'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'jns_reservasi'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'cara_bayar'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tgl_bayar'
        DataType = ftDateTime
      end
      item
        Name = 'usr_upd'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'shift'
        DataType = ftInteger
      end
      item
        Name = 'diskon'
        DataType = ftFloat
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
    Left = 536
    Top = 168
    object memRepPajakdiskon: TFloatField
      FieldName = 'diskon'
      DisplayFormat = ',0'
    end
    object memRepPajakid_register: TLargeintField
      FieldName = 'id_register'
      Required = True
    end
    object memRepPajakid_register_detail: TLargeintField
      FieldName = 'id_register_detail'
      Required = True
    end
    object memRepPajakno_kamar: TStringField
      Alignment = taCenter
      FieldName = 'no_kamar'
      Size = 10
    end
    object memRepPajakdt_masuk: TDateTimeField
      FieldName = 'dt_masuk'
    end
    object memRepPajakdt_keluar: TDateTimeField
      FieldName = 'dt_keluar'
    end
    object memRepPajakharga: TFloatField
      FieldName = 'harga'
      Required = True
      DisplayFormat = ',0'
    end
    object memRepPajakqty: TFloatField
      Alignment = taCenter
      FieldName = 'qty'
    end
    object memRepPajakdiskripsi: TStringField
      FieldName = 'diskripsi'
      Size = 255
    end
    object memRepPajaksub_total: TFloatField
      FieldName = 'sub_total'
      Required = True
      DisplayFormat = ',0'
    end
    object memRepPajaknama_tamu: TStringField
      FieldName = 'nama_tamu'
      Size = 255
    end
    object memRepPajakno_register: TStringField
      FieldName = 'no_register'
      Required = True
    end
    object memRepPajaknama_tamu_1: TStringField
      FieldName = 'nama_tamu_1'
      Size = 255
    end
    object memRepPajakjns_reservasi: TStringField
      Alignment = taCenter
      FieldName = 'jns_reservasi'
      Size = 30
    end
    object memRepPajakcara_bayar: TStringField
      FieldName = 'cara_bayar'
    end
    object memRepPajaktgl_bayar: TDateTimeField
      FieldName = 'tgl_bayar'
    end
    object memRepPajakusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object memRepPajakshift: TIntegerField
      FieldName = 'shift'
    end
  end
  object frxDBRepPajak: TfrxDBDataset
    UserName = 'frxDBRepPajak'
    CloseDataSource = False
    FieldAliases.Strings = (
      'diskon=diskon'
      'id_register=id_register'
      'id_register_detail=id_register_detail'
      'no_kamar=no_kamar'
      'dt_masuk=dt_masuk'
      'dt_keluar=dt_keluar'
      'harga=harga'
      'qty=qty'
      'diskripsi=diskripsi'
      'sub_total=sub_total'
      'nama_tamu=nama_tamu'
      'no_register=no_register'
      'nama_tamu_1=nama_tamu_1'
      'jns_reservasi=jns_reservasi'
      'cara_bayar=cara_bayar'
      'tgl_bayar=tgl_bayar'
      'usr_upd=usr_upd'
      'shift=shift')
    DataSet = memRepPajak
    BCDToCurrency = False
    Left = 536
    Top = 120
  end
  object RepRekapPajak: TfrxReport
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
    Left = 537
    Top = 227
    Datasets = <
      item
        DataSet = frxdbInfoPerusahaan
        DataSetName = 'frxdbInfoPerusahaan'
      end
      item
        DataSet = frxDBRepPajak
        DataSetName = 'frxDBRepPajak'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 81.913420000000000000
          Width = 1046.929810000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'REKAP PAJAK PENDAPATAN')
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
          Width = 1046.929810000000000000
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
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 642.520100000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object MemoLblPageOfTotalPages: TfrxMemoView
          AllowVectorExport = True
          Left = 842.835190000000000000
          Top = 26.456710000000000000
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
          Top = 26.456710000000000000
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
          Top = 26.456710000000000000
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
          Top = 22.677180000000000000
          Width = 1046.929810000000000000
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
        Height = 192.756030000000000000
        Top = 427.086890000000000000
        Width = 1046.929810000000000000
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Top = 46.456710000000000000
          Width = 952.441560000000000000
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
            'TOTAL     KESELURUHAN   ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 38.897650000000000000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 35.118120000000000000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 952.441560000000000000
          Top = 45.456710000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
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
            '[SUM(<frxDBRepPajak."sub_total">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoPreparedBy: TfrxMemoView
          AllowVectorExport = True
          Left = 52.913420000000000000
          Top = 113.385900000000000000
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
          Left = 52.913420000000000000
          Top = 173.858380000000000000
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
          Left = 257.008040000000000000
          Top = 173.858380000000000000
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
          Left = 60.472480000000000000
          Top = 173.858380000000000000
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
            '[frxdbInfoPerusahaan."usr_cetak"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 219.212740000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBRepPajak."jns_reservasi"'
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Top = 11.338590000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.TopLine.Width = 2.000000000000000000
          Memo.UTF8W = (
            'JENIS RESERVASI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 11.338590000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.TopLine.Width = 2.000000000000000000
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 11.338590000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.TopLine.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frxDBRepPajak."jns_reservasi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Top = 34.015770000000000000
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
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 34.015770000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
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
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 113.385900000000000000
          Top = 34.015770000000000000
          Width = 128.504020000000000000
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
            'Tgl. CI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 370.393940000000000000
          Top = 34.015770000000000000
          Width = 234.330860000000000000
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
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 604.724800000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
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
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 774.803650000000000000
          Top = 34.015770000000000000
          Width = 83.149660000000000000
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
            'Jumlah Hari')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 684.094930000000000000
          Top = 34.015770000000000000
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
            'Jenis Pembayaran')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 857.953310000000000000
          Top = 34.015770000000000000
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
            'Tarif Net Kamar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 952.441560000000000000
          Top = 34.015770000000000000
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
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 241.889920000000000000
          Top = 34.015770000000000000
          Width = 128.504020000000000000
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
            'Tgl. CO')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 302.362400000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBRepPajak
        DataSetName = 'frxDBRepPajak'
        RowCount = 0
        Stretched = True
        object Memo56: TfrxMemoView
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
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Width = 79.370130000000000000
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
            '[frxDBRepPajak."no_register"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = 'dd/mm/yyyy hh:nn'
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
            '[frxDBRepPajak."dt_masuk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = 'dd/mm/yyyy hh:nn'
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
            '[frxDBRepPajak."dt_keluar"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Width = 234.330860000000000000
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
            '[frxDBRepPajak."nama_tamu"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Width = 79.370130000000000000
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
            '[frxDBRepPajak."no_kamar"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Width = 90.708720000000000000
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
            '[frxDBRepPajak."cara_bayar"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 774.803650000000000000
          Width = 83.149660000000000000
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
            '[frxDBRepPajak."qty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 857.953310000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
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
            '[frxDBRepPajak."harga"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 952.441560000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
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
            '[frxDBRepPajak."sub_total"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 343.937230000000000000
        Width = 1046.929810000000000000
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Width = 952.441560000000000000
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
            'TOTAL     ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 952.441560000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
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
            '[SUM(<frxDBRepPajak."sub_total">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
