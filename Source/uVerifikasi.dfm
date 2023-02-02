object frmVerifikasi: TfrmVerifikasi
  Left = 0
  Top = 0
  Caption = 'Verifikasi Billing Tamu'
  ClientHeight = 389
  ClientWidth = 686
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 686
    Height = 389
    Align = alClient
    AutoSize = True
    BevelOuter = bvNone
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 648
    object Label1: TLabel
      Left = 24
      Top = 18
      Width = 94
      Height = 16
      Caption = 'Nama Tamu    :'
    end
    object Label2: TLabel
      Left = 24
      Top = 45
      Width = 94
      Height = 16
      Caption = 'No. Kamar      :'
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 74
      Width = 665
      Height = 257
      Caption = 'Catatan Billing'
      TabOrder = 0
      object cxGrid1: TcxGrid
        Left = 16
        Top = 24
        Width = 641
        Height = 217
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsGetBill
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0'
              Kind = skSum
              Column = cxGrid1DBTableView1Column4
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = 'DESKRIPSI'
            DataBinding.FieldName = 'diskripsi'
            HeaderAlignmentHorz = taCenter
            Width = 199
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            Caption = 'QTY'
            DataBinding.FieldName = 'qty'
            HeaderAlignmentHorz = taCenter
            Width = 42
          end
          object cxGrid1DBTableView1Column3: TcxGridDBColumn
            Caption = 'HARGA'
            DataBinding.FieldName = 'harga'
            HeaderAlignmentHorz = taCenter
            Width = 103
          end
          object cxGrid1DBTableView1Column5: TcxGridDBColumn
            Caption = 'CHARGE'
            DataBinding.FieldName = 'charge_rp'
            HeaderAlignmentHorz = taCenter
            Width = 91
          end
          object cxGrid1DBTableView1Column6: TcxGridDBColumn
            Caption = 'DISKON'
            DataBinding.FieldName = 'diskon'
            Width = 101
          end
          object cxGrid1DBTableView1Column4: TcxGridDBColumn
            Caption = 'SUB TOTAL'
            DataBinding.FieldName = 'sub_total'
            HeaderAlignmentHorz = taCenter
            Width = 99
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object btnClose: TAdvGlassButton
      Left = 533
      Top = 344
      Width = 100
      Height = 32
      BackColor = clRed
      Caption = 'Close'
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
      TabOrder = 1
      Version = '1.3.0.2'
      OnClick = btnCloseClick
    end
    object dbLabelNamaTamu: TcxDBLabel
      Left = 136
      Top = 16
      Height = 21
      Width = 313
    end
    object dbLabelNoKamar: TcxDBLabel
      Left = 136
      Top = 43
      Height = 21
      Width = 313
    end
  end
  object qGetBill: TZReadOnlyQuery
    Connection = DataModule1.zconHotel
    SQL.Strings = (
      'select * from transaksi.fn_get_detail_bill (:no_reg)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_reg'
        ParamType = ptUnknown
      end>
    Left = 414
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_reg'
        ParamType = ptUnknown
      end>
    object qGetBilldiskripsi: TMemoField
      FieldName = 'diskripsi'
      ReadOnly = True
      BlobType = ftMemo
    end
    object qGetBillqty: TFloatField
      FieldName = 'qty'
      ReadOnly = True
    end
    object qGetBillharga: TFloatField
      FieldName = 'harga'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object qGetBillcharge_rp: TFloatField
      FieldName = 'charge_rp'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object qGetBillsub_total: TFloatField
      FieldName = 'sub_total'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object qGetBilldiskon: TFloatField
      FieldName = 'diskon'
      ReadOnly = True
      DisplayFormat = ',0'
    end
  end
  object dsGetBill: TDataSource
    DataSet = qGetBill
    Left = 448
    Top = 16
  end
end
