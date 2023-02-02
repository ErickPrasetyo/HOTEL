object frmChangePass: TfrmChangePass
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'User Login'
  ClientHeight = 303
  ClientWidth = 335
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
  object Shape1: TShape
    Left = 127
    Top = 158
    Width = 193
    Height = 29
  end
  object Shape4: TShape
    Left = 13
    Top = 158
    Width = 122
    Height = 29
    Brush.Color = 16710387
  end
  object Label1: TLabel
    Left = 19
    Top = 165
    Width = 101
    Height = 16
    Caption = 'Password Lama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape5: TShape
    Left = 13
    Top = 186
    Width = 122
    Height = 29
    Brush.Color = 16710387
  end
  object Label2: TLabel
    Left = 20
    Top = 193
    Width = 97
    Height = 16
    Caption = 'Password Baru'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape2: TShape
    Left = 134
    Top = 186
    Width = 186
    Height = 29
  end
  object Shape3: TShape
    Left = 127
    Top = 214
    Width = 193
    Height = 29
  end
  object Shape6: TShape
    Left = 13
    Top = 214
    Width = 122
    Height = 29
    Brush.Color = 16710387
  end
  object Label3: TLabel
    Left = 19
    Top = 221
    Width = 97
    Height = 16
    Caption = 'Password Baru'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lblHeaderComment: TLabel
    Left = 0
    Top = 81
    Width = 335
    Height = 16
    Align = alTop
    Alignment = taCenter
    Caption = 'Ubah Password User '
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
    ExplicitWidth = 136
  end
  object lblDescription: TLabel
    Left = 28
    Top = 105
    Width = 280
    Height = 34
    AutoSize = False
    Caption = 
      'Silahkan memasukkan password lama dan password baru untuk proses' +
      ' perubahan password :'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object advpnlTop: TAdvPanel
    Left = 0
    Top = 0
    Width = 335
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
    TabOrder = 0
    UseDockManager = True
    Version = '2.5.5.1'
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
    ExplicitWidth = 312
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
  object edtOldPassword: TcxTextEdit
    Left = 138
    Top = 162
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    Style.Shadow = False
    StyleFocused.BorderStyle = ebsThick
    StyleHot.BorderStyle = ebsThick
    TabOrder = 1
    OnKeyPress = edtOldPasswordKeyPress
    Width = 176
  end
  object edtNewPassword: TcxTextEdit
    Left = 138
    Top = 190
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    Style.Shadow = False
    StyleFocused.BorderStyle = ebsThick
    StyleHot.BorderStyle = ebsThick
    TabOrder = 2
    OnKeyPress = edtNewPasswordKeyPress
    Width = 176
  end
  object edtConfirmPassword: TcxTextEdit
    Left = 138
    Top = 218
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    Style.Shadow = False
    StyleFocused.BorderStyle = ebsThick
    StyleHot.BorderStyle = ebsThick
    TabOrder = 3
    OnKeyPress = edtConfirmPasswordKeyPress
    Width = 176
  end
  object btnOK: TAdvGlowButton
    Left = 13
    Top = 263
    Width = 72
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    TabOrder = 4
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
    Left = 89
    Top = 263
    Width = 72
    Height = 25
    Caption = 'Batal'
    ModalResult = 2
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    TabOrder = 5
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
