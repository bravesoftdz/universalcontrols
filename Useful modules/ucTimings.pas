////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//                            Sanders the Softwarer                           //
//                                                                            //
//             ��������������� ������ ��� ������� ��������� ������            //
//                 ��� ���������� ��������� �������� ��������                 //
//                                                                            //
///////////////////////////////////////////////// Author Sanders Prostorov /////

{ ----- ������� ----------------------------------------------------------------

����� �������� ����� �������������� ���� ������, ������������ ���, ������������
� ����������� ����������� ��������, � ��� ����� ������������, ��� �������������
� �������������� ����������� �� ������. � ����� ������ ������ ������ �����������
���������� �� ��������� ������ � �������� ��������������� ������.

��� ��������������� ������������ ������ ������ ����� �������� ��� ������ �
�������� ������ ��� �������������� �������� ����� ����������� ��������� �������.

���� �� ������� ���������� ��������� � �������� �������������� �� �� ����
�������� - �������� � ���, � �� ��������� ��������� ����� ��������� � ���������
������ ������. ����� ����� �������� � ��������� �������, ���� ����� �����.

�����: Sanders Prostorov, 2:5020/1583, softwarer@mail.ru, softwarer@nm.ru

------------------------------------------------------------------------------ }

{ ----- ���������� ������ ------------------------------------------------------

������ ��������� �������� ����� ���������� ��������� �������� ���������. ���
����� ������ ���������� ������� ������� �������� �������� ������� Timing.Start
� Timing.Finish, ��������:

procedure DoSomething ;
begin
  Timing.Start ( 1, '���������' ) ;
  Process ;
  Timing.Finish ( 1 ) ;
end ;

�������, �������������� �������, ���������� - � ������ ������ ������������
������ ����� 1. � �������� ����� ������������ ����� ������, �� ������� ��������
� ������������ ������� � ������� ������������� ������� ������� ������� ���������
������ ������.

� ������� ������ �������� ����� ����������� �������� ������� ���������� ������
�������� - ������, ������������ Process ����� ������������ ������� 2..N ���
������ ������� ���������� ��������� ����� ������.

��������� �������������� ��������� ������. � ������, ���� ������������
DoSomething ����� �����������, ����� ������ �� ��� � ������� �������� �����
���������� "� �����", ���������� �� �������� ������. ����������, ��� ����������
������ ���������� ��������� ������ ������� Start � Finish.

���� � ��� �� ������ ����� ���������� � ��������������� �����������, ��� ����
���������� ������� �����������. ���, � ����� ������ ��������� � ������� #1
�������� ���������������� ����� ���������� ���� ������� ������������.

���������� ���������� ����� ���� �������� � ������� ����������� GetSeconds ���
GetStatictics. ��������� ���������� ���������� � Start ����� ����������� ���
������������ ������ ������ ������ ����������.

����� Clear ���������� ��������� ����������, �������� ������ ��������� �����
���������.

------------------------------------------------------------------------------ }

{ ----- ������� ������ ---------------------------------------------------------

??.??.1998 ������ ������ ������ (D2)
01.08.2004 ������ �������������� ��� D6. ������ ������ ������ ������������,
           � ����� � ��� ������ ����������� �� ����� �������. �������� �����
           Timing

------------------------------------------------------------------------------ }

unit ucTimings ;
{$include ..\delphi_ver.inc}

interface

uses Classes, SysUtils ;

type
  { ����������, ����������� ������� }
  ETiming = class ( Exception ) ;

  { ����������� ����� ��� ������� }
  Timing = class
  public
    class procedure Clear ;
      { ����� ��������� ���������� � ������� }
    class procedure Start ( Timer : integer ; AName : string = '' ) ;
      { ������ ���������� ������� }
    class procedure Finish ( Timer : integer ) ;
      { ��������� ���������� ������� }
    class function GetSeconds ( Timer : integer ) : real ;
      { ���������� ��������� ������� }
    class procedure GetStatistics ( S : TStrings ) ; overload ;
    class function GetStatistics : String ; overload ;
      { ���� ��������� ���� �������� }
  end ;

implementation

type
  TTimerRec = record
    Name  : string ;
    Depth : integer ;
    Start : TDateTime ;
    Time  : TDateTime ;
    Used  : boolean ;
  end ;

var
  Timers : array of TTimerRec ;

resourcestring
  STimerNotUsed = '������ (%d) �� ������������' ;
  SCallMismatch = '������������ ������������������ ������� Start/Finish ' +
                  '��� ������� (%d)' ;

{ ��������� ����� ��� ��������� ������ }
procedure EnsureTimer ( Timer : integer ) ;
begin
  if Length ( Timers ) <= Timer then SetLength ( Timers, Timer + 1 ) ;
end ;

{ ��������, ������������ �� ������ }
procedure CheckTimerUsed ( Timer : integer ) ;
begin
  if ( Length ( Timers ) > Timer ) and Timers [ Timer ].Used then exit ;
  raise ETiming.CreateFmt ( STimerNotUsed, [ Timer ]) ;
end ;

{ ����� ��������� ���������� � ������� }
class procedure Timing.Clear ;
begin
  Finalize ( Timers ) ;
  EnsureTimer ( 100 ) ;
end ;

{ ������ ���������� ������� }
class procedure Timing.Start ( Timer : integer ; AName : string = '' ) ;
begin
  EnsureTimer ( Timer ) ;
  with Timers [ Timer ] do
  begin
    Used := true ;
    Name := AName ;
    if Depth = 0 then Start := Now ;
    inc ( Depth ) ;
  end ;
end ;

{ ��������� ���������� ������� }
class procedure Timing.Finish ( Timer : integer ) ;
begin
  CheckTimerUsed ( Timer ) ;
  with Timers [ Timer ] do
  begin
    if Depth = 0 then raise ETiming.CreateFmt ( SCallMismatch, [ Timer ]) ;
    dec ( Depth ) ;
    if Depth = 0 then Time := Time + Now - Start ;
  end ;
end ;

{ ���������� ��������� ������� }
class function Timing.GetSeconds ( Timer : integer ) : real ;
begin
  CheckTimerUsed ( Timer ) ;
  Result := Timers [ Timer ].Time * 24 * 60 * 60 ;
end ;

{ ���� ��������� ���� �������� }
class function Timing.GetStatistics : String ;
var i : integer ;
begin
  Result := '' ;
  for i := Low ( Timers ) to High ( Timers ) do
    if Timers [ i ].Used then
      Result := Result + Format ( '%s(%d) %8.3f',
                           [ Timers [ i ].Name, i, GetSeconds ( i )]) + #13 ;
  Result := Trim ( Result ) ;
end ;

class procedure Timing.GetStatistics ( S : TStrings ) ;
begin
  S.Text := GetStatistics ;
end ;

initialization
  EnsureTimer ( 100 ) ;

end.
