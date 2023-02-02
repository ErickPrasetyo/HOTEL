object frmAdel: TfrmAdel
  Left = 321
  Top = 49
  Caption = 'Room Card'
  ClientHeight = 580
  ClientWidth = 475
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = -1
    Width = 700
    Height = 562
    TabOrder = 0
    Properties.ActivePage = tsRoomCard
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 558
    ClientRectLeft = 4
    ClientRectRight = 696
    ClientRectTop = 24
    object tsRoomCard: TcxTabSheet
      Caption = 'Room Card'
      ImageIndex = 0
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 692
        Height = 534
        Align = alClient
        BevelOuter = bvNone
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 16
          Top = 50
          Width = 433
          Height = 153
          Caption = 'Data Tamu'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label2: TLabel
            Left = 24
            Top = 56
            Width = 105
            Height = 20
            Caption = 'NAMA TAMU'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label18: TLabel
            Left = 24
            Top = 96
            Width = 128
            Height = 20
            Caption = 'NO. REGISTER'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtNama: TcxTextEdit
            Left = 176
            Top = 56
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Properties.OnEditValueChanged = edtNamaPropertiesEditValueChanged
            TabOrder = 0
            Width = 233
          end
          object edtNoRegister: TcxTextEdit
            Left = 176
            Top = 96
            Properties.ReadOnly = True
            TabOrder = 1
            Width = 233
          end
        end
        object GroupBox2: TGroupBox
          Left = 16
          Top = 209
          Width = 433
          Height = 193
          Caption = 'Data Kamar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label19: TLabel
            Left = 24
            Top = 56
            Width = 93
            Height = 20
            Caption = 'NO KAMAR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label20: TLabel
            Left = 24
            Top = 94
            Width = 118
            Height = 20
            Caption = 'CECK IN TIME'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label21: TLabel
            Left = 24
            Top = 134
            Width = 136
            Height = 20
            Caption = 'CECK OUT TIME'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtNoKamar: TcxTextEdit
            Left = 176
            Top = 52
            Properties.ReadOnly = True
            Properties.OnEditValueChanged = edtNoKamarPropertiesEditValueChanged
            TabOrder = 0
            Width = 233
          end
          object edtCI: TcxDateEdit
            Left = 176
            Top = 90
            Properties.DisplayFormat = 'dd/mm/yyyy hh:mm'
            Properties.ReadOnly = True
            TabOrder = 1
            Width = 233
          end
          object edtCO: TcxDateEdit
            Left = 176
            Top = 130
            Properties.DisplayFormat = 'dd/mm/yyyy hh:mm'
            Properties.ReadOnly = True
            TabOrder = 2
            Width = 233
          end
        end
        object btnglIssue: TAdvGlassButton
          Left = 16
          Top = 446
          Width = 129
          Height = 32
          BackColor = clBlack
          Caption = 'Issue Card'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ForeColor = clWhite
          GlowColor = 16760205
          InnerBorderColor = clBlack
          OuterBorderColor = clWhite
          ParentFont = False
          ShineColor = clWhite
          TabOrder = 2
          Version = '1.3.0.2'
          OnClick = btnglIssueClick
        end
        object btnglRead: TAdvGlassButton
          Left = 16
          Top = 479
          Width = 129
          Height = 32
          BackColor = clBlack
          Caption = 'Read Card'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ForeColor = clWhite
          GlowColor = 16760205
          InnerBorderColor = clBlack
          OuterBorderColor = clWhite
          ParentFont = False
          ShineColor = clWhite
          TabOrder = 3
          Version = '1.3.0.2'
          OnClick = btnglReadClick
        end
        object btnglClose: TAdvGlassButton
          Left = 320
          Top = 479
          Width = 129
          Height = 32
          BackColor = clRed
          Caption = 'CLOSE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ForeColor = clWhite
          GlowColor = clRed
          InnerBorderColor = clBlack
          OuterBorderColor = clWhite
          ParentFont = False
          ShineColor = clWhite
          TabOrder = 4
          Version = '1.3.0.2'
          OnClick = btnglCloseClick
        end
        object Panel6: TPanel
          Left = 2
          Top = 3
          Width = 463
          Height = 41
          Caption = 'ISSUE CARD'
          Color = clSkyBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentBackground = False
          ParentFont = False
          TabOrder = 5
        end
        object btnglErase: TAdvGlassButton
          Left = 16
          Top = 479
          Width = 129
          Height = 32
          BackColor = clBlack
          Caption = 'Erase Card'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ForeColor = clWhite
          GlowColor = 16760205
          InnerBorderColor = clBlack
          OuterBorderColor = clWhite
          ParentFont = False
          ShineColor = clWhite
          TabOrder = 6
          Version = '1.3.0.2'
          OnClick = btnglEraseClick
        end
      end
    end
    object tsTool: TcxTabSheet
      Caption = 'Tool'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel4: TPanel
        Left = 0
        Top = 147
        Width = 692
        Height = 57
        Align = alTop
        TabOrder = 0
        object Label15: TLabel
          Left = 192
          Top = 23
          Width = 42
          Height = 13
          Caption = 'Card No.'
        end
        object Label16: TLabel
          Left = 40
          Top = 23
          Width = 48
          Height = 13
          Caption = 'Room No.'
        end
        object Edit12: TEdit
          Left = 241
          Top = 19
          Width = 56
          Height = 21
          MaxLength = 10
          TabOrder = 0
          Text = '0'
        end
        object Edit13: TEdit
          Left = 104
          Top = 19
          Width = 73
          Height = 21
          MaxLength = 6
          TabOrder = 1
          Text = '010101'
        end
        object btnErase: TBitBtn
          Left = 320
          Top = 14
          Width = 72
          Height = 29
          Caption = 'Erase key'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btnEraseClick
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 204
        Width = 692
        Height = 76
        Align = alTop
        TabOrder = 1
        object Label7: TLabel
          Left = 40
          Top = 21
          Width = 48
          Height = 13
          Caption = 'Room No.'
        end
        object Label8: TLabel
          Left = 217
          Top = 21
          Width = 49
          Height = 13
          Caption = 'Valid Date'
        end
        object Label9: TLabel
          Left = 38
          Top = 47
          Width = 42
          Height = 13
          Caption = 'Card No.'
        end
        object Label10: TLabel
          Left = 217
          Top = 47
          Width = 31
          Height = 13
          Caption = 'Holder'
        end
        object Label11: TLabel
          Left = 385
          Top = 47
          Width = 48
          Height = 13
          Caption = 'Card state'
        end
        object Edit4: TEdit
          Left = 104
          Top = 13
          Width = 81
          Height = 21
          MaxLength = 6
          ReadOnly = True
          TabOrder = 0
        end
        object Edit5: TEdit
          Left = 280
          Top = 13
          Width = 161
          Height = 21
          MaxLength = 24
          ReadOnly = True
          TabOrder = 1
        end
        object btnRead: TBitBtn
          Left = 492
          Top = 7
          Width = 84
          Height = 29
          Caption = 'Read Key'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btnReadClick
        end
        object Edit6: TEdit
          Left = 104
          Top = 43
          Width = 81
          Height = 21
          MaxLength = 6
          ReadOnly = True
          TabOrder = 3
        end
        object Edit7: TEdit
          Left = 280
          Top = 43
          Width = 81
          Height = 21
          MaxLength = 6
          ReadOnly = True
          TabOrder = 4
        end
        object Edit8: TEdit
          Left = 441
          Top = 43
          Width = 81
          Height = 21
          MaxLength = 6
          ReadOnly = True
          TabOrder = 5
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 72
        Width = 692
        Height = 75
        Align = alTop
        TabOrder = 2
        object Label5: TLabel
          Left = 24
          Top = 15
          Width = 48
          Height = 13
          Caption = 'Room No.'
        end
        object Label6: TLabel
          Left = 178
          Top = 16
          Width = 49
          Height = 13
          Caption = 'Valid Date'
        end
        object Label12: TLabel
          Left = 30
          Top = 47
          Width = 42
          Height = 13
          Caption = 'Card No.'
        end
        object Label13: TLabel
          Left = 196
          Top = 48
          Width = 31
          Height = 13
          Caption = 'Holder'
        end
        object Label14: TLabel
          Left = 386
          Top = 48
          Width = 31
          Height = 13
          Caption = 'ID No.'
        end
        object Edit2: TEdit
          Left = 80
          Top = 13
          Width = 69
          Height = 21
          MaxLength = 6
          TabOrder = 0
          Text = '010101'
        end
        object Edit3: TEdit
          Left = 232
          Top = 13
          Width = 161
          Height = 21
          MaxLength = 24
          TabOrder = 1
          Text = '200201011200200212311200'
        end
        object btnIssue: TBitBtn
          Left = 491
          Top = 8
          Width = 80
          Height = 28
          Caption = 'New Key'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btnIssueClick
        end
        object Edit9: TEdit
          Left = 80
          Top = 44
          Width = 69
          Height = 21
          MaxLength = 6
          ReadOnly = True
          TabOrder = 3
        end
        object Edit10: TEdit
          Left = 232
          Top = 44
          Width = 112
          Height = 21
          MaxLength = 255
          TabOrder = 4
          Text = 'Guest Name'
        end
        object Edit11: TEdit
          Left = 425
          Top = 44
          Width = 136
          Height = 21
          MaxLength = 6
          TabOrder = 5
          Text = 'Account No.'
        end
        object cbOverFlag: TCheckBox
          Left = 402
          Top = 14
          Width = 82
          Height = 17
          Caption = 'Over Flag'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 692
        Height = 72
        Align = alTop
        TabOrder = 3
        object Label1: TLabel
          Left = 43
          Top = 14
          Width = 27
          Height = 13
          Caption = 'Host'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 337
          Top = 14
          Width = 24
          Height = 13
          Caption = 'Port'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 458
          Top = 14
          Width = 63
          Height = 13
          Caption = 'Encoder type'
        end
        object Label17: TLabel
          Left = 18
          Top = 44
          Width = 53
          Height = 13
          Caption = 'TM Enoder'
        end
        object Label25: TLabel
          Left = 190
          Top = 14
          Width = 51
          Height = 13
          Caption = 'Software'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 80
          Top = 10
          Width = 82
          Height = 21
          TabOrder = 0
          Text = '(local)'
        end
        object ComboBox2: TComboBox
          Left = 370
          Top = 10
          Width = 65
          Height = 21
          Style = csDropDownList
          DropDownCount = 10
          ItemIndex = 0
          TabOrder = 1
          Text = 'USB'
          Items.Strings = (
            'USB'
            'COM1'
            'COM2'
            'COM3'
            'COM4'
            'COM5'
            'COM6'
            'COM7'
            'COM8'
            'COM9')
        end
        object btnInit: TBitBtn
          Left = 406
          Top = 38
          Width = 80
          Height = 30
          Caption = 'Initial'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btnInitClick
        end
        object btnEnd: TBitBtn
          Left = 488
          Top = 38
          Width = 80
          Height = 29
          Caption = 'End Session'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btnEndClick
        end
        object BitBtn7: TBitBtn
          Left = 582
          Top = 38
          Width = 80
          Height = 28
          Caption = 'Popup Card'
          TabOrder = 4
          OnClick = BitBtn7Click
        end
        object ComboBox3: TComboBox
          Left = 528
          Top = 10
          Width = 89
          Height = 21
          Style = csDropDownList
          DropDownCount = 10
          ItemIndex = 0
          TabOrder = 5
          Text = 'Manual'
          Items.Strings = (
            'Manual'
            'Automation')
        end
        object ComboBox4: TComboBox
          Left = 80
          Top = 40
          Width = 73
          Height = 21
          Style = csDropDownList
          DropDownCount = 10
          ItemIndex = 0
          TabOrder = 6
          Text = 'DS9097U'
          Items.Strings = (
            'DS9097U'
            'DS9097E')
        end
        object btnSetPort: TButton
          Left = 230
          Top = 38
          Width = 80
          Height = 28
          Caption = 'SetPort'
          TabOrder = 7
          OnClick = btnSetPortClick
        end
        object ComboBox1: TComboBox
          Left = 246
          Top = 10
          Width = 79
          Height = 21
          Style = csDropDownList
          DropDownCount = 20
          TabOrder = 8
        end
        object Button12: TButton
          Left = 318
          Top = 38
          Width = 80
          Height = 28
          Caption = 'Beep'
          TabOrder = 9
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 557
    Width = 475
    Height = 23
    Panels = <
      item
        Width = 50
      end>
  end
  object zqryRegister: TZQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      
        'SELECT a.no_register, a.id_register, a.keterangan, a.nama_tamu, ' +
        ' a.jns_kel, a.id_tp_kamar, b.no_kamar, b.dt_masuk, b.dt_keluar'
      'FROM transaksi.register_tamu a'
      
        'LEFT JOIN transaksi.register_tamu_detail b on b.id_register=a.id' +
        '_register'#9
      'WHERE a.no_register=:pno_reg')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pno_reg'
        ParamType = ptUnknown
      end>
    Left = 160
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pno_reg'
        ParamType = ptUnknown
      end>
    object strngfldRegisterno_register: TStringField
      FieldName = 'no_register'
      Required = True
    end
    object lrgntfldRegisterid_register: TLargeintField
      FieldName = 'id_register'
      Required = True
    end
    object strngfldRegisterketerangan: TStringField
      FieldName = 'keterangan'
      Size = 255
    end
    object strngfldRegisternama_tamu: TStringField
      FieldName = 'nama_tamu'
      Size = 255
    end
    object strngfldRegisterjns_kel: TStringField
      FieldName = 'jns_kel'
      Size = 10
    end
    object lrgntfldRegisterid_tp_kamar: TLargeintField
      FieldName = 'id_tp_kamar'
    end
    object strngfldRegisterno_kamar: TStringField
      FieldName = 'no_kamar'
      Size = 10
    end
    object dtmfldRegisterdt_masuk: TDateTimeField
      FieldName = 'dt_masuk'
    end
    object dtmfldRegisterdt_keluar: TDateTimeField
      FieldName = 'dt_keluar'
    end
  end
  object dsRegister: TDataSource
    DataSet = zqryRegister
    Left = 224
    Top = 32
  end
  object qExec: TZQuery
    Connection = DataModule1.zconHotel
    Params = <>
    Left = 68
    Top = 33
  end
end
