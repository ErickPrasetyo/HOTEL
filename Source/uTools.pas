unit uTools;

interface

uses
  System.SysUtils, Data.Win.ADODB, ActiveX, ComObj, Variants, StdCtrls, Forms,
  Classes, Vcl.ExtCtrls, Vcl.Graphics, AdvGlassButton, Windows, uDM;

const
  C_Default_Pass = 'kzsubit';

  C_ROOM_PNL_WIDTH = 100;
  C_ROOM_PNL_HEIGHT = 30;
  C_ROOM_PNL_INTERVAL_X = 10;
  C_ROOM_PNL_INTERVAL_Y = 10;

type

  EWorkForm = (wfEmployee, wfDepartment, wfAttendance, wfUser);

  rec_credential = record
    cred_name: string[128];
    credt_pass: string[128];
    credt_acc_lvl: integer;
  end;

  rec_room = record
    Floor: string;
    RoomNr: string;
    RoomTypeId: integer;
    RoomRate: Single;
    IsOccupied: Integer;
  end;

  TRoom = class
    public
      RoomData: rec_room;
  end;

  TRooms = class
  public
    RoomList,
    RoomDisplayList: TStringList;
    function GetNrOfRooms: Integer;
    constructor Create;
    destructor Destroy; override;
    procedure GenerateDisplayRoom(aParent: TAdvGlassButton);
  end;

  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);


function isWindowsFound(ClassName: string): Boolean;
function isDeptItemWindowsFound(ClassName: string; kdDept: TDept): Boolean;
function isBillItemWindowsFound(ClassName: string; kdDept: TDept): Boolean;

function GetStatusCodeStr(statusCode:integer) : string;
function  CheckPing(const Address:string;Retries,BufferSize:Word): Integer;
procedure  Ping(const Address:string;Retries,BufferSize:Word; aMemo: TMemo);
procedure RestartAdoConConnection(aConn: TADOConnection);
procedure ExportRecordsetToMSExcel(DestName: string; Data: _Recordset);
function FormatTimeAccess(origTime: TTime): string;
function GetStrDaysBetweenDates(startDate, endDate: TDateTime): string;

procedure Delay(msec: DWORD);
//uses

// functs decl

implementation

uses
  DateUtils;

// functs impl


function GetStrDaysBetweenDates(startDate, endDate: TDateTime): string;
begin
  try
    result := FormatFloat('0', DaySpan(startDate, endDate));
  except
    result := '0';
  end;
end;

procedure Delay(msec: DWORD);
var start: DWORD;
begin
  start:= GetTickCount;
  while (GetTickCount-start<msec) do
    Application.ProcessMessages
end;

function isWindowsFound(ClassName: string): Boolean;
var i: Integer;
begin
  Result:= False;
  for i:= 0 to Application.ComponentCount-1 do
    if Application.Components[i].ClassNameIs(ClassName) then begin
      TForm(Application.Components[i]).BringToFront;
      Result:= True;
      Break
    end
end;

function isDeptItemWindowsFound(ClassName: string; kdDept: TDept): Boolean;
var i: Integer;
begin
  Result:= False;
  for i:= 0 to Application.ComponentCount-1 do
    if Application.Components[i].ClassNameIs(ClassName) then begin

      if (Application.Components[i] as TForm).Tag = Ord(kdDept) then begin
        TForm(Application.Components[i]).BringToFront;
        Result:= True;
        Break;
      end;

    end
end;

function isBillItemWindowsFound(ClassName: string; kdDept: TDept): Boolean;
var i: Integer;
begin
  Result:= False;
  for i:= 0 to Application.ComponentCount-1 do
    if Application.Components[i].ClassNameIs(ClassName) then begin

      if (Application.Components[i] as TForm).Tag = (Ord(kdDept)+100) then begin
        TForm(Application.Components[i]).BringToFront;
        Result:= True;
        Break;
      end;

    end
end;

function FormatTimeAccess(origTime: TTime): string;
begin
  result := Trim(StringReplace(TimeToStr(origTime), ':', '.',
                     [rfReplaceAll, rfIgnoreCase]));
end;

procedure ExportRecordsetToMSExcel(DestName: string; Data: _Recordset);
var
  ovExcelApp: OleVariant;
  ovExcelWorkbook: OleVariant;
  ovWS: OleVariant;
  ovRange: OleVariant;
  i: Integer;
