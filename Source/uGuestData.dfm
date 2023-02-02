object frmGuestData: TfrmGuestData
  Left = 0
  Top = 0
  Caption = 'Guest Data'
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
    Height = 115
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object Image1: TImage
      Left = 14
      Top = 14
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
      Caption = 'MASTER DATA TAMU'
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
      Caption = 
        'Berisi Master data tamu yang pernah melakukan registrasi/Ceck In' +
        ' Room'
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
    Top = 409
    Width = 1139
    Height = 192
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
    object shp1: TShape
      Left = 6
      Top = 54
      Width = 611
      Height = 41
      Brush.Color = 16710899
    end
    object shp2: TShape
      Left = 232
      Top = 14
      Width = 385
      Height = 41
      Brush.Color = 16710899
    end
    object shp4: TShape
      Left = 6
      Top = 134
      Width = 611
      Height = 41
      Brush.Color = 16710899
    end
    object shp6: TShape
      Left = 6
      Top = 14
      Width = 227
      Height = 41
      Brush.Color = 16710899
    end
    object shp7: TShape
      Left = 6
      Top = 94
      Width = 328
      Height = 41
      Brush.Color = 16710899
    end
    object shp10: TShape
      Left = 333
      Top = 94
      Width = 284
      Height = 41
      Brush.Color = 16710899
    end
    object cxlbl2: TcxLabel
      Left = 236
      Top = 22
      Caption = 'ID No.'
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
      Left = 11
      Top = 142
      Caption = 'Address'
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
      Caption = 'Guest Name'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxlbl6: TcxLabel
      Left = 10
      Top = 22
      Caption = 'ID Type'
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
      DataBinding.DataField = 'nama_tamu'
      DataBinding.DataSource = dsGuest
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 4
      Width = 497
    end
    object dbedtbtnBedCount: TcxDBButtonEdit
      Left = 104
      Top = 141
      DataBinding.DataField = 'alamat'
      DataBinding.DataSource = dsGuest
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 5
      Width = 497
    end
    object dbedtbtnRoomType: TcxDBButtonEdit
      Left = 291
      Top = 21
      DataBinding.DataField = 'nomor_id'
      DataBinding.DataSource = dsGuest
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 6
      Width = 310
    end
    object cxlbl7: TcxLabel
      Left = 340
      Top = 102
      Caption = 'Phone'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object dbedtbtnTelp: TcxDBButtonEdit
      Left = 394
      Top = 101
      DataBinding.DataField = 'telepon'
      DataBinding.DataSource = dsGuest
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 8
      Width = 207
    end
    object cxlbl8: TcxLabel
      Left = 11
      Top = 101
      Caption = 'Gender'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxdbcbbID: TcxDBComboBox
      Left = 104
      Top = 22
      DataBinding.DataField = 'jenis_id'
      DataBinding.DataSource = dsGuest
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'KTP'
        'SIM'
        'PASPORT')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 10
      Width = 121
    end
    object cxdbcbbGender: TcxDBComboBox
      Left = 104
      Top = 101
      DataBinding.DataField = 'jns_kel'
      DataBinding.DataSource = dsGuest
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'MALE'
        'FEMALE')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 185
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
  object cxgrdGuest: TcxGrid
    Left = 0
    Top = 115
    Width = 1139
    Height = 294
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
      object cxgvcolID: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'id_tamu'
        HeaderAlignmentHorz = taCenter
        Width = 135
      end
      object cxgrdbclmnName: TcxGridDBColumn
        Caption = 'GUEST NAME'
        DataBinding.FieldName = 'nama_tamu'
        HeaderAlignmentHorz = taCenter
        Width = 327
      end
      object cxgrdbclmnGender: TcxGridDBColumn
        Caption = 'GENDER'
        DataBinding.FieldName = 'jns_kel'
        HeaderAlignmentHorz = taCenter
        Width = 67
      end
      object cxgrdbclmnAddr: TcxGridDBColumn
        Caption = 'ADDRESS'
        DataBinding.FieldName = 'alamat'
        HeaderAlignmentHorz = taCenter
        Width = 411
      end
      object cxgrdbclmnCountry: TcxGridDBColumn
        Caption = 'COUNTRY'
        DataBinding.FieldName = 'negara'
        HeaderAlignmentHorz = taCenter
        Width = 154
      end
      object cxgrdbclmnIdCardType: TcxGridDBColumn
        Caption = 'ID CARD TYPE'
        DataBinding.FieldName = 'jenis_id'
        HeaderAlignmentHorz = taCenter
        Width = 86
      end
      object cxgrdbclmnIdCardNo: TcxGridDBColumn
        Caption = 'ID CARD NO.'
        DataBinding.FieldName = 'nomor_id'
        HeaderAlignmentHorz = taCenter
        Width = 214
      end
      object cxgrdbclmnPhone: TcxGridDBColumn
        Caption = 'PHONE'
        DataBinding.FieldName = 'telepon'
        HeaderAlignmentHorz = taCenter
        Width = 188
      end
    end
    object cxgrdlvlGuest: TcxGridLevel
      GridView = cxgrdGuestDBTableView1
    end
  end
  object dsGuest: TDataSource
    DataSet = zqryDisplay
    Left = 616
    Top = 16
  end
  object zqryDisplay: TZQuery
    Connection = DataModule1.zconHotel
    BeforePost = zqryDisplayBeforePost
    OnNewRecord = zqryDisplayNewRecord
    SQL.Strings = (
      'select * from master.mtamu;')
    Params = <>
    Left = 664
    Top = 24
    object strngfldDisplayid_tamu: TStringField
      FieldName = 'id_tamu'
      Required = True
    end
    object strngfldDisplaynama_tamu: TStringField
      FieldName = 'nama_tamu'
      Required = True
      Size = 100
    end
    object dtmfldDisplaytgl_lahir: TDateTimeField
      FieldName = 'tgl_lahir'
    end
    object strngfldDisplayjns_kel: TStringField
      FieldName = 'jns_kel'
      Size = 10
    end
    object strngfldDisplayalamat: TStringField
      FieldName = 'alamat'
      Size = 255
    end
    object strngfldDisplaykota: TStringField
      FieldName = 'kota'
      Size = 50
    end
    object strngfldDisplayagama: TStringField
      FieldName = 'agama'
      Size = 10
    end
    object strngfldDisplaytelepon: TStringField
      FieldName = 'telepon'
      Size = 50
    end
    object strngfldDisplaysts_pasien: TStringField
      FieldName = 'sts_pasien'
      Required = True
      Size = 2
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
    object strngfldDisplaypekerjaan: TStringField
      FieldName = 'pekerjaan'
      Size = 10
    end
    object strngfldDisplaygelar: TStringField
      FieldName = 'gelar'
      Size = 10
    end
    object strngfldDisplaynomor_id: TStringField
      FieldName = 'nomor_id'
      Size = 100
    end
    object strngfldDisplayjenis_id: TStringField
      FieldName = 'jenis_id'
      Size = 50
    end
    object strngfldDisplaynegara: TStringField
      FieldName = 'negara'
      Size = 100
    end
    object strngfldDisplayemail: TStringField
      FieldName = 'email'
      Size = 100
    end
  end
  object Gen_id_tamu: TZReadOnlyQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      'select master.fn_gen_id_tamu_baru()')
    Params = <>
    Left = 492
    Top = 16
    object Gen_id_tamufn_gen_id_tamu_baru: TMemoField
      FieldName = 'fn_gen_id_tamu_baru'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
end
