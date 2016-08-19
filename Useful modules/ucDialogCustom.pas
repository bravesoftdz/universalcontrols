unit ucDialogCustom;

interface

uses Windows, Dialogs;

type
  TCustom_ShowMessage = procedure(const Text: string);
  TCustom_MessageBox = function(hWnd: HWND; lpText, lpCaption: PChar; uType:
      UINT): Integer;

  procedure UC_DlgShowMessage(const Text : string);
  {$IFDEF DELPHI_2009_UP}{$REGION 'Documentation'}{$ENDIF}
  ///	<summary>������������� MessageBox</summary>
  ///	<param name="hWnd">Handle ��������</param>
  /// <param name="lpText">����� ���������</param>
  /// <param name="lpCaption">����� ���������</param>
  /// <param name="uType">�������������� ������� (MB_ICONERROR, MB_ICONQUESTION, MB_ICONWARNING, MB_ICONINFORMATION)
  ///                     � ������ (MB_OK, MB_OKCANCEL, MB_YESNO, MB_HELP *���� ������������, �� ������ �� ������������ �������*)</param>
  ///	<returns>
  ///	  <para>ModalResult - ����������� ��������</para>
  ///	</returns>
  {$IFDEF DELPHI_2009_UP}{$ENDREGION}{$ENDIF}
  function UC_DlgMessageBox(hWnd: HWND; lpText, lpCaption: PChar; uType: UINT):
      Integer;

  procedure UC_DlgRegisterShowMessage(Proc: TCustom_ShowMessage);
  procedure UC_DlgRegisterMessageBox(Proc: TCustom_MessageBox);

implementation

var
  Custom_ShowMessage_: TCustom_ShowMessage = nil;
  Custom_MessageBox_ : TCustom_MessageBox  = nil;

procedure UC_DlgShowMessage(const Text: string);
begin
  if Assigned(Custom_ShowMessage_) then
    Custom_ShowMessage_(Text)
  else
    ShowMessage(Text);
end;

  {$IFDEF DELPHI_2009_UP}{$REGION 'Documentation'}{$ENDIF}
  ///	<summary>������������� MessageBox</summary>
  ///	<param name="hWnd">Handle ��������</param>
  /// <param name="lpText">����� ���������</param>
  /// <param name="lpCaption">����� ���������</param>
  /// <param name="uType">�������������� ������� (MB_ICONERROR, MB_ICONQUESTION, MB_ICONWARNING, MB_ICONINFORMATION)
  ///                     � ������ (MB_OK, MB_OKCANCEL, MB_YESNO, MB_HELP *���� ������������, �� ������ �� ������������ �������*)</param>
  ///	<returns>
  ///	  <para>ModalResult - ����������� ��������</para>
  ///	</returns>
  {$IFDEF DELPHI_2009_UP}{$ENDREGION}{$ENDIF}
function UC_DlgMessageBox(hWnd: HWND; lpText, lpCaption: PChar; uType: UINT):
    Integer;
begin
  if Assigned(Custom_MessageBox_) then
    Result := Custom_MessageBox_(hWnd, lpText, lpCaption, uType)
  else
    Result := MessageBox(hWnd, lpText, lpCaption, uType);
end;

procedure UC_DlgRegisterShowMessage(Proc: TCustom_ShowMessage);
begin
  Custom_ShowMessage_ := Proc;
end;

procedure UC_DlgRegisterMessageBox(Proc: TCustom_MessageBox);
begin
  Custom_MessageBox_ := Proc;
end;

end.
