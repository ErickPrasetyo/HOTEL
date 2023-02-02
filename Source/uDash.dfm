object frmDash: TfrmDash
  Left = 0
  Top = 0
  Caption = 'Dashboard'
  ClientHeight = 661
  ClientWidth = 1137
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
  OnActivate = FormActivate
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
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 1137
    Height = 113
    Align = alTop
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Image1: TImage
      Left = 10
      Top = 12
      Width = 105
      Height = 85
      Stretch = True
    end
    object Label2: TLabel
      Left = 121
      Top = 12
      Width = 241
      Height = 13
      AutoSize = False
      Caption = 'DASHBOARD STATUS KAMAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label1: TLabel
      Left = 121
      Top = 31
      Width = 241
      Height = 49
      AutoSize = False
      Caption = 'Berisi tampilan data dan status ketersediaan kamar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
  end
  object advpnlNav: TAdvPanel
    Left = 0
    Top = 588
    Width = 1137
    Height = 73
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelInner = bvRaised
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = clTeal
    TabOrder = 1
    UseDockManager = True
    Version = '2.5.7.7'
    BackgroundPosition = bpCenter
    BorderColor = clNavy
    BorderShadow = True
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
    TextVAlign = tvaCenter
    FullHeight = 200
    object AdvPanelGroup1: TAdvPanelGroup
      Left = 615
      Top = 1
      Width = 517
      Height = 67
      Align = alRight
      Color = clHotLight
      TabOrder = 0
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
      DoubleBuffered = False
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      Columns = 1
      DefaultPanel.AnchorHint = False
      DefaultPanel.BevelInner = bvNone
      DefaultPanel.BevelOuter = bvNone
      DefaultPanel.BevelWidth = 1
      DefaultPanel.BorderColor = clBlack
      DefaultPanel.BorderShadow = False
      DefaultPanel.BorderStyle = bsSingle
      DefaultPanel.BorderWidth = 0
      DefaultPanel.BottomIndent = 0
      DefaultPanel.CanMove = False
      DefaultPanel.CanSize = False
      DefaultPanel.Caption.Color = clHighlight
      DefaultPanel.Caption.ColorTo = clNone
      DefaultPanel.Caption.Font.Charset = DEFAULT_CHARSET
      DefaultPanel.Caption.Font.Color = clHighlightText
      DefaultPanel.Caption.Font.Height = -11
      DefaultPanel.Caption.Font.Name = 'Tahoma'
      DefaultPanel.Caption.Font.Style = []
      DefaultPanel.Caption.Indent = 0
      DefaultPanel.Collaps = False
      DefaultPanel.CollapsColor = clBtnFace
      DefaultPanel.CollapsDelay = 0
      DefaultPanel.CollapsSteps = 0
      DefaultPanel.Color = clBtnFace
      DefaultPanel.ColorTo = clNone
      DefaultPanel.ColorMirror = clNone
      DefaultPanel.ColorMirrorTo = clNone
      DefaultPanel.Cursor = crDefault
      DefaultPanel.Font.Charset = DEFAULT_CHARSET
      DefaultPanel.Font.Color = clWindowText
      DefaultPanel.Font.Height = -11
      DefaultPanel.Font.Name = 'Tahoma'
      DefaultPanel.Font.Style = []
      DefaultPanel.FixedTop = False
      DefaultPanel.FixedLeft = False
      DefaultPanel.FixedHeight = False
      DefaultPanel.FixedWidth = False
      DefaultPanel.Height = 120
      DefaultPanel.Hover = False
      DefaultPanel.HoverColor = clNone
      DefaultPanel.HoverFontColor = clNone
      DefaultPanel.Indent = 0
      DefaultPanel.ShadowColor = clBlack
      DefaultPanel.ShadowOffset = 0
      DefaultPanel.ShowHint = False
      DefaultPanel.ShowMoveCursor = False
      DefaultPanel.StatusBar.Font.Charset = DEFAULT_CHARSET
      DefaultPanel.StatusBar.Font.Color = clWindowText
      DefaultPanel.StatusBar.Font.Height = -11
      DefaultPanel.StatusBar.Font.Name = 'Tahoma'
      DefaultPanel.StatusBar.Font.Style = []
      DefaultPanel.TextVAlign = tvaTop
      DefaultPanel.TopIndent = 0
      DefaultPanel.URLColor = clBlue
      DefaultPanel.Width = 0
      GroupStyle = gsVertical
      MouseWheelDelta = 0
      HorzPadding = 8
      VertPadding = 8
      DesignSize = (
        517
        67)
      FullHeight = 200
      object glbtnRefresh: TAdvGlassButton
        Left = 289
        Top = 18
        Width = 99
        Height = 32
        Anchors = [akTop, akRight]
        BackColor = clGreen
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
        Visible = False
        OnClick = glbtnRefreshClick
      end
      object glbtnCLose: TAdvGlassButton
        Left = 400
        Top = 18
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
        Version = '1.3.0.4'
        OnClick = glbtnCLoseClick
      end
    end
    object AdvPanelGroup2: TAdvPanelGroup
      Left = 1
      Top = 1
      Width = 608
      Height = 67
      Align = alLeft
      Color = clHotLight
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
      DoubleBuffered = False
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      Columns = 1
      DefaultPanel.AnchorHint = False
      DefaultPanel.BevelInner = bvNone
      DefaultPanel.BevelOuter = bvNone
      DefaultPanel.BevelWidth = 1
      DefaultPanel.BorderColor = clBlack
      DefaultPanel.BorderShadow = False
      DefaultPanel.BorderStyle = bsSingle
      DefaultPanel.BorderWidth = 0
      DefaultPanel.BottomIndent = 0
      DefaultPanel.CanMove = False
      DefaultPanel.CanSize = False
      DefaultPanel.Caption.Color = clHighlight
      DefaultPanel.Caption.ColorTo = clNone
      DefaultPanel.Caption.Font.Charset = DEFAULT_CHARSET
      DefaultPanel.Caption.Font.Color = clHighlightText
      DefaultPanel.Caption.Font.Height = -11
      DefaultPanel.Caption.Font.Name = 'Tahoma'
      DefaultPanel.Caption.Font.Style = []
      DefaultPanel.Caption.Indent = 0
      DefaultPanel.Collaps = False
      DefaultPanel.CollapsColor = clBtnFace
      DefaultPanel.CollapsDelay = 0
      DefaultPanel.CollapsSteps = 0
      DefaultPanel.Color = clBtnFace
      DefaultPanel.ColorTo = clNone
      DefaultPanel.ColorMirror = clNone
      DefaultPanel.ColorMirrorTo = clNone
      DefaultPanel.Cursor = crDefault
      DefaultPanel.Font.Charset = DEFAULT_CHARSET
      DefaultPanel.Font.Color = clWindowText
      DefaultPanel.Font.Height = -11
      DefaultPanel.Font.Name = 'Tahoma'
      DefaultPanel.Font.Style = []
      DefaultPanel.FixedTop = False
      DefaultPanel.FixedLeft = False
      DefaultPanel.FixedHeight = False
      DefaultPanel.FixedWidth = False
      DefaultPanel.Height = 120
      DefaultPanel.Hover = False
      DefaultPanel.HoverColor = clNone
      DefaultPanel.HoverFontColor = clNone
      DefaultPanel.Indent = 0
      DefaultPanel.ShadowColor = clBlack
      DefaultPanel.ShadowOffset = 0
      DefaultPanel.ShowHint = False
      DefaultPanel.ShowMoveCursor = False
      DefaultPanel.StatusBar.Font.Charset = DEFAULT_CHARSET
      DefaultPanel.StatusBar.Font.Color = clWindowText
      DefaultPanel.StatusBar.Font.Height = -11
      DefaultPanel.StatusBar.Font.Name = 'Tahoma'
      DefaultPanel.StatusBar.Font.Style = []
      DefaultPanel.TextVAlign = tvaTop
      DefaultPanel.TopIndent = 0
      DefaultPanel.URLColor = clBlue
      DefaultPanel.Width = 0
      GroupStyle = gsVertical
      MouseWheelDelta = 0
      HorzPadding = 8
      VertPadding = 8
      DesignSize = (
        608
        67)
      FullHeight = 200
      object lblPort: TLabel
        Left = 456
        Top = 7
        Width = 120
        Height = 21
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight, akBottom]
        AutoSize = False
        Caption = 'Port Encoder'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Elephant'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object advglPort: TAdvGlassButton
        Left = 465
        Top = 28
        Width = 105
        Height = 32
        Anchors = [akTop, akRight]
        BackColor = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clDefault
        Font.Height = -21
        Font.Name = 'Rockwell'
        Font.Style = [fsBold]
        ForeColor = clDefault
        GlowColor = clDefault
        InnerBorderColor = clDefault
        OuterBorderColor = clDefault
        ParentFont = False
        ShineColor = clWhite
        TabOrder = 1
        Version = '1.3.0.4'
      end
      object AdvGlassButton4: TAdvGlassButton
        Left = 342
        Top = 10
        Width = 105
        Height = 50
        Anchors = [akTop, akRight]
        BackColor = clPurple
        Caption = 'Clearing'
        Font.Charset = ANSI_CHARSET
        Font.Color = clDefault
        Font.Height = -19
        Font.Name = 'Rockwell'
        Font.Style = []
        ForeColor = clDefault
        GlowColor = clDefault
        InnerBorderColor = clDefault
        OuterBorderColor = clDefault
        ParentFont = False
        ShineColor = clWhite
        TabOrder = 2
        Version = '1.3.0.4'
      end
      object AdvGlassButton3: TAdvGlassButton
        Left = 231
        Top = 10
        Width = 105
        Height = 50
        Anchors = [akTop, akRight]
        BackColor = clYellow
        Caption = 'Maintenence'
        Font.Charset = ANSI_CHARSET
        Font.Color = clDefault
        Font.Height = -15
        Font.Name = 'Rockwell'
        Font.Style = [fsBold]
        ForeColor = clDefault
        GlowColor = clDefault
        InnerBorderColor = clDefault
        OuterBorderColor = clDefault
        ParentFont = False
        ShineColor = clWhite
        TabOrder = 3
        Version = '1.3.0.4'
      end
      object AdvGlassButton2: TAdvGlassButton
        Left = 120
        Top = 10
        Width = 105
        Height = 50
        Anchors = [akTop, akRight]
        BackColor = clGreen
        Caption = 'Ready'
        Font.Charset = ANSI_CHARSET
        Font.Color = clDefault
        Font.Height = -19
        Font.Name = 'Rockwell'
        Font.Style = []
        ForeColor = clDefault
        GlowColor = clDefault
        InnerBorderColor = clDefault
        OuterBorderColor = clDefault
        ParentFont = False
        ShineColor = clWhite
        TabOrder = 4
        Version = '1.3.0.4'
      end
      object AdvGlassButton1: TAdvGlassButton
        Left = 9
        Top = 10
        Width = 105
        Height = 50
        Anchors = [akTop, akRight]
        BackColor = clRed
        Caption = 'Occupied'
        Font.Charset = ANSI_CHARSET
        Font.Color = clDefault
        Font.Height = -19
        Font.Name = 'Rockwell'
        Font.Style = []
        ForeColor = clDefault
        GlowColor = clDefault
        InnerBorderColor = clDefault
        OuterBorderColor = clDefault
        ParentFont = False
        ShineColor = clWhite
        TabOrder = 5
        Version = '1.3.0.4'
      end
    end
    object AdvPanelGroup3: TAdvPanelGroup
      Left = 609
      Top = 1
      Width = 6
      Height = 67
      Align = alClient
      Color = clHotLight
      TabOrder = 2
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
      DoubleBuffered = False
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      Columns = 1
      DefaultPanel.AnchorHint = False
      DefaultPanel.BevelInner = bvNone
      DefaultPanel.BevelOuter = bvNone
      DefaultPanel.BevelWidth = 1
      DefaultPanel.BorderColor = clBlack
      DefaultPanel.BorderShadow = False
      DefaultPanel.BorderStyle = bsSingle
      DefaultPanel.BorderWidth = 0
      DefaultPanel.BottomIndent = 0
      DefaultPanel.CanMove = False
      DefaultPanel.CanSize = False
      DefaultPanel.Caption.Color = clHighlight
      DefaultPanel.Caption.ColorTo = clNone
      DefaultPanel.Caption.Font.Charset = DEFAULT_CHARSET
      DefaultPanel.Caption.Font.Color = clHighlightText
      DefaultPanel.Caption.Font.Height = -11
      DefaultPanel.Caption.Font.Name = 'Tahoma'
      DefaultPanel.Caption.Font.Style = []
      DefaultPanel.Caption.Indent = 0
      DefaultPanel.Collaps = False
      DefaultPanel.CollapsColor = clBtnFace
      DefaultPanel.CollapsDelay = 0
      DefaultPanel.CollapsSteps = 0
      DefaultPanel.Color = clBtnFace
      DefaultPanel.ColorTo = clNone
      DefaultPanel.ColorMirror = clNone
      DefaultPanel.ColorMirrorTo = clNone
      DefaultPanel.Cursor = crDefault
      DefaultPanel.Font.Charset = DEFAULT_CHARSET
      DefaultPanel.Font.Color = clWindowText
      DefaultPanel.Font.Height = -11
      DefaultPanel.Font.Name = 'Tahoma'
      DefaultPanel.Font.Style = []
      DefaultPanel.FixedTop = False
      DefaultPanel.FixedLeft = False
      DefaultPanel.FixedHeight = False
      DefaultPanel.FixedWidth = False
      DefaultPanel.Height = 120
      DefaultPanel.Hover = False
      DefaultPanel.HoverColor = clNone
      DefaultPanel.HoverFontColor = clNone
      DefaultPanel.Indent = 0
      DefaultPanel.ShadowColor = clBlack
      DefaultPanel.ShadowOffset = 0
      DefaultPanel.ShowHint = False
      DefaultPanel.ShowMoveCursor = False
      DefaultPanel.StatusBar.Font.Charset = DEFAULT_CHARSET
      DefaultPanel.StatusBar.Font.Color = clWindowText
      DefaultPanel.StatusBar.Font.Height = -11
      DefaultPanel.StatusBar.Font.Name = 'Tahoma'
      DefaultPanel.StatusBar.Font.Style = []
      DefaultPanel.TextVAlign = tvaTop
      DefaultPanel.TopIndent = 0
      DefaultPanel.URLColor = clBlue
      DefaultPanel.Width = 0
      GroupStyle = gsVertical
      MouseWheelDelta = 0
      HorzPadding = 8
      VertPadding = 8
      FullHeight = 200
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 113
    Width = 1137
    Height = 475
    Align = alClient
    BevelOuter = bvNone
    Color = 16710899
    ParentBackground = False
    TabOrder = 2
    object pnlRoomsPanel: TPanel
      Left = 0
      Top = 0
      Width = 1137
      Height = 475
      Align = alClient
      BevelOuter = bvNone
      Color = clHotLight
      ParentBackground = False
      TabOrder = 0
    end
  end
  object dsGuest: TDataSource
    DataSet = zqryDisplay
    Left = 584
    Top = 16
  end
  object zqryDisplay: TZQuery
    Connection = DataModule1.zconHotel
    BeforePost = zqryDisplayBeforePost
    OnNewRecord = zqryDisplayNewRecord
    SQL.Strings = (
      'select a.*, g.nama_tamu, g.nomor_id, rt.tp_kamar as room_type'
      'FROM transaksi.register_tamu a'
      'LEFT JOIN master.mtamu g ON g.id_tamu=a.no_register'
      'LEFT JOIN master.tipe_kamar rt ON rt.id_tp_kamar=a.id_tp_kamar'
      
        'WHERE  a.dt_register between to_timestamp(:ptgl0,'#39'dd/mm/yyyy'#39') a' +
        'nd to_timestamp(:ptgl1,'#39'dd/mm/yyyy'#39') +  interval '#39'23 hours 59 mi' +
        'n'#39
      'order by a.dt_register, a.no_antrian')
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
    Left = 648
    Top = 16
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
    object strngfldDisplayisclosed: TStringField
      FieldName = 'isclosed'
      Required = True
      Size = 1
    end
    object intgrfldDisplayno_antrian: TIntegerField
      FieldName = 'no_antrian'
    end
    object strngfldDisplayno_register: TStringField
      FieldName = 'no_register'
      Required = True
    end
    object strngfldDisplaynomor_id: TStringField
      FieldName = 'nomor_id'
      Size = 100
    end
    object strngfldDisplaynama_tamu: TStringField
      FieldName = 'nama_tamu'
      Size = 255
    end
    object strngfldDisplayroom_type: TStringField
      FieldName = 'room_type'
      Required = True
      Size = 10
    end
    object strngfldDisplayusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object strngfldDisplayiscancel: TStringField
      FieldName = 'iscancel'
      Required = True
      Size = 1
    end
  end
  object zqryRooms: TZQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      'select a.*, b.tp_kamar from master.mkamar a'
      'left join master.tipe_kamar b on b.id_tp_kamar=a.id_tp_kamar'
      'where a.isdetail='#39'1'#39
      'order by a.no_kamar asc')
    Params = <>
    Left = 632
    Top = 64
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
    object strngfld1: TStringField
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
      Required = True
      Size = 10
    end
  end
  object advpopRoomMenu: TAdvPopupMenu
    Version = '2.6.5.11'
    Left = 744
    Top = 32
    object CheckIn1: TMenuItem
      Caption = 'Check In / Edit Guest Registration'
      ImageIndex = 0
      OnClick = CheckIn1Click
    end
    object MovingRoom1: TMenuItem
      Caption = 'Moving Room'
      ImageIndex = 0
      OnClick = MovingRoom1Click
    end
    object ExtraBed1: TMenuItem
      Caption = 'Extend Stay'
      ImageIndex = 0
      OnClick = ExtraBed1Click
    end
    object ExtraBed2: TMenuItem
      Caption = 'Extra Bed'
      ImageIndex = 0
      OnClick = ExtraBed2Click
    end
    object CancelCheckIN1: TMenuItem
      Caption = 'Cancel Check In'
      ImageIndex = 0
      OnClick = CancelCheckIN1Click
    end
    object RoomCard1: TMenuItem
      Caption = 'Room Card'
      ImageIndex = 0
      object IssueCard1: TMenuItem
        Tag = 1
        Caption = 'Issue Card'
        HelpContext = 1
        ImageIndex = 1
        object Adel1: TMenuItem
          Tag = 11
          Caption = 'Adel'
          GroupIndex = 2
          ImageIndex = 2
          OnClick = Adel1Click
        end
        object Fest1: TMenuItem
          Tag = 12
          Caption = 'Fest'
          GroupIndex = 2
          ImageIndex = 2
          OnClick = Fest1Click
        end
      end
    end
    object VerifikasiBillingTamu1: TMenuItem
      Caption = 'Verifikasi Billing Tamu'
      OnClick = VerifikasiBillingTamu1Click
    end
    object CheckOut1: TMenuItem
      Caption = 'Check Out'
      ImageIndex = 0
      OnClick = CheckOut1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Maintenence: TMenuItem
      Caption = 'Maintenence'
      ImageIndex = 0
      OnClick = MaintenenceClick
    end
    object SetReady1: TMenuItem
      Caption = 'Set Ready'
      ImageIndex = 0
      OnClick = SetReady1Click
    end
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 0
      OnClick = Refresh1Click
    end
  end
  object zqryExec: TZQuery
    Connection = DataModule1.zconHotel
    Params = <>
    Left = 928
    Top = 32
  end
  object zqryRoomUpdate: TZQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      'select a.*, b.tp_kamar from master.mkamar a'
      'left join master.tipe_kamar b on b.id_tp_kamar=a.id_tp_kamar'
      'where a.isdetail='#39'1'#39
      'order by a.no_kamar asc')
    Params = <>
    Left = 816
    Top = 32
    object strngfld2: TStringField
      FieldName = 'no_kamar'
      Required = True
      Size = 10
    end
    object lrgntfld1: TLargeintField
      FieldName = 'id_tp_kamar'
    end
    object fltfld1: TFloatField
      FieldName = 'tarif'
      Required = True
    end
    object strngfld3: TStringField
      FieldName = 'isdetail'
      Required = True
      Size = 1
    end
    object intgrfld1: TIntegerField
      FieldName = 'lvl'
      Required = True
    end
    object strngfld4: TStringField
      FieldName = 'diskripsi'
      Size = 255
    end
    object strngfld5: TStringField
      FieldName = 'total_bed'
      Size = 100
    end
    object dtmfld1: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object dtmfld2: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
    object strngfld6: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 30
    end
    object strngfld7: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object strngfld8: TStringField
      FieldName = 'is_isi'
      Required = True
      Size = 1
    end
    object strngfld9: TStringField
      FieldName = 'id_parent'
      Size = 10
    end
    object strngfld10: TStringField
      FieldName = 'no_bed'
      Size = 10
    end
    object strngfld11: TStringField
      FieldName = 'tp_kamar'
      Required = True
      Size = 10
    end
  end
  object qCeckTime: TZReadOnlyQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      'select master.fn_gen_charge() as charge_time')
    Params = <>
    Left = 552
    Top = 56
    object qCeckTimecharge_time: TFloatField
      FieldName = 'charge_time'
      ReadOnly = True
    end
  end
end
