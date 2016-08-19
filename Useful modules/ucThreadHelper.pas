// ������ - 12.02.2014 //25.11.2013
unit ucThreadHelper;
{$include ..\delphi_ver.inc}

interface

uses Forms, Classes, Windows;

type
  /// <summary>
  /// ���� ����� ��������� ���������� ����� ��������� � ��������� ������.
  /// </summary>
  TUcThreadHelper = class(TThread)
  private
    fThreadMethod: TThreadMethod; // ����� ����������� � ������
    fCanExecute: Boolean;         // ��� ����, ��� �� ����� ����� ���� ��������� 1-� ���!
    fFinished: Boolean;
  protected
    procedure Execute; override;
  public
    constructor Create; reintroduce;
    /// <summary>
    ///  ��������� ������ � ��������� ������
    /// <param name="ThreadMethod">����� ������� ����� ��������� � ��������� ������</param>
    /// <param name="Wait">�������� ���������� ������</param>
    /// </summary>
    function ThreadExecute(ThreadMethod: TThreadMethod; Wait: Boolean): boolean;
    /// <summary>
    /// ������������� ������ � �����������.
    /// </summary>
    procedure ThreadSynchronize(ThreadMethod: TThreadMethod);
    procedure Terminate;
    procedure WaitWhileExecute;
    property Terminated;
{$IFNDEF DELPHI_2009_UP}
    property Finished: Boolean read fFinished;
{$ENDIF}
  end;


implementation

{ TThreadHelper }

constructor TUcThreadHelper.Create;
begin
  inherited Create(True);
  fCanExecute := True;
  fFinished   := False;
end;

procedure TUcThreadHelper.Execute;
begin
  // �������� �������� ��� ������� ����� �������� ���������� �� ���� ��� ��������
  // Suspend ���� �������� � False, � ���������� ���� ����� ThreadSynchronize
  // ����� �������� �� ���������, ������� ����
  while Suspended do ;  
  fThreadMethod;
  fFinished := True;
end;

procedure TUcThreadHelper.Terminate;
begin
  inherited;
// ���������������� 12.02.2014
//  TerminateThread(Handle, 0);
end;

function TUcThreadHelper.ThreadExecute(ThreadMethod: TThreadMethod; Wait: Boolean): boolean;
begin
  Result := fCanExecute;
  if Result then
  begin
    fCanExecute   := False;
    fThreadMethod := ThreadMethod;
    Suspended     := False;
    // �������� ���������� ������
    if Wait then WaitWhileExecute;
    //**
  end;
end;

procedure TUcThreadHelper.ThreadSynchronize(ThreadMethod: TThreadMethod);
begin
  if Suspended then
    ThreadMethod
    else
    Synchronize(ThreadMethod);
end;

procedure TUcThreadHelper.WaitWhileExecute;
begin
{$IFDEF DELPHI_2009_UP}
  while not Finished do
{$ELSE}
  while not fFinished do
{$ENDIF}
    Application.ProcessMessages;
end;

end.
