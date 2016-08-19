// ������ - 05.03.2014
unit ucdZipFiles;
{
  ������ ��������� �� Delphi 2010.
  ��� ������ � ���� ������� ���������� ���������� ����������:
  Abbrevia - http://sourceforge.net/projects/tpabbrevia/
}

interface

uses Windows, Forms, SysUtils, Classes,
     AbZipper, AbArcTyp, AbExcept, AbConst, AbUtils,
     ucTypes, ucClassesEx;

type
  TUcZipper = class(TUcThreadedNotifyObjectEx)
  private
    fAz: TAbZipper;
    fFileMask, fDest, fPassword: string;
    procedure DoArchiveProgress(Sender: TObject; Progress: Byte;
      var Abort: Boolean);
    procedure DoArchiveItemFailure(Sender: TObject; Item: TAbArchiveItem;
      ProcessType: TAbProcessType; ErrorClass: TAbErrorClass;
      ErrorCode: Integer);
  protected
    procedure DoExecute; override;
    procedure DoStop; override;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure Init(FileMask, Dest, Password: string);
  end;

implementation

{ TZipper }

constructor TUcZipper.Create;
begin
  inherited;
  fAz := TAbZipper.Create(nil);
  fAz.OnArchiveProgress    := DoArchiveProgress;
  fAz.OnProcessItemFailure := DoArchiveItemFailure;
end;

destructor TUcZipper.Destroy;
begin
  fAz.Free;
  inherited;
end;

procedure TUcZipper.DoExecute;
begin
  try
    Notifycation([niMax, niPos, niTxt], 0, 100, 0, '���������');
    fAz.OnArchiveProgress    := DoArchiveProgress;
    fAz.OnProcessItemFailure := DoArchiveItemFailure;
    fAz.AutoSave := False;
    fAz.Password := AnsiString(fPassword);
    fAz.StoreOptions := [soStripDrive, soReplace, soRecurse];
    fAz.BaseDirectory := ExtractFilePath(fFileMask);
    fAz.FileName := fDest;
    fAz.AddFiles(ExtractFileName(fFileMask), 0);
    fAz.Save;
  except
    on E: EAbException do
      if E.ErrorCode <> AbUserAbort then
        Notifycation([niTxt, niErr], 0, 0, 0,
                     Format('�� ������� ��������� "%s".'#13#10 +
                            '%s', [fFileMask, E.Message]), True);
    on E: Exception do
      Notifycation([niTxt, niErr], 0, 0, 0,
                   Format('�� ������� ��������� "%s".'#13#10 +
                          '%s', [fFileMask, E.Message]), True);
  end;
end;

procedure TUcZipper.DoStop;
begin
  // �������� ��������� � �����������: DoArchiveProgress
  Notifycation([niTxt, niErr], 0, 0, 0, '�������� �������������', True);
end;

procedure TUcZipper.Init(FileMask, Dest, Password: string);
begin
  fFileMask  := FileMask;
  fDest      := Dest;
  fPassword  := Password;
end;

procedure TUcZipper.DoArchiveProgress(Sender: TObject; Progress: Byte; var Abort: Boolean);
begin
  Notifycation([niPos], 0, 0, Progress);
  Abort := NotifyErr or Application.Terminated;
end;

procedure TUcZipper.DoArchiveItemFailure(Sender: TObject; Item: TAbArchiveItem;
      ProcessType: TAbProcessType; ErrorClass: TAbErrorClass;
      ErrorCode: Integer);
var MsgTxt, ErrTxt: string;
begin
  case ProcessType of
    ptAdd             : MsgTxt := '���������� ����� "%s" � �����. '#13#10'%s';
    ptDelete          : MsgTxt := '�������� ����� "%s" �� ������. '#13#10'%s';
    ptExtract         : MsgTxt := '���������� ����� "%s" �� ������. '#13#10'%s';
    ptFreshen         : MsgTxt := '���������� ����� "%s" � ������. '#13#10'%s';
    ptMove            : MsgTxt := '����������� ����� "%s" ������ ������. '#13#10'%s';
    ptReplace         : MsgTxt := '������ ����� "%s" � ������. '#13#10'%s';
    ptFoundUnhandled  : MsgTxt := '��������� ����� "%s" � ������. '#13#10'%s';
  end;

  case ErrorClass of
    ecAbbrevia          : ErrTxt := AbStrRes(ErrorCode);
    ecInOutError        : ErrTxt := '������ �����/������ � ' + IntToStr(ErrorCode);
    ecFilerError,
    ecFileCreateError,
    ecFileOpenError,
    ecCabError, ecOther : ErrTxt := SysErrorMessage(GetLastError);
  end;

  if (ErrorClass <> ecAbbrevia) or (ErrorCode <> AbUserAbort) then
    Notifycation([niTxt, niErr], 0, 0, 0,
                 Format(MsgTxt, [Item.DiskFileName, ErrTxt]), True);
end;

end.
