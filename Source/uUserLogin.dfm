object frmUserLogin: TfrmUserLogin
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'User Login'
  ClientHeight = 274
  ClientWidth = 312
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object shp2: TShape
    Left = 102
    Top = 165
    Width = 193
    Height = 28
  end
  object shp4: TShape
    Left = 102
    Top = 192
    Width = 193
    Height = 28
  end
  object lbl1: TLabel
    Left = 26
    Top = 171
    Width = 63
    Height = 13
    Caption = 'Nama User'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lbl2: TLabel
    Left = 27
    Top = 199
    Width = 55
    Height = 13
    Caption = 'Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lblHeaderComment: TLabel
    Left = 26
    Top = 98
    Width = 214
    Height = 16
    Caption = 'Enter User Logon Information'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object lblDescription: TLabel
    Left = 26
    Top = 120
    Width = 280
    Height = 31
    AutoSize = False
    Caption = 'Masukan  user name dan  password untuk proses  otorisasi user :'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object cxEdtUsername: TcxTextEdit
    Left = 107
    Top = 168
    ParentFont = False
    Style.BorderStyle = ebsOffice11
    Style.Edges = [bLeft, bTop, bRight, bBottom]
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Verdana'
    Style.Font.Style = []
    Style.HotTrack = True
    Style.Shadow = False
    Style.IsFontAssigned = True
    StyleFocused.BorderStyle = ebsThick
    StyleHot.BorderStyle = ebsThick
    TabOrder = 0
    OnKeyPress = cxEdtUsernameKeyPress
    Width = 184
  end
  object cxEdtPassword: TcxTextEdit
    Left = 107
    Top = 195
    ParentFont = False
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '#'
    Style.BorderStyle = ebsOffice11
    Style.Edges = [bLeft, bTop, bRight, bBottom]
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Verdana'
    Style.Font.Style = [fsBold]
    Style.HotTrack = True
    Style.Shadow = False
    Style.IsFontAssigned = True
    StyleFocused.BorderStyle = ebsThick
    StyleHot.BorderStyle = ebsThick
    TabOrder = 1
    OnKeyPress = cxEdtPasswordKeyPress
    Width = 184
  end
  object btnOK: TAdvGlowButton
    Left = 16
    Top = 232
    Width = 72
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    TabOrder = 2
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
  object btnCancel: TAdvGlowButton
    Left = 96
    Top = 232
    Width = 72
    Height = 25
    Caption = 'Batal'
    ModalResult = 2
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    TabOrder = 3
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
  object advpnlTop: TAdvPanel
    Left = 0
    Top = 0
    Width = 312
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSkyBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    UseDockManager = True
    Version = '2.5.7.7'
    AutoHideChildren = False
    BorderColor = 16765615
    Caption.Color = 12105910
    Caption.ColorTo = 10526878
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWhite
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = clSkyBlue
    ColorMirror = clSkyBlue
    ColorMirrorTo = 15527141
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWhite
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 10592158
    StatusBar.ColorTo = 5459275
    StatusBar.GradientDirection = gdVertical
    Text = ''
    FullHeight = 41
    object lbl4: TLabel
      Left = 80
      Top = 6
      Width = 76
      Height = 16
      Caption = 'User Login'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lbl5: TLabel
      Left = 80
      Top = 27
      Width = 219
      Height = 42
      AutoSize = False
      Caption = 
        'Untuk mengakses system, user harus logon. System akan memberikan' +
        ' hak akses setelah proses authentifikasi.'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object Image1: TImage
      Left = 10
      Top = 6
      Width = 64
      Height = 63
      Stretch = True
    end
  end
  object btnExit: TAdvGlowButton
    Left = 223
    Top = 232
    Width = 72
    Height = 25
    Caption = 'Exit'
    ModalResult = 1
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    TabOrder = 5
    OnClick = btnExitClick
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