begin
  ovExcelApp := CreateOleObject('Excel.Application'); //If Excel isnt installed will raise an exception
  try
    ovExcelWorkbook   := ovExcelApp.WorkBooks.Add;
    ovWS := ovExcelWorkbook.Worksheets.Item[1]; // go to first worksheet
    ovWS.Activate;

    // Write column titles
    for i := 0 to Data.Fields.Count-1 do begin
      ovWS.cells[1,i+1].value := Data.Fields[i].Name;
    end;

    ovWS.Select;
    ovRange := ovWS.Range['A2', 'A2']; //go to first cell
    ovRange.Resize[Data.RecordCount, Data.Fields.Count];
    ovRange.CopyFromRecordset(Data, Data.RecordCount, Data.Fields.Count); //this copy the entire recordset to the selected range in excel

    ovWS.Columns['E'].NumberFormat := AnsiString('dd mmm yyyy');//('m/d/yyyy');
    ovWS.Columns['F'].NumberFormat := AnsiString('hh:mm:ss');

    ovWS.Columns['A'].ColumnWidth := 0;
    ovWS.Columns['B'].ColumnWidth := 15;
    ovWS.Columns['C'].ColumnWidth := 50;
    ovWS.Columns['D'].ColumnWidth := 15;
    ovWS.Columns['E'].ColumnWidth := 15;
    ovWS.Columns['F'].ColumnWidth := 15;
    ovWS.Columns['G'].ColumnWidth := 15;

    //WS.Columns['G'].HorizontalAlignment := xlCenter;

    ovWS.SaveAs(DestName, 1, '', '', False, False);
  finally
//    ovExcelWorkbook.Close(SaveChanges := False);
    ovExcelWorkbook.Close;
    ovWS := Unassigned;
    ovExcelWorkbook := Unassigned;
    ovExcelApp := Unassigned;
  end;
end;


function GetStatusCodeStr(statusCode:integer) : string;
begin
  case statusCode of
    0     : Result:='Success';
    11001 : Result:='Buffer Too Small';
    11002 : Result:='Destination Net Unreachable';
    11003 : Result:='Destination Host Unreachable';
    11004 : Result:='Destination Protocol Unreachable';
    11005 : Result:='Destination Port Unreachable';
    11006 : Result:='No Resources';
    11007 : Result:='Bad Option';
    11008 : Result:='Hardware Error';
    11009 : Result:='Packet Too Big';
    11010 : Result:='Request Timed Out';
    11011 : Result:='Bad Request';
    11012 : Result:='Bad Route';
    11013 : Result:='TimeToLive Expired Transit';
    11014 : Result:='TimeToLive Expired Reassembly';
    11015 : Result:='Parameter Problem';
    11016 : Result:='Source Quench';
    11017 : Result:='Option Too Big';
    11018 : Result:='Bad Destination';
    11032 : Result:='Negotiating IPSEC';
    11050 : Result:='General Failure'
    else
    result:='Unknow';
  end;
end;


function CheckPing(const Address:string;Retries,BufferSize:Word): Integer;
var
  FSWbemLocator : OLEVariant;
  FWMIService   : OLEVariant;
  FWbemObjectSet: OLEVariant;
  FWbemObject   : OLEVariant;
  oEnum         : IEnumvariant;
  iValue        : LongWord;
  i             : Integer;

  PacketsReceived : Integer;
  Minimum         : Integer;
  Maximum         : Integer;
  Average         : Integer;
begin;

  Result := 0;

  PacketsReceived:=0;
  Minimum        :=0;
  Maximum        :=0;
  Average        :=0;
  FSWbemLocator := CreateOleObject('WbemScripting.SWbemLocator');
  FWMIService   := FSWbemLocator.ConnectServer('localhost', 'root\CIMV2', '', '');
  //FWMIService   := FSWbemLocator.ConnectServer('192.168.52.130', 'root\CIMV2', 'user', 'password');
  for i := 0 to Retries-1 do
  begin
    FWbemObjectSet:= FWMIService.ExecQuery(Format('SELECT * FROM Win32_PingStatus where Address=%s AND BufferSize=%d',[QuotedStr(Address),BufferSize]),'WQL',0);
    oEnum         := IUnknown(FWbemObjectSet._NewEnum) as IEnumVariant;
    if oEnum.Next(1, FWbemObject, iValue) = 0 then
    begin
      if FWbemObject.StatusCode=0 then
      begin
        Inc(PacketsReceived);

        if FWbemObject.ResponseTime>Maximum then
        Maximum:=FWbemObject.ResponseTime;

        if Minimum=0 then
        Minimum:=Maximum;

        if FWbemObject.ResponseTime<Minimum then
        Minimum:=FWbemObject.ResponseTime;

        Average:=Average+FWbemObject.ResponseTime;
      end;

      Sleep(1000);
    end;
    FWbemObject:=Unassigned;
    FWbemObjectSet:=Unassigned;
    //Sleep(500);
  end;

  //Packets: Sent = %d, Received = %d, Lost = %d (%d%% loss),',[Retries,PacketsReceived,
  //Retries-PacketsReceived,Round((Retries-PacketsReceived)*100/Retries)]));

  Result := Round((Retries-PacketsReceived)*100/Retries);

