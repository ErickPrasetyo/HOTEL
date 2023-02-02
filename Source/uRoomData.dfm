object frmRoomData: TfrmRoomData
  Left = 0
  Top = 0
  Caption = 'Room Data'
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
    Height = 213
    BorderStyle = cxcbsNone
    Align = alClient
    Bands = <
      item
        Caption.Text = 'Kolom 1'
      end>
    DataController.DataSource = DataSource1
    DataController.ParentField = 'id_parent'
    DataController.KeyField = 'no_kamar'
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
    ExplicitHeight = 293
    object cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.Text = 'Lantai'
      DataBinding.FieldName = 'id_parent'
      Width = 154
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1cxDBTreeListColumn6: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.Text = 'Tipe Kamar'
      DataBinding.FieldName = 'tp_kamar'
      Width = 206
      Position.ColIndex = 2
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.Text = 'Tipe Bed'
      DataBinding.FieldName = 'diskripsi'
      Width = 172
      Position.ColIndex = 3
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1cxDBTreeListColumn4: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.Text = 'Tarif Walk In'
      DataBinding.FieldName = 'tarif'
      Width = 100
      Position.ColIndex = 6
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1cxDBTreeListColumn5: TcxDBTreeListColumn
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.Alignment = taCenter
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Caption.AlignHorz = taCenter
      Caption.Text = 'Aktif'
      DataBinding.FieldName = 'isdetail'
      Width = 46
      Position.ColIndex = 12
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeListRoomDatacxDBTreeListColumn7: TcxDBTreeListColumn
      Caption.Text = 'No. Kamar'
      DataBinding.FieldName = 'no_kamar'
      Width = 100
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeListRoomDatacxDBTreeListColumn8: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.GlyphAlignHorz = taCenter
      Caption.Text = 'Tax'
      DataBinding.FieldName = 'tax'
      Width = 100
      Position.ColIndex = 4
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeListRoomDatacxDBTreeListColumn9: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.GlyphAlignHorz = taCenter
      Caption.Text = 'Service'
      DataBinding.FieldName = 'service'
      Width = 100
      Position.ColIndex = 5
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeListRoomDatacxDBTreeListColumn10: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.Text = 'Tarif By Phone'
      DataBinding.FieldName = 'tarif_phone'
      Width = 100
      Position.ColIndex = 7
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeListRoomDatacxDBTreeListColumn11: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.Text = 'Tarif Traveloka'
      DataBinding.FieldName = 'tarif_traveloka'
      Position.ColIndex = 8
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeListRoomDatacxDBTreeListColumn12: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.Text = 'Tarif Pegi-Pegi'
      DataBinding.FieldName = 'tarif_pegi_pegi'
      Position.ColIndex = 9
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeListRoomDatacxDBTreeListColumn13: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.Text = 'Tarif Tiket.com'
      DataBinding.FieldName = 'tarif_tiket_com'
      Position.ColIndex = 10
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeListRoomDatacxDBTreeListColumn14: TcxDBTreeListColumn
      Caption.AlignHorz = taCenter
      Caption.Text = 'Tarif Booking.Com'
      DataBinding.FieldName = 'tarif_booking_com'
      Position.ColIndex = 11
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
    object Label2: TLabel
      Left = 125
      Top = 12
      Width = 241
      Height = 17
      AutoSize = False
      Caption = 'MASTER KAMAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label1: TLabel
      Left = 125
      Top = 35
      Width = 241
      Height = 49
      AutoSize = False
      Caption = 
        'Berisi Data kamar pada Hotel dan sebagai setting Tarif transaksi' +
        ' Kamar'
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
    Top = 328
    Width = 1139
    Height = 272
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
      Width = 275
      Height = 41
      Brush.Color = 16710899
    end
    object shp2: TShape
      Left = 280
      Top = 14
      Width = 275
      Height = 41
      Brush.Color = 16710899
    end
    object shp3: TShape
      Left = 6
      Top = 94
      Width = 275
      Height = 41
      Brush.Color = 16710899
    end
    object shp6: TShape
      Left = 6
      Top = 14
      Width = 275
      Height = 41
      Brush.Color = 16710899
    end
    object shp7: TShape
      Left = 280
      Top = 54
      Width = 275
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
    object Shape1: TShape
      Left = 280
      Top = 134
      Width = 275
      Height = 41
      Brush.Color = 16710899
    end
    object Shape2: TShape
      Left = 6
      Top = 134
      Width = 275
      Height = 41
      Brush.Color = 16710899
    end
    object Shape3: TShape
      Left = 558
      Top = 14
      Width = 549
      Height = 41
      Brush.Color = 16710899
    end
    object Shape4: TShape
      Left = 558
      Top = 54
      Width = 549
      Height = 41
      Brush.Color = 16710899
    end
    object Shape5: TShape
      Left = 558
      Top = 94
      Width = 549
      Height = 41
      Brush.Color = 16710899
    end
    object Shape6: TShape
      Left = 558
      Top = 134
      Width = 549
      Height = 41
      Brush.Color = 16710899
    end
    object Shape7: TShape
      Left = 558
      Top = 174
      Width = 549
      Height = 41
      Brush.Color = 16710899
    end
    object Shape8: TShape
      Left = 558
      Top = 214
      Width = 549
      Height = 41
      Brush.Color = 16710899
    end
    object cxlbl2: TcxLabel
      Left = 284
      Top = 61
      Caption = 'Room Type'
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
      Left = 284
      Top = 22
      Caption = 'Room No.'
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
      Top = 61
      Caption = 'Floor'
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
      Left = 378
      Top = 21
      DataBinding.DataField = 'no_kamar'
      DataBinding.DataSource = DataSource1
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 3
      Width = 161
    end
    object dbedtbtnRoomRate: TcxDBButtonEdit
      Left = 832
      Top = 21
      DataBinding.DataField = 'tarif'
      DataBinding.DataSource = DataSource1
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 4
      Width = 259
    end
    object cxlbl5: TcxLabel
      Left = 562
      Top = 21
      Caption = 'Tarif Walk In'
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
      Left = 378
      Top = 61
      DataBinding.DataField = 'tp_kamar'
      DataBinding.DataSource = DataSource1
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = dbedtbtnRoomTypePropertiesButtonClick
      TabOrder = 6
      Width = 161
    end
    object txdbcbRoomDetail: TcxDBCheckBox
      Left = 14
      Top = 141
      Caption = 'Aktif'
      DataBinding.DataField = 'isdetail'
      DataBinding.DataSource = DataSource1
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      TabOrder = 7
    end
    object edtLantai: TcxDBLookupComboBox
      Left = 110
      Top = 61
      DataBinding.DataField = 'id_parent'
      DataBinding.DataSource = DataSource1
      Properties.KeyFieldNames = 'diskripsi'
      Properties.ListColumns = <
        item
          Caption = 'Diskripsi'
          Width = 27
          FieldName = 'diskripsi'
        end>
      Properties.ListSource = dsLantai
      TabOrder = 8
      OnEnter = edtLantaiEnter
      OnKeyPress = edtLantaiKeyPress
      Width = 161
    end
    object cxLabel1: TcxLabel
      Left = 10
      Top = 25
      Caption = 'Jenis Kartu'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxDBComboBox1: TcxDBComboBox
      Left = 110
      Top = 21
      DataBinding.DataField = 'jns_kartu'
      DataBinding.DataSource = DataSource1
      Properties.Items.Strings = (
        'ADEL'
        'FEST')
      TabOrder = 10
      Width = 161
    end
    object dbedtbtnRoomTAX: TcxDBButtonEdit
      Left = 110
      Top = 101
      DataBinding.DataField = 'tax'
      DataBinding.DataSource = DataSource1
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 11
      Width = 161
    end
    object cxLabel2: TcxLabel
      Left = 10
      Top = 101
      Caption = 'TAX'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object dbedtbtnRoomService: TcxDBButtonEdit
      Left = 378
      Top = 101
      DataBinding.DataField = 'service'
      DataBinding.DataSource = DataSource1
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 13
      Width = 161
    end
    object cxLabel3: TcxLabel
      Left = 284
      Top = 101
      Caption = 'Service'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxDBButtonEdit1: TcxDBButtonEdit
      Left = 832
      Top = 61
      DataBinding.DataField = 'tarif_phone'
      DataBinding.DataSource = DataSource1
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 15
      Width = 259
    end
    object cxLabel4: TcxLabel
      Left = 562
      Top = 62
      Caption = 'Tarif By Phone'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 562
      Top = 101
      Caption = 'Tarif Traveloka'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxDBButtonEdit2: TcxDBButtonEdit
      Left = 832
      Top = 101
      DataBinding.DataField = 'tarif_traveloka'
      DataBinding.DataSource = DataSource1
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 18
      Width = 259
    end
    object cxLabel6: TcxLabel
      Left = 562
      Top = 141
      Caption = 'Tarif Pegi-Pegi'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxDBButtonEdit3: TcxDBButtonEdit
      Left = 832
      Top = 141
      DataBinding.DataField = 'tarif_pegi_pegi'
      DataBinding.DataSource = DataSource1
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 20
      Width = 259
    end
    object cxLabel7: TcxLabel
      Left = 562
      Top = 181
      Caption = 'Tarif Tiket.Com'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxDBButtonEdit4: TcxDBButtonEdit
      Left = 832
      Top = 181
      DataBinding.DataField = 'tarif_tiket_com'
      DataBinding.DataSource = DataSource1
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 22
      Width = 259
    end
    object cxLabel8: TcxLabel
      Left = 562
      Top = 221
      Caption = 'Tarif Booking.Com'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxDBButtonEdit5: TcxDBButtonEdit
      Left = 832
      Top = 221
      DataBinding.DataField = 'tarif_booking_com'
      DataBinding.DataSource = DataSource1
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 24
      Width = 259
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
    Version = '2.5.7.7'
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
        Version = '1.3.0.4'
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
        Version = '1.3.0.4'
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
        Version = '1.3.0.4'
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
        Version = '1.3.0.4'
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
        Version = '1.3.0.4'
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
        Version = '1.3.0.4'
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
      Version = '1.3.0.4'
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
    SQL.Strings = (
      'select a.*'
      'from master.mkamar a'
      'order by a.no_kamar asc')
    Params = <>
    Left = 512
    Top = 16
    object strngfldDisplayno_kamar: TStringField
      FieldName = 'no_kamar'
      Required = True
      Size = 10
    end
    object lrgntfldDisplayid_tp_kamar: TLargeintField
      FieldName = 'id_tp_kamar'
    end
    object fltfldDisplaytarif: TFloatField
      FieldName = 'tarif'
      Required = True
      DisplayFormat = ',0'
    end
    object strngfldDisplayisdetail: TStringField
      FieldName = 'isdetail'
      Required = True
      Size = 1
    end
    object intgrfldDisplaylvl: TIntegerField
      FieldName = 'lvl'
      Required = True
    end
    object strngfldDisplaydiskripsi: TStringField
      FieldName = 'diskripsi'
      Size = 255
    end
    object strngfldDisplaytotal_bed: TStringField
      FieldName = 'total_bed'
      Size = 100
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
    object strngfldDisplayis_isi: TStringField
      FieldName = 'is_isi'
      Required = True
      Size = 1
    end
    object strngfldDisplayid_parent: TStringField
      FieldName = 'id_parent'
      Size = 10
    end
    object strngfldDisplayno_bed: TStringField
      FieldName = 'no_bed'
      Size = 10
    end
    object strngfldDisplaytp_kamar: TStringField
      FieldName = 'tp_kamar'
      Size = 255
    end
    object strngfldDisplayjns_kartu: TStringField
      FieldName = 'jns_kartu'
      Size = 10
    end
    object fltfldDisplaytax: TFloatField
      FieldName = 'tax'
      DisplayFormat = ',0'
    end
    object fltfldDisplayservice: TFloatField
      FieldName = 'service'
      DisplayFormat = ',0'
    end
    object zqryDisplaytarif_traveloka: TFloatField
      FieldName = 'tarif_traveloka'
      Required = True
      DisplayFormat = ',0'
    end
    object zqryDisplaytarif_tiket_com: TFloatField
      FieldName = 'tarif_tiket_com'
      Required = True
      DisplayFormat = ',0'
    end
    object zqryDisplaytarif_pegi_pegi: TFloatField
      FieldName = 'tarif_pegi_pegi'
      Required = True
      DisplayFormat = ',0'
    end
    object zqryDisplaytarif_booking_com: TFloatField
      FieldName = 'tarif_booking_com'
      Required = True
      DisplayFormat = ',0'
    end
    object zqryDisplaytarif_phone: TFloatField
      FieldName = 'tarif_phone'
      Required = True
      DisplayFormat = ',0'
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
  object qLantai: TZReadOnlyQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      'select a.diskripsi'
      'from master.mlantai a')
    Params = <>
    Left = 512
    Top = 128
    object qLantaidiskripsi: TStringField
      FieldName = 'diskripsi'
      ReadOnly = True
      Size = 255
    end
  end
  object dsLantai: TDataSource
    DataSet = qLantai
    Left = 544
    Top = 128
  end
  object LtipeKamar: TwwLookupDialog
    Selected.Strings = (
      'tp_kamar'#9'10'#9'Tipe Kamar'#9'F'
      'jml_bed'#9'10'#9'Jumlah Bed'#9'F'
      'tipe_bed'#9'100'#9'Tipe Bed'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWindow
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = qtipeKamar
    Caption = 'Look Tipe Kamar'
    MaxWidth = 0
    MaxHeight = 360
    CharCase = ecNormal
    Left = 600
    Top = 128
  end
  object qtipeKamar: TZReadOnlyQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      'select a.id_tp_kamar, a.tp_kamar, a.jml_bed, a.tipe_bed'
      'from master.tipe_kamar a'
      'order by a.id_tp_kamar')
    Params = <>
    Left = 640
    Top = 136
    object qtipeKamartp_kamar: TStringField
      DisplayLabel = 'Tipe Kamar'
      DisplayWidth = 10
      FieldName = 'tp_kamar'
      ReadOnly = True
      Size = 10
    end
    object qtipeKamarjml_bed: TIntegerField
      DisplayLabel = 'Jumlah Bed'
      DisplayWidth = 10
      FieldName = 'jml_bed'
      ReadOnly = True
    end
    object qtipeKamartipe_bed: TStringField
      DisplayLabel = 'Tipe Bed'
      DisplayWidth = 100
      FieldName = 'tipe_bed'
      ReadOnly = True
      Size = 100
    end
    object qtipeKamarid_tp_kamar: TLargeintField
      FieldName = 'id_tp_kamar'
      ReadOnly = True
    end
  end
end
