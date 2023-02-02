object RegTamuFrm: TRegTamuFrm
  Left = 0
  Top = 0
  Caption = 'FORM REGISTRASI TAMU'
  ClientHeight = 576
  ClientWidth = 425
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgRegistrasi: TcxPageControl
    Left = 0
    Top = 0
    Width = 425
    Height = 477
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 473
    ClientRectLeft = 4
    ClientRectRight = 421
    ClientRectTop = 4
  end
  object pgRegister: TcxPageControl
    Left = 0
    Top = 0
    Width = 425
    Height = 577
    Color = clActiveCaption
    ParentColor = False
    TabOrder = 1
    Properties.ActivePage = DataKamar
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 573
    ClientRectLeft = 4
    ClientRectRight = 421
    ClientRectTop = 24
    object DataKamar: TcxTabSheet
      Caption = 'DataKamar'
      ImageIndex = 0
      object Panel2: TPanel
        Left = 0
        Top = 62
        Width = 420
        Height = 245
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 17
          Top = 89
          Width = 70
          Height = 16
          Caption = 'Nama Tamu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 17
          Top = 118
          Width = 72
          Height = 16
          Caption = 'No. Identitas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 17
          Top = 180
          Width = 40
          Height = 16
          Caption = 'Alamat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 17
          Top = 146
          Width = 69
          Height = 16
          Caption = 'No. Telepon'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 17
          Top = 60
          Width = 70
          Height = 16
          Caption = 'No. Register'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtRegTlp: TcxDBTextEdit
          Left = 104
          Top = 143
          DataBinding.DataField = 'telepon'
          DataBinding.DataSource = dsRegister
          ParentColor = True
          Properties.ReadOnly = True
          TabOrder = 0
          Width = 297
        end
        object edtRegAlamat: TcxDBMemo
          Left = 104
          Top = 171
          DataBinding.DataField = 'alamat'
          DataBinding.DataSource = dsRegister
          ParentColor = True
          Properties.ReadOnly = True
          TabOrder = 1
          Height = 68
          Width = 297
        end
        object btnTambahTamu: TAdvGlassButton
          Left = 32
          Top = 12
          Width = 113
          Height = 27
          Cursor = crHandPoint
          BackColor = clBlack
          Caption = 'Tambah Data Tamu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ForeColor = clWhite
          GlowColor = 16760205
          InnerBorderColor = clBlue
          OuterBorderColor = clWhite
          ParentFont = False
          ShineColor = clWhite
          TabOrder = 2
          Version = '1.3.0.4'
          OnClick = btnTambahTamuClick
        end
        object btnEditTamu: TAdvGlassButton
          Left = 154
          Top = 12
          Width = 113
          Height = 27
          Cursor = crHandPoint
          BackColor = clBlack
          Caption = 'Edit Data Tamu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ForeColor = clWhite
          GlowColor = 16760205
          InnerBorderColor = clBlue
          OuterBorderColor = clWhite
          ParentFont = False
          ShineColor = clWhite
          TabOrder = 3
          Version = '1.3.0.4'
          OnClick = btnEditTamuClick
        end
        object edtRegNama: TcxDBTextEdit
          Left = 104
          Top = 85
          DataBinding.DataField = 'nama_tamu'
          DataBinding.DataSource = dsRegister
          ParentColor = True
          Properties.ReadOnly = True
          TabOrder = 4
          Width = 297
        end
        object edtRegId: TcxDBTextEdit
          Left = 104
          Top = 115
          DataBinding.DataField = 'nomor_id'
          DataBinding.DataSource = dsRegister
          ParentColor = True
          Properties.ReadOnly = True
          TabOrder = 5
          Width = 297
        end
        object btnFindGuest: TAdvGlassButton
          Left = 273
          Top = 12
          Width = 113
          Height = 27
          Cursor = crHandPoint
          BackColor = clBlack
          Caption = 'Cari Data Tamu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ForeColor = clWhite
          GlowColor = 16760205
          InnerBorderColor = clBlue
          OuterBorderColor = clWhite
          ParentFont = False
          ShineColor = clWhite
          TabOrder = 6
          Version = '1.3.0.4'
          OnClick = btnFindGuestClick
        end
        object edtNoRegister: TcxDBTextEdit
          Left = 104
          Top = 57
          DataBinding.DataField = 'no_register'
          DataBinding.DataSource = dsRegister
          ParentColor = True
          Properties.ReadOnly = True
          TabOrder = 7
          Width = 297
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 420
        Height = 62
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object GroupBox1: TGroupBox
          Left = 32
          Top = 6
          Width = 357
          Height = 47
          Caption = 'Jenis Reservasi'
          TabOrder = 0
          object edtJnsReservasi: TcxDBLookupComboBox
            Left = 33
            Top = 17
            DataBinding.DataField = 'jenis'
            DataBinding.DataSource = dsRegister
            ParentColor = True
            Properties.KeyFieldNames = 'diskripsi'
            Properties.ListColumns = <
              item
                Caption = 'Diskripsi'
                Width = 27
                FieldName = 'diskripsi'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsReservasi
            Properties.OnEditValueChanged = edtJnsReservasiPropertiesEditValueChanged
            TabOrder = 0
            OnEnter = edtJnsReservasiEnter
            OnKeyPress = edtJnsReservasiKeyPress
            Width = 291
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 307
        Width = 420
        Height = 192
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        object Label5: TLabel
          Left = 17
          Top = 10
          Width = 42
          Height = 16
          Caption = 'Ceck In'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 17
          Top = 38
          Width = 51
          Height = 16
          Caption = 'Ceck Out'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 17
          Top = 90
          Width = 66
          Height = 16
          Caption = 'Tipe Kamar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 17
          Top = 66
          Width = 73
          Height = 16
          Caption = 'Long Of Stay'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 17
          Top = 116
          Width = 64
          Height = 16
          Caption = 'Tarif @Rp.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 145
          Top = 66
          Width = 26
          Height = 16
          Caption = 'Hari'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 213
          Top = 92
          Width = 46
          Height = 16
          Caption = 'Room : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 17
          Top = 144
          Width = 77
          Height = 16
          Caption = '+ Deposit Rp.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 17
          Top = 170
          Width = 75
          Height = 16
          Caption = 'Total Deposit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 223
          Top = 116
          Width = 57
          Height = 16
          Caption = 'Total Rp.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 225
          Top = 144
          Width = 60
          Height = 16
          Caption = 'Diskon Rp.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dbLabelTarif: TcxDBLabel
          Left = 104
          Top = 114
          DataBinding.DataField = 'harga'
          DataBinding.DataSource = dsRegisterDetail
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Style.TextColor = clBlue
          Height = 21
          Width = 89
          AnchorX = 193
          AnchorY = 125
        end
        object dbLabelHari: TcxDBLabel
          Left = 104
          Top = 64
          DataBinding.DataField = 'qty'
          DataBinding.DataSource = dsRegisterDetail
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Style.TextColor = clDefault
          Height = 21
          Width = 35
          AnchorY = 75
        end
        object dbLabelKamar: TcxDBLabel
          Left = 261
          Top = 90
          DataBinding.DataField = 'no_kamar'
          DataBinding.DataSource = dsRegisterDetail
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Style.TextColor = clDefault
          Height = 21
          Width = 68
          AnchorY = 101
        end
        object dbLabelTipeKamar: TcxDBLabel
          Left = 104
          Top = 90
          DataBinding.DataField = 'diskripsi'
          DataBinding.DataSource = dsRegisterDetail
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Style.TextColor = clDefault
          Height = 21
          Width = 97
          AnchorY = 101
        end
        object dbLabelTotDeposit: TcxDBLabel
          Left = 104
          Top = 168
          DataBinding.DataField = 'deposit'
          DataBinding.DataSource = dsRegister
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Style.TextColor = clRed
          Height = 21
          Width = 89
          AnchorX = 193
          AnchorY = 179
        end
        object dbLabelCI: TcxDBLabel
          Left = 104
          Top = 9
          DataBinding.DataField = 'dt_masuk'
          DataBinding.DataSource = dsRegisterDetail
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Style.TextColor = clDefault
          StyleDisabled.TextColor = clDefault
          Height = 21
          Width = 252
          AnchorY = 20
        end
        object dbLabelCO: TcxDBLabel
          Left = 104
          Top = 36
          DataBinding.DataField = 'dt_keluar'
          DataBinding.DataSource = dsRegisterDetail
          ParentFont = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clDefault
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextColor = clDefault
          Style.TransparentBorder = True
          Style.IsFontAssigned = True
          StyleDisabled.TextColor = clDefault
          Height = 21
          Width = 260
          AnchorY = 47
        end
        object edtRegCeckOut: TcxDateEdit
          Left = 104
          Top = 35
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = 'dd/mm/yyyy 13:00'
          Properties.OnChange = edtRegCeckOutPropertiesChange
          Style.Color = clSkyBlue
          TabOrder = 7
          OnExit = edtRegCeckOutExit
          Width = 297
        end
        object edtInsDeposit: TcxTextEdit
          Left = 104
          Top = 141
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.UseLeftAlignmentOnEditing = False
          Style.Color = clSkyBlue
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clRed
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 8
          Text = 'edtInsDeposit'
          Width = 89
        end
        object dbLabelTotal: TcxDBLabel
          Left = 287
          Top = 114
          DataBinding.DataField = 'sub_total'
          DataBinding.DataSource = dsRegister
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Style.TextColor = clBlue
          Height = 21
          Width = 114
          AnchorX = 401
          AnchorY = 125
        end
        object edtRegCeckIn: TcxDateEdit
          Left = 104
          Top = 7
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = 'dd/mm/yyyy hh:mm'
          Properties.OnChange = edtRegCeckOutPropertiesChange
          Style.Color = clSkyBlue
          TabOrder = 10
          OnExit = edtRegCeckOutExit
          Width = 297
        end
        object edtDiskon: TcxTextEdit
          Left = 312
          Top = 141
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.UseLeftAlignmentOnEditing = False
          Style.Color = clSkyBlue
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clRed
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 11
          Text = 'edtInsDeposit'
          Width = 89
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 499
        Width = 420
        Height = 50
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        object btnSimpan: TAdvGlassButton
          Left = 17
          Top = 6
          Width = 100
          Height = 37
          BackColor = clBlack
          Caption = 'SIMPAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ForeColor = clWhite
          GlowColor = 16760205
          InnerBorderColor = clBlack
          OuterBorderColor = clWhite
          ParentFont = False
          ShineColor = clWhite
          TabOrder = 0
          Version = '1.3.0.4'
          OnClick = btnSimpanClick
        end
        object btnBatal: TAdvGlassButton
          Left = 117
          Top = 6
          Width = 100
          Height = 37
          BackColor = clBlack
          Caption = 'BATAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ForeColor = clWhite
          GlowColor = 16760205
          InnerBorderColor = clBlack
          OuterBorderColor = clWhite
          ParentFont = False
          ShineColor = clWhite
          TabOrder = 1
          Version = '1.3.0.4'
          OnClick = btnBatalClick
        end
        object btnPrint: TAdvGlassButton
          Left = 310
          Top = 8
          Width = 100
          Height = 37
          BackColor = clBlack
          Caption = 'Print Bill'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ForeColor = clWhite
          GlowColor = 16760205
          InnerBorderColor = clBlack
          OuterBorderColor = clWhite
          ParentFont = False
          ShineColor = clWhite
          TabOrder = 2
          Version = '1.3.0.4'
          OnClick = btnPrintClick
        end
      end
    end
    object DataTamu: TcxTabSheet
      Caption = 'DataTamu'
      ImageIndex = 1
      OnShow = DataTamuShow
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 417
        Height = 25
        Caption = 'Data Tamu'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object Panel7: TPanel
        Left = 0
        Top = 25
        Width = 417
        Height = 473
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object Label10: TLabel
          Left = 24
          Top = 16
          Width = 70
          Height = 16
          Caption = 'Nama Tamu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 24
          Top = 46
          Width = 68
          Height = 16
          Caption = 'Jenis/No. ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 24
          Top = 107
          Width = 69
          Height = 16
          Caption = 'No. Telepon'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 24
          Top = 137
          Width = 40
          Height = 16
          Caption = 'Alamat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 24
          Top = 192
          Width = 31
          Height = 16
          Caption = 'Email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 24
          Top = 77
          Width = 77
          Height = 16
          Caption = 'Jenis Kelamin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtNamaTamu: TEdit
          Left = 108
          Top = 13
          Width = 283
          Height = 24
          TabOrder = 0
        end
        object edtNoID: TEdit
          Left = 187
          Top = 43
          Width = 204
          Height = 24
          TabOrder = 1
        end
        object edtTlp: TEdit
          Left = 108
          Top = 103
          Width = 283
          Height = 24
          TabOrder = 2
        end
        object edtAlamat: TcxMemo
          Left = 108
          Top = 134
          Lines.Strings = (
            'edtAlamat')
          TabOrder = 3
          Height = 50
          Width = 283
        end
        object edtEmail: TEdit
          Left = 108
          Top = 189
          Width = 283
          Height = 24
          TabOrder = 4
        end
        object edtJnsID: TComboBox
          Left = 108
          Top = 43
          Width = 77
          Height = 24
          TabOrder = 5
          Items.Strings = (
            'KTP'
            'SIM'
            'PASSPORT'
            'KTA'
            'LAINNYA')
        end
        object edtJenisKelamin: TComboBox
          Left = 107
          Top = 73
          Width = 284
          Height = 24
          TabOrder = 6
          Items.Strings = (
            'MALE'
            'FEMALE')
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 499
        Width = 420
        Height = 50
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        object AdvGlassButton1: TAdvGlassButton
          Left = 17
          Top = 7
          Width = 100
          Height = 37
          BackColor = clBlack
          Caption = 'SIMPAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ForeColor = clWhite
          GlowColor = 16760205
          InnerBorderColor = clBlack
          OuterBorderColor = clWhite
          ParentFont = False
          ShineColor = clWhite
          TabOrder = 0
          Version = '1.3.0.4'
          OnClick = AdvGlassButton1Click
        end
        object btnCancel: TAdvGlassButton
          Left = 117
          Top = 7
          Width = 100
          Height = 37
          BackColor = clBlack
          Caption = 'BATAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ForeColor = clWhite
          GlowColor = 16760205
          InnerBorderColor = clBlack
          OuterBorderColor = clWhite
          ParentFont = False
          ShineColor = clWhite
          TabOrder = 1
          Version = '1.3.0.4'
          OnClick = btnCancelClick
        end
      end
    end
    object DataEdit: TcxTabSheet
      Caption = 'DataEdit'
      ImageIndex = 2
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 417
        Height = 25
        Caption = 'Edit Data Tamu'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object Panel11: TPanel
        Left = 0
        Top = 499
        Width = 420
        Height = 50
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object AdvGlassButton2: TAdvGlassButton
          Left = 17
          Top = 6
          Width = 100
          Height = 37
          BackColor = clBlack
          Caption = 'SIMPAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ForeColor = clWhite
          GlowColor = 16760205
          InnerBorderColor = clBlack
          OuterBorderColor = clWhite
          ParentFont = False
          ShineColor = clWhite
          TabOrder = 0
          Version = '1.3.0.4'
          OnClick = AdvGlassButton2Click
        end
        object AdvGlassButton3: TAdvGlassButton
          Left = 117
          Top = 6
          Width = 100
          Height = 37
          BackColor = clBlack
          Caption = 'BATAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ForeColor = clWhite
          GlowColor = 16760205
          InnerBorderColor = clBlack
          OuterBorderColor = clWhite
          ParentFont = False
          ShineColor = clWhite
          TabOrder = 1
          Version = '1.3.0.4'
          OnClick = AdvGlassButton3Click
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 25
        Width = 417
        Height = 473
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        object Label15: TLabel
          Left = 24
          Top = 16
          Width = 70
          Height = 16
          Caption = 'Nama Tamu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 23
          Top = 46
          Width = 68
          Height = 16
          Caption = 'Jenis/No. ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 23
          Top = 111
          Width = 69
          Height = 16
          Caption = 'No. Telepon'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 24
          Top = 141
          Width = 40
          Height = 16
          Caption = 'Alamat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 24
          Top = 196
          Width = 31
          Height = 16
          Caption = 'Email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 23
          Top = 79
          Width = 77
          Height = 16
          Caption = 'Jenis Kelamin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 109
          Top = 13
          DataBinding.DataField = 'nama_tamu'
          DataBinding.DataSource = dsEditDataTamu
          TabOrder = 0
          Width = 284
        end
        object DBComboBox1: TDBComboBox
          Left = 105
          Top = 43
          Width = 73
          Height = 24
          DataField = 'jenis_id'
          DataSource = dsEditDataTamu
          Items.Strings = (
            'KTP'
            'SIM'
            'PASSPORT'
            'KTA'
            'LAINNYA')
          TabOrder = 1
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 184
          Top = 43
          DataBinding.DataField = 'nomor_id'
          DataBinding.DataSource = dsEditDataTamu
          TabOrder = 2
          Width = 209
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 109
          Top = 108
          DataBinding.DataField = 'telepon'
          DataBinding.DataSource = dsEditDataTamu
          TabOrder = 3
          Width = 284
        end
        object cxDBMemo1: TcxDBMemo
          Left = 109
          Top = 138
          DataBinding.DataField = 'alamat'
          DataBinding.DataSource = dsEditDataTamu
          TabOrder = 4
          Height = 50
          Width = 284
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 109
          Top = 193
          DataBinding.DataField = 'email'
          DataBinding.DataSource = dsEditDataTamu
          TabOrder = 5
          Width = 284
        end
        object DBComboBox2: TDBComboBox
          Left = 109
          Top = 73
          Width = 284
          Height = 24
          DataField = 'jns_kel'
          DataSource = dsEditDataTamu
          Items.Strings = (
            'MALE'
            'FEMALE')
          TabOrder = 6
        end
      end
    end
  end
  object qRegister: TZQuery
    Connection = DataModule1.zconHotel
    BeforePost = qRegisterBeforePost
    OnNewRecord = qRegisterNewRecord
    SQL.Strings = (
      'select *'
      'from transaksi.register_tamu'
      'where no_register=:no_register')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_register'
        ParamType = ptUnknown
      end>
    Left = 336
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_register'
        ParamType = ptUnknown
      end>
    object qRegisterid_register: TLargeintField
      FieldName = 'id_register'
      Required = True
    end
    object qRegisterno_register: TStringField
      FieldName = 'no_register'
      Required = True
    end
    object qRegisterid_trans: TStringField
      FieldName = 'id_trans'
      Required = True
      Size = 10
    end
    object qRegisterdt_register: TDateTimeField
      FieldName = 'dt_register'
      Required = True
    end
    object qRegisterketerangan: TStringField
      FieldName = 'keterangan'
      Size = 255
    end
    object qRegisteriscancel: TStringField
      FieldName = 'iscancel'
      Required = True
      Size = 1
    end
    object qRegisterispost: TStringField
      FieldName = 'ispost'
      Required = True
      Size = 1
    end
    object qRegisterdt_ins: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object qRegisterdt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
    object qRegisterusr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 30
    end
    object qRegisterusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object qRegisterisclosed: TStringField
      FieldName = 'isclosed'
      Required = True
      Size = 1
    end
    object qRegisterjenis: TStringField
      FieldName = 'jenis'
      Size = 30
    end
    object qRegistershift: TIntegerField
      FieldName = 'shift'
    end
    object qRegisterno_antrian: TIntegerField
      FieldName = 'no_antrian'
    end
    object qRegisterno_reservasi: TStringField
      FieldName = 'no_reservasi'
      Size = 10
    end
    object qRegisternomor_id: TStringField
      FieldName = 'nomor_id'
      Size = 100
    end
    object qRegisterjns_id: TStringField
      FieldName = 'jns_id'
      Size = 10
    end
    object qRegistertgl_lahir: TDateField
      FieldName = 'tgl_lahir'
    end
    object qRegisterjns_kel: TStringField
      FieldName = 'jns_kel'
      Size = 10
    end
    object qRegisteralamat: TStringField
      FieldName = 'alamat'
      Size = 255
    end
    object qRegisterkota: TStringField
      FieldName = 'kota'
      Size = 50
    end
    object qRegisterstate: TStringField
      FieldName = 'state'
      Size = 50
    end
    object qRegisternegara: TStringField
      FieldName = 'negara'
      Size = 100
    end
    object qRegisterkebangsaan: TStringField
      FieldName = 'kebangsaan'
      Size = 100
    end
    object qRegistertelepon: TStringField
      FieldName = 'telepon'
      Size = 50
    end
    object qRegisterno_hp: TStringField
      FieldName = 'no_hp'
      Size = 50
    end
    object qRegisteremail: TStringField
      FieldName = 'email'
      Size = 100
    end
    object qRegisternama_tamu: TStringField
      FieldName = 'nama_tamu'
      Size = 255
    end
    object qRegisternama_tamu2: TStringField
      FieldName = 'nama_tamu2'
      Size = 255
    end
    object qRegisternama_tamu3: TStringField
      FieldName = 'nama_tamu3'
      Size = 255
    end
    object qRegistersub_total: TFloatField
      FieldName = 'sub_total'
    end
    object qRegisterdeposit: TFloatField
      FieldName = 'deposit'
      DisplayFormat = ',0'
    end
    object qRegistertotal: TFloatField
      FieldName = 'total'
    end
    object qRegisteriscekout: TStringField
      FieldName = 'iscekout'
      Size = 1
    end
    object qRegisterid_tp_kamar: TLargeintField
      FieldName = 'id_tp_kamar'
    end
    object qRegisterinc_deposit: TFloatField
      FieldName = 'inc_deposit'
    end
  end
  object dsRegister: TDataSource
    DataSet = qRegister
    Left = 380
    Top = 108
  end
  object qRegisterDetail: TZQuery
    Connection = DataModule1.zconHotel
    OnCalcFields = qRegisterDetailCalcFields
    BeforePost = qRegisterDetailBeforePost
    OnNewRecord = qRegisterDetailNewRecord
    SQL.Strings = (
      'select *'
      'from transaksi.register_tamu_detail'
      'where id_register=:id_register')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_register'
        ParamType = ptUnknown
      end>
    Left = 336
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_register'
        ParamType = ptUnknown
      end>
    object qRegisterDetailid_register: TLargeintField
      FieldName = 'id_register'
      Required = True
    end
    object qRegisterDetailid_register_detail: TLargeintField
      FieldName = 'id_register_detail'
      Required = True
    end
    object qRegisterDetailno_kamar: TStringField
      FieldName = 'no_kamar'
      Size = 10
    end
    object qRegisterDetaildt_masuk: TDateTimeField
      FieldName = 'dt_masuk'
    end
    object qRegisterDetaildt_keluar: TDateTimeField
      FieldName = 'dt_keluar'
    end
    object qRegisterDetailharga: TFloatField
      FieldName = 'harga'
      Required = True
    end
    object qRegisterDetailismaster: TStringField
      FieldName = 'ismaster'
      Required = True
      Size = 1
    end
    object qRegisterDetailid_item: TStringField
      FieldName = 'id_item'
      Size = 50
    end
    object qRegisterDetailqty: TFloatField
      FieldName = 'qty'
    end
    object qRegisterDetaildiskripsi: TStringField
      FieldName = 'diskripsi'
      Size = 255
    end
    object qRegisterDetailismoving: TStringField
      FieldName = 'ismoving'
      Size = 1
    end
    object qRegisterDetailtotal_tarif: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total_tarif'
      DisplayFormat = ',0'
      Calculated = True
    end
    object qRegisterDetailci_charge_psn: TFloatField
      FieldName = 'ci_charge_psn'
    end
    object qRegisterDetaildiskon: TFloatField
      FieldName = 'diskon'
    end
  end
  object dsRegisterDetail: TDataSource
    DataSet = qRegisterDetail
    Left = 332
    Top = 404
  end
  object qKamar: TZQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      'select a.*, b.tp_kamar as tipe'
      'from master.mkamar a'
      'left join master.tipe_kamar b on b.id_tp_kamar=a.id_tp_kamar'
      'where a.isdetail='#39'1'#39' and a.no_kamar=:no_kamar'
      'order by a.no_kamar asc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_kamar'
        ParamType = ptUnknown
      end>
    Left = 32
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_kamar'
        ParamType = ptUnknown
      end>
    object qKamarno_kamar: TStringField
      FieldName = 'no_kamar'
      Required = True
      Size = 10
    end
    object qKamarid_tp_kamar: TLargeintField
      FieldName = 'id_tp_kamar'
    end
    object qKamartarif: TFloatField
      FieldName = 'tarif'
      Required = True
      DisplayFormat = ',0'
    end
    object qKamarisdetail: TStringField
      FieldName = 'isdetail'
      Required = True
      Size = 1
    end
    object qKamarlvl: TIntegerField
      FieldName = 'lvl'
      Required = True
    end
    object qKamardiskripsi: TStringField
      FieldName = 'diskripsi'
      Size = 255
    end
    object qKamartotal_bed: TStringField
      FieldName = 'total_bed'
      Size = 100
    end
    object qKamardt_ins: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object qKamardt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
    object qKamarusr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 30
    end
    object qKamarusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object qKamaris_isi: TStringField
      FieldName = 'is_isi'
      Required = True
      Size = 1
    end
    object qKamarid_parent: TStringField
      FieldName = 'id_parent'
      Size = 10
    end
    object qKamarno_bed: TStringField
      FieldName = 'no_bed'
      Size = 10
    end
    object qKamartp_kamar: TStringField
      FieldName = 'tp_kamar'
      Size = 255
    end
    object qKamartipe: TStringField
      FieldName = 'tipe'
      Required = True
      Size = 10
    end
    object qKamartarif_traveloka: TFloatField
      FieldName = 'tarif_traveloka'
      Required = True
    end
    object qKamartarif_tiket_com: TFloatField
      FieldName = 'tarif_tiket_com'
      Required = True
    end
    object qKamartarif_pegi_pegi: TFloatField
      FieldName = 'tarif_pegi_pegi'
      Required = True
    end
    object qKamartarif_booking_com: TFloatField
      FieldName = 'tarif_booking_com'
      Required = True
    end
    object qKamartarif_phone: TFloatField
      FieldName = 'tarif_phone'
      Required = True
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = qKamar
    ScopeMappings = <>
    Left = 208
    Top = 272
  end
  object dsKamar: TDataSource
    DataSet = qKamar
    Left = 76
    Top = 260
  end
  object qDataTamu: TZQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      
        'select a.id_tamu, a.nama_tamu, a.jns_kel, a.alamat, a.telepon, a' +
        '.jenis_id, a.nomor_id, a.email'
      'from master.mtamu a')
    Params = <>
    Left = 336
    Top = 56
    object qDataTamunama_tamu: TStringField
      DisplayLabel = 'Nama Tamu'
      DisplayWidth = 50
      FieldName = 'nama_tamu'
      Required = True
      Size = 100
    end
    object qDataTamunomor_id: TStringField
      DisplayLabel = 'No. ID Card'
      DisplayWidth = 20
      FieldName = 'nomor_id'
      Size = 100
    end
    object qDataTamualamat: TStringField
      DisplayLabel = 'Alamat'
      DisplayWidth = 100
      FieldName = 'alamat'
      Size = 255
    end
    object qDataTamuid_tamu: TStringField
      FieldName = 'id_tamu'
      Required = True
      Visible = False
    end
    object qDataTamujns_kel: TStringField
      FieldName = 'jns_kel'
      Visible = False
      Size = 10
    end
    object qDataTamutelepon: TStringField
      FieldName = 'telepon'
      Visible = False
      Size = 50
    end
    object qDataTamujenis_id: TStringField
      FieldName = 'jenis_id'
      Visible = False
      Size = 50
    end
    object qDataTamuemail: TStringField
      FieldName = 'email'
      Visible = False
      Size = 100
    end
  end
  object dsDataTamu: TDataSource
    DataSet = qDataTamu
    Left = 380
    Top = 60
  end
  object qgenNo_Reg: TZReadOnlyQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      'select transaksi.fn_gen_reg_number()')
    Params = <>
    Left = 332
    Top = 24
    object qgenNo_Regfn_gen_reg_number: TMemoField
      FieldName = 'fn_gen_reg_number'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object sq_register: TZSequence
    Connection = DataModule1.zconHotel
    SequenceName = 'transaksi.sq_register'
    Left = 294
    Top = 26
  end
  object Gen_id_tamu: TZReadOnlyQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      'select master.fn_gen_id_tamu_baru()')
    Params = <>
    Left = 28
    Top = 24
    object Gen_id_tamufn_gen_id_tamu_baru: TMemoField
      FieldName = 'fn_gen_id_tamu_baru'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object qExec: TZQuery
    Connection = DataModule1.zconHotel
    Params = <>
    Left = 20
    Top = 73
  end
  object LookTamu: TwwLookupDialog
    Selected.Strings = (
      'nama_tamu'#9'50'#9'Nama Tamu'#9'F'
      'nomor_id'#9'20'#9'No. ID Card'#9'F'
      'alamat'#9'100'#9'Alamat'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWindow
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = qDataTamu
    Caption = 'Data Tamu'
    MaxWidth = 0
    MaxHeight = 360
    CharCase = ecNormal
    Left = 156
    Top = 49
  end
  object sq_register_detail: TZSequence
    Connection = DataModule1.zconHotel
    SequenceName = 'transaksi.sq_register_detail'
    Left = 246
    Top = 42
  end
  object frxdbqryDetail: TfrxDBDataset
    UserName = 'frxdbqryDetail'
    CloseDataSource = False
    FieldAliases.Strings = (
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
      'total_tarif=total_tarif')
    DataSet = qRegisterDetail
    BCDToCurrency = False
    Left = 310
    Top = 256
  end
  object MemInfo: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'logo'
        DataType = ftBlob
        Size = 10
      end
      item
        Name = 'nama_perusahaan'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'alamat_perusahaan'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'tlp_perusahaan'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'kota_perusahaan'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'email'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'judul'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'tgl_cetak'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'usr_cetak'
        DataType = ftString
        Size = 100
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
    Left = 342
    Top = 200
    object MemInfologo: TBlobField
      FieldName = 'logo'
      Size = 10
    end
    object MemInfonama_perusahaan: TStringField
      FieldName = 'nama_perusahaan'
      Size = 50
    end
    object MemInfoalamat_perusahaan: TStringField
      FieldName = 'alamat_perusahaan'
      Size = 100
    end
    object MemInfotlp_perusahaan: TStringField
      FieldName = 'tlp_perusahaan'
    end
    object MemInfokota_perusahaan: TStringField
      FieldName = 'kota_perusahaan'
    end
    object MemInfoemail: TStringField
      FieldName = 'email'
    end
    object MemInfojudul: TStringField
      FieldName = 'judul'
      Size = 30
    end
    object MemInfotgl_cetak: TStringField
      FieldName = 'tgl_cetak'
    end
    object MemInfousr_cetak: TStringField
      FieldName = 'usr_cetak'
      Size = 100
    end
  end
  object frxdbInfo: TfrxDBDataset
    UserName = 'frxdbInfo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'logo=logo'
      'nama_perusahaan=nama_perusahaan'
      'alamat_perusahaan=alamat_perusahaan'
      'tlp_perusahaan=tlp_perusahaan'
      'kota_perusahaan=kota_perusahaan'
      'email=email'
      'judul=judul'
      'tgl_cetak=tgl_cetak'
      'usr_cetak=usr_cetak')
    DataSet = MemInfo
    BCDToCurrency = False
    Left = 310
    Top = 200
  end
  object RepNota_A4: TfrxReport
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
    Left = 366
    Top = 251
    Datasets = <
      item
        DataSet = frxdbInfo
        DataSetName = 'frxdbInfo'
      end
      item
        DataSet = frxdbqryDetail
        DataSetName = 'frxdbqryDetail'
      end
      item
        DataSet = frxdbqryDisplay
        DataSetName = 'frxdbqryDisplay'
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
        Height = 257.008040000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 110.488250000000000000
          Width = 755.906000000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbInfo."judul"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Width = 94.488250000000000000
          Height = 75.590600000000000000
          DataField = 'logo'
          DataSet = frxdbInfo
          DataSetName = 'frxdbInfo'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 99.047310000000000000
          Width = 279.685220000000000000
          Height = 15.118120000000000000
          DataField = 'nama_perusahaan'
          DataSet = frxdbInfo
          DataSetName = 'frxdbInfo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbInfo."nama_perusahaan"]')
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
          DataSet = frxdbInfo
          DataSetName = 'frxdbInfo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frxdbInfo."alamat_perusahaan"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 99.047310000000000000
          Top = 48.133890000000000000
          Width = 279.685220000000000000
          Height = 15.118120000000000000
          DataField = 'kota_perusahaan'
          DataSet = frxdbInfo
          DataSetName = 'frxdbInfo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frxdbInfo."kota_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 99.023473150000000000
          Top = 30.236240000000000000
          Width = 279.685220000000000000
          Height = 15.118120000000000000
          DataField = 'tlp_perusahaan'
          DataSet = frxdbInfo
          DataSetName = 'frxdbInfo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frxdbInfo."tlp_perusahaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 133.165430000000000000
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
            '[frxdbqryDisplay."no_register"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 165.842610000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 169.078850000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 229.976500000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 233.212740000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 183.299320000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tgl. Transaksi')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 183.299320000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 202.196970000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nama Tamu')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 202.196970000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 183.299320000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbqryDisplay."dt_register"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 202.196970000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbqryDisplay."nama_tamu"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 408.189240000000000000
          Top = 184.417440000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tgl. Masuk')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 184.417440000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 184.417440000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd mmmm yyyy hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbqryDetail."dt_masuk"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 203.315090000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '-')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 408.189240000000000000
          Top = 203.315090000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tgl. Keluar')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 203.315090000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 238.110390000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbqryDetail."dt_keluar"] 12:00')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 157.063080000000000000
        Top = 559.370440000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 96.472480000000000000
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
          Top = 96.472480000000000000
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
          Top = 96.472480000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Color = clSilver
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbqryDisplay."nama_tamu"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoLblPageOfTotalPages: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 140.708720000000000000
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
        object MemoLine: TfrxMemoView
          AllowVectorExport = True
          Top = 136.929190000000000000
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
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 139.606370000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tgl. Cetak :')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 139.606370000000000000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Jombang, [frxdbInfo."tgl_cetak"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
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
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 96.472480000000000000
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
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 695.433520000000000000
          Top = 96.472480000000000000
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
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 96.472480000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Color = clSilver
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbInfo."usr_cetak"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
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
            'CUSTOMER :')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 464.882190000000000000
        Width = 755.906000000000000000
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 616.063390000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'JUMLAH DEPOSIT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 49.133890000000000000
          Width = 139.842610000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbqryDisplay."deposit"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 31.574830000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 34.811070000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 336.378170000000000000
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
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 34.015770000000000000
          Width = 120.944960000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Tgl. Transaksi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 154.960730000000000000
          Width = 245.669450000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Nomor Kamar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 487.559370000000000000
          Width = 128.504020000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Harga')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smDontShift
          Left = 616.063390000000000000
          Width = 139.842610000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
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
          Left = 400.630180000000000000
          Width = 86.929190000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Lamanya')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 385.512060000000000000
        Width = 755.906000000000000000
        DataSet = frxdbqryDetail
        DataSetName = 'frxdbqryDetail'
        RowCount = 0
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 154.960730000000000000
          Width = 245.669450000000000000
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
            '[frxdbqryDetail."diskripsi"],  [frxdbqryDetail."no_kamar"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd-mm-yyyy'
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
            '[frxdbqryDetail."dt_masuk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Width = 34.015770000000000000
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
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Width = 86.929190000000000000
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
            '[frxdbqryDetail."qty"] Hari')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
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
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbqryDetail."harga"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Width = 139.842610000000000000
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
            '[frxdbqryDetail."total_tarif"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxdbqryDisplay: TfrxDBDataset
    UserName = 'frxdbqryDisplay'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_register=id_register'
      'no_register=no_register'
      'id_trans=id_trans'
      'dt_register=dt_register'
      'keterangan=keterangan'
      'iscancel=iscancel'
      'ispost=ispost'
      'dt_ins=dt_ins'
      'dt_upd=dt_upd'
      'usr_ins=usr_ins'
      'usr_upd=usr_upd'
      'isclosed=isclosed'
      'jenis=jenis'
      'shift=shift'
      'no_antrian=no_antrian'
      'no_reservasi=no_reservasi'
      'nomor_id=nomor_id'
      'jns_id=jns_id'
      'tgl_lahir=tgl_lahir'
      'jns_kel=jns_kel'
      'alamat=alamat'
      'kota=kota'
      'state=state'
      'negara=negara'
      'kebangsaan=kebangsaan'
      'telepon=telepon'
      'no_hp=no_hp'
      'email=email'
      'nama_tamu=nama_tamu'
      'nama_tamu2=nama_tamu2'
      'nama_tamu3=nama_tamu3'
      'sub_total=sub_total'
      'deposit=deposit'
      'total=total'
      'iscekout=iscekout'
      'id_tp_kamar=id_tp_kamar')
    DataSet = qRegister
    BCDToCurrency = False
    Left = 302
    Top = 304
  end
  object EditDataTamu: TZQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      
        'select a.id_tamu, a.nama_tamu, a.jns_kel, a.alamat, a.telepon, a' +
        '.jenis_id, a.nomor_id, a.email'
      'from master.mtamu a'
      'where a.nama_tamu=:nama_tamu')
    Params = <
      item
        DataType = ftUnknown
        Name = 'nama_tamu'
        ParamType = ptUnknown
      end>
    Left = 248
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nama_tamu'
        ParamType = ptUnknown
      end>
    object StringField1: TStringField
      DisplayLabel = 'Nama Tamu'
      DisplayWidth = 50
      FieldName = 'nama_tamu'
      Required = True
      Size = 100
    end
    object StringField2: TStringField
      DisplayLabel = 'No. ID Card'
      DisplayWidth = 20
      FieldName = 'nomor_id'
      Size = 100
    end
    object StringField3: TStringField
      DisplayLabel = 'Alamat'
      DisplayWidth = 100
      FieldName = 'alamat'
      Size = 255
    end
    object StringField4: TStringField
      FieldName = 'id_tamu'
      Required = True
      Visible = False
    end
    object StringField5: TStringField
      FieldName = 'jns_kel'
      Visible = False
      Size = 10
    end
    object StringField6: TStringField
      FieldName = 'telepon'
      Visible = False
      Size = 50
    end
    object StringField7: TStringField
      FieldName = 'jenis_id'
      Visible = False
      Size = 50
    end
    object StringField8: TStringField
      FieldName = 'email'
      Visible = False
      Size = 100
    end
  end
  object dsEditDataTamu: TDataSource
    DataSet = EditDataTamu
    Left = 292
    Top = 100
  end
  object qReservasi: TZReadOnlyQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      'select a.diskripsi'
      'from master.mreservasi a')
    Params = <>
    Left = 22
    Top = 152
    object qReservasidiskripsi: TStringField
      FieldName = 'diskripsi'
      ReadOnly = True
      Size = 255
    end
  end
  object dsReservasi: TDataSource
    DataSet = qReservasi
    Left = 22
    Top = 200
  end
  object qCeckTime: TZReadOnlyQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      'select master.fn_gen_charge_ci() as charge_time')
    Params = <>
    Left = 86
    Top = 32
    object qCeckTimecharge_time: TFloatField
      FieldName = 'charge_time'
      ReadOnly = True
    end
  end
end