end;


//Address param can be either the computer name (wxyz1234), IPv4 address (192.168.177.124), or IPv6 address (2010:836B:4179::836B:4179).
procedure  Ping(const Address:string; Retries, BufferSize:Word; aMemo: TMemo);
var
  FSWbemLocator : OLEVariant;
  FWMIService   : OLEVariant;
  FWbemObjectSet: OLEVariant;
  FWbemObject   : OLEVariant;
  oEnum         : IEnumvariant;
  iValue        : LongWord;
  i             : Integer;

  PacketsReceived : Integer;
  Minimum         : Integer;
  Maximum         : Integer;
  Average         : Integer;
begin;
  PacketsReceived:=0;
  Minimum        :=0;
  Maximum        :=0;
  Average        :=0;
  //Writeln('');
  aMemo.Lines.Clear;
  //Writeln(Format('Pinging %s with %d bytes of data:',[Address,BufferSize]));
  aMemo.Lines.Add(Format('Pinging %s with %d bytes of data:',[Address,BufferSize]));
  FSWbemLocator := CreateOleObject('WbemScripting.SWbemLocator');
  FWMIService   := FSWbemLocator.ConnectServer('localhost', 'root\CIMV2', '', '');
  //FWMIService   := FSWbemLocator.ConnectServer('192.168.52.130', 'root\CIMV2', 'user', 'password');
  for i := 0 to Retries-1 do
  begin
    FWbemObjectSet:= FWMIService.ExecQuery(Format('SELECT * FROM Win32_PingStatus where Address=%s AND BufferSize=%d',[QuotedStr(Address),BufferSize]),'WQL',0);
    oEnum         := IUnknown(FWbemObjectSet._NewEnum) as IEnumVariant;
    if oEnum.Next(1, FWbemObject, iValue) = 0 then
    begin
      if FWbemObject.StatusCode=0 then
      begin
        if FWbemObject.ResponseTime>0 then
          //Writeln(Format('Reply from %s: bytes=%s time=%sms TTL=%s',[FWbemObject.ProtocolAddress,FWbemObject.ReplySize,FWbemObject.ResponseTime,FWbemObject.TimeToLive]))
          aMemo.Lines.Add(Format('Reply from %s: bytes=%s time=%sms TTL=%s',[FWbemObject.ProtocolAddress,FWbemObject.ReplySize,FWbemObject.ResponseTime,FWbemObject.TimeToLive]))
        else
          //Writeln(Format('Reply from %s: bytes=%s time=<1ms TTL=%s',[FWbemObject.ProtocolAddress,FWbemObject.ReplySize,FWbemObject.TimeToLive]));
          aMemo.Lines.Add(Format('Reply from %s: bytes=%s time=<1ms TTL=%s',[FWbemObject.ProtocolAddress,FWbemObject.ReplySize,FWbemObject.TimeToLive]));

        Inc(PacketsReceived);

        if FWbemObject.ResponseTime>Maximum then
        Maximum:=FWbemObject.ResponseTime;

        if Minimum=0 then
        Minimum:=Maximum;

        if FWbemObject.ResponseTime<Minimum then
        Minimum:=FWbemObject.ResponseTime;

        Average:=Average+FWbemObject.ResponseTime;
      end
      else
      if not VarIsNull(FWbemObject.StatusCode) then
        //Writeln(Format('Reply from %s: %s',[FWbemObject.ProtocolAddress,GetStatusCodeStr(FWbemObject.StatusCode)]))
        aMemo.Lines.Add(Format('Reply from %s: %s',[FWbemObject.ProtocolAddress,GetStatusCodeStr(FWbemObject.StatusCode)]))
      else
        //Writeln(Format('Reply from %s: %s',[Address,'Error processing request']));
        aMemo.Lines.Add(Format('Reply from %s: %s',[Address,'Error processing request']));

      Sleep(1000);
    end;
    FWbemObject:=Unassigned;
    FWbemObjectSet:=Unassigned;
    //Sleep(500);
  end;

  //Writeln('');
  aMemo.Lines.Add('');
  //Writeln(Format('Ping statistics for %s:',[Address]));
  aMemo.Lines.Add(Format('Ping statistics for %s:',[Address]));
  //Writeln(Format('    Packets: Sent = %d, Received = %d, Lost = %d (%d%% loss),',[Retries,PacketsReceived,Retries-PacketsReceived,Round((Retries-PacketsReceived)*100/Retries)]));
  aMemo.Lines.Add(Format('    Packets: Sent = %d, Received = %d, Lost = %d (%d%% loss),',[Retries,PacketsReceived,Retries-PacketsReceived,Round((Retries-PacketsReceived)*100/Retries)]));
  if PacketsReceived>0 then
  begin
   //Writeln('Approximate round trip times in milli-seconds:');
   aMemo.Lines.Add('Approximate round trip times in milli-seconds:');
   //Writeln(Format('    Minimum = %dms, Maximum = %dms, Average = %dms',[Minimum,Maximum,Round(Average/PacketsReceived)]));
   aMemo.Lines.Add(Format('    Minimum = %dms, Maximum = %dms, Average = %dms',[Minimum,Maximum,Round(Average/PacketsReceived)]));
  end;
