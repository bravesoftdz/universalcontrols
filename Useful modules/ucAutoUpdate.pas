// ������ - 29.12.2011
unit ucAutoUpdate;
{$include ..\delphi_ver.inc}

interface

uses
  Windows, ShellAPI, SysUtils, StrUtils, Classes,
  inifiles, 
{$IFDEF DELPHI_2009_UP}
  ucDialogs,
{$ELSE}
  Dialogs,
{$ENDIF}
  ucFileSystem, ucTypes;

  procedure CheckUpdates;
  procedure UpdateFromStream(Stream: TMemoryStream; CmdLine: string = '');

implementation

const
  UpdateIni = 'Update.ini';

function ExeName: string;
begin
  Result := ParamStr(0);
end;

procedure UpdateFromStream(Stream: TMemoryStream; CmdLine: string = '');
//var si: STARTUPINFO;
//    pi: PROCESS_INFORMATION;
begin
  //---���������� �����---
  try
    if FileExists(ExeName+'.bak') then DeleteFile(ExeName+'.bak');
    RenameFile(ExeName, ExeName+'.bak');
    Stream.SaveToFile(ExeName);
  except
  end;
  ShellExecute(0, 'open', PChar(ExeName), PChar(CmdLine), nil, SW_NORMAL);
//  CreateProcess(PChar(ExeName), PChar(CmdLine), nil, nil, true,
//                CREATE_DEFAULT_ERROR_MODE, nil, nil, si, pi);

  PostQuitMessage(0); // ������ - Application.Terminate;
  halt;
end;

procedure CheckUpdates;

  function GetComputerName: string;
  var buffer: array[0..MAX_COMPUTERNAME_LENGTH + 1] of Char;
      Size: Cardinal;
  begin
    Size := MAX_COMPUTERNAME_LENGTH + 1;
    Windows.GetComputerName(@buffer, Size);
    Result := StrPas(buffer);
  end;

var ini: TIniFile;
    NewFileName, NewFilePath: string;
    fiExist, fiNew: TFileInfo;
    si: STARTUPINFO;
    pi: PROCESS_INFORMATION;
    F: TextFile;
    fvi: TUcFileVersionInfo;
begin
  if not FileExists(ExtractFilePath(ExeName)+UpdateIni) then Exit;
  //---��������� ���� � ����� ����������---
  ini:= TIniFile.Create(ExtractFilePath(ExeName)+UpdateIni);
  try
    NewFilePath:= ini.ReadString('UPDATEINFO','FULLPATH','');
    NewFileName:= ExtractFileName(NewFilePath);
    NewFilePath:= ExtractFilePath(NewFilePath);
  finally
    ini.Free;
  end;
  if NewFilePath <> '' then
    NewFilePath := IncludeTrailingBackslash(NewFilePath);
  if NewFileName='' then NewFileName:= ExtractFileName(ExeName);
  NewFileName:= NewFilePath + NewFileName;

  //  ��������� ������
  if FileExists(NewFileName + '.ini') then
  begin
    ini:= TIniFile.Create(NewFileName + '.ini');
    try
      if ini.ReadInteger('updateinfo', 'AllowUpdate', 0) = 1 then
        NewFileName:= ini.ReadString('updateinfo', 'UpdatePath', NewFileName)
      else
        Exit;
    finally
      ini.Free;
    end;
    if NewFileName = '' then Exit;
  end;

  if not FileExists(NewFileName) then Exit;

  //---��������� ���� �������� � ������ �����---
  UC_GetFileInfo(PChar(ExeName), @fiExist);
  UC_GetFileInfo(PChar(NewFileName), @fiNew);
  if fiExist.LastWriteTime>=fiNew.LastWriteTime then Exit;
  //---���������� �����---
  if FileExists(ExeName+'.bak')then DeleteFile(ExeName+'.bak');
  RenameFile(ExeName,ExeName+'.bak');
  if not CopyFile(PChar(NewFileName),PChar(ExeName),true) then
  begin
    RenameFile(ExeName+'.bak',ExeName);
    Exit;
  end;
  //---����� � ����� ���������� � ���������� �����---
  try
    AssignFile(F, NewFilePath+'UpdatesLOG.log'); { File selected in dialog }
    try
      if FileExists(NewFilePath+'UpdatesLOG.log') then
        Append(F) else Rewrite(F);
      Writeln(F, DateTimeToStr(now)+' :: '+GetComputerName+' :: '+' ���������� '+ExeName);
    finally
      CloseFile(F);
    end;
  except
  end;
  //**

  fvi := TUcFileVersionInfo.Create(NewFileName);
  MessageDlg('��������� ���������!'#13#10#13#10+
             IfThen(fvi.VersionInfoSize > 0, '������: '+fvi.FileVersion+#13#10)+
             '���� �����: '+DateTimeToStr(fiNew.LastWriteTime),
             mtInformation,[mbOK],0);
  fvi.Free;
  //---
  CreateProcess(PChar(ExeName),nil,nil,nil,true,
                CREATE_DEFAULT_ERROR_MODE,nil,nil,si,pi);
  //**
  Halt;
end;

initialization
  CheckUpdates;

end.
