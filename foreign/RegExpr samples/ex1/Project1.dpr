// ����� ������� ������ - ���������� ����� �� �������� ������.
program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  // ��������� ������ ������
  RegExpr in 'RegExpr.pas';

var
  // ��� ��������� ��������� ������ TRegExpr
  RegExp: TRegExpr;
  s: string;
  
begin
  // ������� ������ � ��������� ������
  Write('Enter a string containing numbers: ');
  Readln(s);

  // ������ ������
  RegExp := TRegExpr.Create;

  // ����������� ������������ ������� �������� ������
  try
    // ���������� ��������� ��������� � �������� Expression
    RegExp.Expression := '-?\d+';
    // ���� ������ ���������� � ������� �������
    // Exec(const AInputString : string) : boolean, ������� ������ true,
    // ���� � ������ AInputString ����� ������� ���������� c
    // ���������� ����������, ���������� � ������� Expression
    if RegExp.Exec(s) then
    // ���� �������
    begin
      Writeln('Entered string contains numbers: ');
      repeat
      // ������� ��������� ���������, ������� �������� � Match[0]
        Writeln(RegExp.Match[0]);
      // � ���������� �����
      until not RegExp.ExecNext;
    end
    else
    // ����� - ��������, ��� ������ �� �����
      Writeln('Entered string contains no numbers!');
  finally
    RegExp.Free;
  end;
  Readln;
end.