end;


procedure RestartAdoConConnection(aConn: TADOConnection);
begin
  aConn.Close;
  aConn.Connected := False;
  Sleep(10);
  aConn.Connected := True;
end;

{ TRooms }

constructor TRooms.Create;
begin
  RoomList := TStringList.Create;
  RoomDisplayList := TStringList.Create;
end;

destructor TRooms.Destroy;
var
  i: Integer;
  anObj: TObject;
begin

  for I := RoomList.Count-1 downto 0 do begin
      anObj := RoomList.Objects[i];
      FreeAndNil(anObj);
  end;

  FreeAndNil(RoomList);

  inherited;

end;

procedure TRooms.GenerateDisplayRoom(aParent: TAdvGlassButton);
var
  aPnl: TAdvGlassButton;
  i: Integer;
  aRoom: TRoom;
  NextLeft, NextTop, NumOfBtnRow: Integer;
begin

  NextLeft := 0;
  NextTop := 0;
  NumOfBtnRow := 1;

  for I := 0 to RoomList.Count -1 do begin

    aRoom := RoomList.Objects[i] as TRoom;

    NextLeft := NextLeft + C_ROOM_PNL_INTERVAL_X;
    if (NextLeft + C_ROOM_PNL_WIDTH) >= aParent.Width then begin
      NextLeft := C_ROOM_PNL_INTERVAL_X;
      Inc(NumOfBtnRow);
    end;

    if NumOfBtnRow < 1 then
      NextTop := C_ROOM_PNL_INTERVAL_Y
    else
      NextTop := (C_ROOM_PNL_INTERVAL_Y * NumOfBtnRow) + (C_ROOM_PNL_HEIGHT * (NumOfBtnRow-1));

    aPnl := TAdvGlassButton.Create(aParent);
    aPnl.Parent := aParent;
    aPnl.Width := C_ROOM_PNL_WIDTH;
    aPnl.Height := C_ROOM_PNL_HEIGHT;
    aPnl.Caption := Trim(aRoom.RoomData.RoomNr);
    aPnl.Left := NextLeft;
    aPnl.Top := NextTop;
    aPnl.InnerBorderColor:= clDefault;
    apnl.OuterBorderColor:= clDefault;
    //aPnl.Tag := StrToInt(Trim(aRoom.RoomData.RoomNr));
    aPnl.Hint := 'X: ' + IntToStr(aPnl.Left) + ', Y: ' + IntToStr(aPnl.Top);
    aPnl.ShowHint := True;

    if aRoom.RoomData.IsOccupied = 0 then begin
      aPnl.BackColor := clGreen;
    end
    else
    if aRoom.RoomData.IsOccupied = 1 then begin
     aPnl.BackColor := clRed;
    end
    else
    if aRoom.RoomData.IsOccupied = 2 then begin
     aPnl.BackColor := clYellow;
    end
    else
    if aRoom.RoomData.IsOccupied = 3 then begin
     aPnl.BackColor := clPurple;
    end;

    aPnl.Font.Color := clBlack;
    aPnl.Font.Style := [fsBold];
    aPnl.Font.Size := 12;

    //add panel to list here
    RoomDisplayList.AddObject(aPnl.Caption, aPnl);

    NextLeft := NextLeft + C_ROOM_PNL_WIDTH;

    aPnl := nil;

  end;

end;

function TRooms.GetNrOfRooms: Integer;
begin
  if RoomList <> nil then
    Result := RoomList.Count
  else
    Result := 0;
end;

end.
