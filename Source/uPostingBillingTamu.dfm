object frmPostingBillingTamu: TfrmPostingBillingTamu
  Left = 0
  Top = 0
  Caption = 'Posting Control FO'
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
      Caption = 'Untuk melakukan Pembatalan Transaksi Billing Tamu'
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
      Width = 296
      Height = 13
      AutoSize = False
      Caption = 'POSTING CONTROL TRANSAKSI BILLING TAMU'
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
    ClientRectBottom = 439
    ClientRectRight = 1139
    ClientRectTop = 24
    object tsRekap: TcxTabSheet
      Caption = 'Rekap Transaksi'
      ImageIndex = 0
      object grdRekap: TcxGrid
        Left = 0
        Top = 0
        Width = 1139
        Height = 415
        Align = alClient
        PopupMenu = AdvPopUp
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
    AfterOpen = qRekapAfterOpen
    SQL.Strings = (
      'select a.*'
      'from transaksi.nota a'
      'where a.isdelete='#39'0'#39
      
        'and a.dt_nota between to_timestamp (:ptgl0,'#39'dd/mm/yyyy'#39') and to_' +
        'timestamp (:ptgl1,'#39'dd/mm/yyyy'#39') + interval '#39'23 hour 59 minutes'#39
      'order by a.dt_nota')
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
    object qRekapid_nota: TLargeintField
      FieldName = 'id_nota'
      Required = True
    end
    object qRekapno_nota: TStringField
      FieldName = 'no_nota'
    end
    object qRekapno_register: TStringField
      FieldName = 'no_register'
    end
    object qRekapdt_nota: TDateTimeField
      FieldName = 'dt_nota'
    end
    object qRekapketerangan: TStringField
      FieldName = 'keterangan'
      Size = 255
    end
    object qRekapdisc_psn: TFloatField
      FieldName = 'disc_psn'
    end
    object qRekapdisc_rp: TFloatField
      FieldName = 'disc_rp'
    end
    object qRekapcara_bayar: TStringField
      FieldName = 'cara_bayar'
    end
    object qRekaptotal: TFloatField
      FieldName = 'total'
      Required = True
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
    object qRekapisclosed: TStringField
      FieldName = 'isclosed'
      Required = True
      Size = 1
    end
    object qRekapusr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 30
    end
    object qRekapusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object qRekapdt_ins: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object qRekapdt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
    object qRekapid_trans: TStringField
      FieldName = 'id_trans'
      Size = 10
    end
    object qRekapuang_muka: TFloatField
      FieldName = 'uang_muka'
    end
    object qRekapppn_rp: TFloatField
      FieldName = 'ppn_rp'
    end
    object qRekapnama_tamu: TStringField
      FieldName = 'nama_tamu'
      Size = 30
    end
    object qRekapispaket: TStringField
      FieldName = 'ispaket'
      Required = True
      Size = 1
    end
    object qRekapprepared_by: TStringField
      FieldName = 'prepared_by'
      Size = 100
    end
    object qRekapno_resep: TStringField
      FieldName = 'no_resep'
      Size = 50
    end
    object qRekapid_tamu: TStringField
      FieldName = 'id_tamu'
    end
    object qRekapjns_pembayaran: TStringField
      FieldName = 'jns_pembayaran'
    end
    object qRekapisdelete: TStringField
      FieldName = 'isdelete'
      Size = 1
    end
    object qRekapdt_masuk: TDateTimeField
      FieldName = 'dt_masuk'
    end
    object qRekapdt_keluar: TDateTimeField
      FieldName = 'dt_keluar'
    end
    object qRekapno_kamar: TStringField
      FieldName = 'no_kamar'
      Size = 10
    end
    object qRekapkelas: TStringField
      FieldName = 'kelas'
      Size = 10
    end
    object qRekapshift: TIntegerField
      FieldName = 'shift'
    end
    object qRekapbank: TStringField
      FieldName = 'bank'
      Size = 30
    end
    object qRekapno_kartu: TStringField
      FieldName = 'no_kartu'
      Size = 50
    end
    object qRekapdibayar: TFloatField
      FieldName = 'dibayar'
      Required = True
    end
    object qRekapasal: TStringField
      FieldName = 'asal'
      Required = True
      Size = 1
    end
    object qRekapid_rek_gl: TStringField
      FieldName = 'id_rek_gl'
      Size = 30
    end
    object qRekapsubtotal: TFloatField
      FieldName = 'subtotal'
    end
    object qRekapnet_n_ppn: TFloatField
      FieldName = 'net_n_ppn'
    end
  end
  object dsRekap: TDataSource
    DataSet = qRekap
    Left = 384
    Top = 72
  end
  object AdvPopUp: TAdvPopupMenu
    Version = '2.6.4.0'
    Left = 448
    Top = 32
    object Batal1: TMenuItem
      Caption = 'Batal'
      OnClick = Batal1Click
    end
    object UnBatal1: TMenuItem
      Caption = 'Un Batal'
      OnClick = UnBatal1Click
    end
  end
  object Exec: TZQuery
    Connection = DataModule1.zconHotel
    Params = <>
    Left = 336
    Top = 64
  end
end
