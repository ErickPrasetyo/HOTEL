object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 317
  Width = 436
  object zconHotel: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=GET_ACP')
    HostName = 'localhost'
    Port = 5432
    Database = 'db_cempaka'
    User = 'ideas'
    Password = 'ideas'
    Protocol = 'postgresql-9'
    Left = 32
    Top = 16
  end
  object cxstylerepGlobal: TcxStyleRepository
    Left = 127
    Top = 24
    PixelsPerInch = 96
    object cxstyl1: TcxStyle
      AssignedValues = [svColor]
      Color = 16710899
    end
    object cxstyl2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxstylSel: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object vSysDate: TZReadOnlyQuery
    Connection = zconHotel
    SQL.Strings = (
      
        'select cast(current_timestamp as timestamp without time zone) as' +
        ' dt_server')
    Params = <>
    Left = 29
    Top = 70
    object vSysDatedt_server: TDateTimeField
      FieldName = 'dt_server'
      ReadOnly = True
    end
  end
  object zroqryGetNoRegByRoomNo: TZReadOnlyQuery
    Connection = zconHotel
    SQL.Strings = (
      'SELECT a.no_register, a.id_register, a.nama_tamu, b.no_kamar'
      'FROM transaksi.register_tamu a'
      
        'LEFT JOIN transaksi.register_tamu_detail b on b.id_register=a.id' +
        '_register'#9
      'WHERE b.no_kamar=:pno_room and a.iscancel='#39'0'#39' and a.iscekout='#39'0'#39)
    Params = <
      item
        DataType = ftUnknown
        Name = 'pno_room'
        ParamType = ptUnknown
      end>
    Left = 328
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pno_room'
        ParamType = ptUnknown
      end>
    object strngfldGetNoRegByRoomNono_register: TStringField
      FieldName = 'no_register'
      ReadOnly = True
    end
    object lrgntfldGetNoRegByRoomNoid_register: TLargeintField
      FieldName = 'id_register'
      ReadOnly = True
    end
    object strngfldGetNoRegByRoomNono_kamar: TStringField
      FieldName = 'no_kamar'
      ReadOnly = True
      Size = 10
    end
    object strngfldGetNoRegByRoomNonama_tamu: TStringField
      FieldName = 'nama_tamu'
      ReadOnly = True
      Size = 255
    end
  end
  object zqryExec: TZQuery
    Connection = zconHotel
    Params = <>
    Left = 20
    Top = 240
  end
  object zqryReq: TZQuery
    Connection = zconHotel
    Params = <>
    Left = 76
    Top = 240
  end
  object qryShift: TZQuery
    Connection = zconHotel
    SQL.Strings = (
      'select master.fn_gen_shift() as shift_server')
    Params = <>
    Left = 328
    Top = 232
    object intgrfldShiftshift_server: TIntegerField
      FieldName = 'shift_server'
      ReadOnly = True
    end
  end
  object qPerusahaan: TZReadOnlyQuery
    Connection = zconHotel
    SQL.Strings = (
      'select perusahaan, alamat, kota, telepon, email, cek_out_time'
      'from master.perusahaan')
    Params = <>
    Left = 304
    Top = 60
    object strngfldPerusahaanperusahaan: TStringField
      FieldName = 'perusahaan'
      ReadOnly = True
      Size = 100
    end
    object strngfldPerusahaanalamat: TStringField
      FieldName = 'alamat'
      ReadOnly = True
      Size = 100
    end
    object strngfldPerusahaankota: TStringField
      FieldName = 'kota'
      ReadOnly = True
      Size = 100
    end
    object strngfldPerusahaantelepon: TStringField
      FieldName = 'telepon'
      ReadOnly = True
      Size = 100
    end
    object strngfldPerusahaanemail: TStringField
      FieldName = 'email'
      ReadOnly = True
      Size = 100
    end
    object tmfldPerusahaancek_out_time: TTimeField
      FieldName = 'cek_out_time'
      ReadOnly = True
    end
  end
  object zqryRoomNfo: TZQuery
    Connection = zconHotel
    SQL.Strings = (
      'SELECT * FROM master.mkamar')
    Params = <>
    Left = 188
    Top = 240
  end
  object vUser: TZReadOnlyQuery
    Connection = zconHotel
    Params = <>
    Left = 40
    Top = 160
  end
  object vUserMenu: TZReadOnlyQuery
    Connection = zconHotel
    SQL.Strings = (
      
        'select a.vuser, b.menu_name, b.menu_caption, b.tag, b.isbrowse, ' +
        'b.isinsert, b.isedit, b.isdelete'
      'from master.vuser a, master.vuser_menu b'
      'where a.vuser=:vuser1 and a.vuser=b.vuser')
    Params = <
      item
        DataType = ftUnknown
        Name = 'vuser1'
        ParamType = ptUnknown
      end>
    Left = 96
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vuser1'
        ParamType = ptUnknown
      end>
    object strngfldUserMenuvuser: TStringField
      FieldName = 'vuser'
      ReadOnly = True
      Size = 30
    end
    object strngfldUserMenumenu_name: TStringField
      FieldName = 'menu_name'
      ReadOnly = True
      Size = 50
    end
    object strngfldUserMenumenu_caption: TStringField
      FieldName = 'menu_caption'
      ReadOnly = True
      Size = 50
    end
    object intgrfldUserMenutag: TIntegerField
      FieldName = 'tag'
      ReadOnly = True
    end
    object strngfldUserMenuisbrowse: TStringField
      FieldName = 'isbrowse'
      ReadOnly = True
      Size = 1
    end
    object strngfldUserMenuisinsert: TStringField
      FieldName = 'isinsert'
      ReadOnly = True
      Size = 1
    end
    object strngfldUserMenuisedit: TStringField
      FieldName = 'isedit'
      ReadOnly = True
      Size = 1
    end
    object strngfldUserMenuisdelete: TStringField
      FieldName = 'isdelete'
      ReadOnly = True
      Size = 1
    end
  end
  object vAdmin: TZReadOnlyQuery
    Connection = zconHotel
    Params = <>
    Left = 152
    Top = 168
  end
  object qAccess: TZReadOnlyQuery
    Connection = zconHotel
    SQL.Strings = (
      'select isbrowse, isinsert, isedit, isdelete, isprint, isexport'
      'from master.vuser_menu'
      'where vuser=:usr and tag=:tag')
    Params = <
      item
        DataType = ftUnknown
        Name = 'usr'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tag'
        ParamType = ptUnknown
      end>
    Left = 232
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usr'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tag'
        ParamType = ptUnknown
      end>
    object strngfldAccessisbrowse: TStringField
      FieldName = 'isbrowse'
      ReadOnly = True
      Size = 1
    end
    object strngfldAccessisinsert: TStringField
      FieldName = 'isinsert'
      ReadOnly = True
      Size = 1
    end
    object strngfldAccessisedit: TStringField
      FieldName = 'isedit'
      ReadOnly = True
      Size = 1
    end
    object strngfldAccessisdelete: TStringField
      FieldName = 'isdelete'
      ReadOnly = True
      Size = 1
    end
    object strngfldAccessisprint: TStringField
      FieldName = 'isprint'
      ReadOnly = True
      Size = 1
    end
    object strngfldAccessisexport: TStringField
      FieldName = 'isexport'
      ReadOnly = True
      Size = 1
    end
  end
  object zqryTrans: TZQuery
    Connection = zconHotel
    Params = <>
    Left = 212
    Top = 24
  end
  object qPasswd: TZQuery
    Connection = zconHotel
    Params = <>
    Left = 246
    Top = 245
  end
end
