object frmPgTest: TfrmPgTest
  Left = 0
  Top = 0
  Caption = 'PostgreSql Test Area'
  ClientHeight = 660
  ClientWidth = 1009
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 672
    Top = 8
    Width = 321
    Height = 65
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cxDBTreeList1: TcxDBTreeList
    Left = 16
    Top = 488
    Width = 713
    Height = 153
    Bands = <
      item
        Caption.Text = 'Kolom 1'
      end>
    DataController.DataSource = DataSource1
    DataController.ParentField = 'id_parent'
    DataController.KeyField = 'no_kamar'
    Navigator.Buttons.CustomButtons = <>
    RootValue = -1
    TabOrder = 1
    object cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn
      Caption.Text = 'Room Number'
      DataBinding.FieldName = 'no_kamar'
      Width = 132
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1cxDBTreeListColumn6: TcxDBTreeListColumn
      Caption.Text = 'Room Type'
      DataBinding.FieldName = 'id_tp_kamar'
      Width = 100
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn
      Caption.Text = 'Description'
      DataBinding.FieldName = 'diskripsi'
      Width = 100
      Position.ColIndex = 2
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1cxDBTreeListColumn3: TcxDBTreeListColumn
      Caption.Text = 'Beds'
      DataBinding.FieldName = 'total_bed'
      Width = 52
      Position.ColIndex = 3
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1cxDBTreeListColumn4: TcxDBTreeListColumn
      Caption.Text = 'Rate'
      DataBinding.FieldName = 'tarif'
      Width = 100
      Position.ColIndex = 4
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1cxDBTreeListColumn5: TcxDBTreeListColumn
      PropertiesClassName = 'TcxCheckBoxProperties'
      Caption.Text = 'Detail'
      DataBinding.FieldName = 'isdetail'
      Width = 100
      Position.ColIndex = 5
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
  end
  object btnRunTest: TBitBtn
    Left = 368
    Top = 24
    Width = 75
    Height = 25
    Caption = 'btnRunTest'
    TabOrder = 2
    OnClick = btnRunTestClick
  end
  object cxgrd1: TcxGrid
    Left = 16
    Top = 96
    Width = 985
    Height = 369
    TabOrder = 3
    object cxgrd1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxgrdbclmncxgrd1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'no_kamar'
        Width = 266
      end
      object cxgrdbclmncxgrd1DBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'id_parent'
        Width = 239
      end
      object cxgrdbclmncxgrd1DBTableView1Column3: TcxGridDBColumn
        DataBinding.FieldName = 'diskripsi'
        Width = 277
      end
    end
    object cxgrdlvlGrid1Level1: TcxGridLevel
      GridView = cxgrd1DBTableView1
    end
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=GET_ACP')
    Connected = True
    HostName = '194.59.165.144'
    Port = 1927
    Database = 'db_hmis'
    User = 'postgres'
    Password = '9@WWjVr&'
    Protocol = 'postgresql-9'
    Left = 32
    Top = 16
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM master.mkamar;')
    Params = <>
    Left = 112
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 176
    Top = 16
  end
end
