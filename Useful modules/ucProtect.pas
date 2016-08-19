// ������ - 06.06.2012
unit ucProtect;
{$include ..\delphi_ver.inc}

interface

uses Windows, Classes, SysUtils, XMLDoc, XMLIntf, Math, Dialogs, Registry,
     ucXXTEA, ucBase64, ucZibProcs, ucClasses, ucTypes, ucFunctions, md5;

type
  {$IFDEF DELPHI_2009_UP}{$REGION 'Documentation'}{$ENDIF}
  ///	<summary>����� ��� ������ ��������� ������� �����������. �������� �
  ///	���������� �� �����.</summary>
  {$IFDEF DELPHI_2009_UP}{$ENDREGION}{$ENDIF}
  TUcProtect = class
  private
    FUseStaticPassword: Boolean;
    FPassword: String;
    FOnGetPassword: TGetPassword;
    FValues: TDBFields;
    FPassword2: String;
    FOnGetPassword2: TGetPassword;
    FUseMd5HashByPassword: Boolean;
    function GetPassword: String;
    function GetPassword2: String;
    function GetValues(Name: string): TDBField;
    function PreparePassword(Pass: String): RawByteString;
    function GetIsChanged: Boolean;
  protected
  public
    constructor Create;
    destructor Destroy; override;

    {$IFDEF DELPHI_2009_UP}{$REGION 'Documentation'}{$ENDIF}
    ///	<summary>������� ��� ���������� � ������.</summary>
    {$IFDEF DELPHI_2009_UP}{$ENDREGION}{$ENDIF}
    procedure Clear;

    {$IFDEF DELPHI_2009_UP}{$REGION 'Documentation'}{$ENDIF}
    ///	<summary>��������� ������ ����� �� �����</summary>
    ///	<param name="FileName">���� � ����� �����</param>
    {$IFDEF DELPHI_2009_UP}{$ENDREGION}{$ENDIF}
    function LoadFromFile(FileName: string): Boolean;
    {$IFDEF DELPHI_2009_UP}{$REGION 'Documentation'}{$ENDIF}
    ///	<summary>��������� ������ ����� �� ������</summary>
    ///	<param name="Stream">����� � ������</param>
    {$IFDEF DELPHI_2009_UP}{$ENDREGION}{$ENDIF}
    function LoadFromStream(Stream: TStream): Boolean;
    {$IFDEF DELPHI_2009_UP}{$REGION 'Documentation'}{$ENDIF}
    ///	<summary>�������� ������ ����� �� ��������� ������</summary>
    {$IFDEF DELPHI_2009_UP}{$ENDREGION}{$ENDIF}
    function LoadFromString(Str: string): Boolean;
    {$IFDEF DELPHI_2009_UP}{$REGION 'Documentation'}{$ENDIF}
    ///	<summary>�������� ������ ����� �� �������</summary>
    ///	<param name="RootKey">�������� ����� �������</param>
    ///	<param name="Key">���� �������</param>
    ///	<param name="Param">�������� �� �������� ����������� ����</param>
    {$IFDEF DELPHI_2009_UP}{$ENDREGION}{$ENDIF}
    function LoadFromRegistry(RootKey: HKEY; Key, Param: string): Boolean;

    {$IFDEF DELPHI_2009_UP}{$REGION 'Documentation'}{$ENDIF}
    ///	<summary>��������� ������ ����� � ����</summary>
    ///	<param name="FileName">���� � ����� �����</param>
    {$IFDEF DELPHI_2009_UP}{$ENDREGION}{$ENDIF}
    function SaveToFile(FileName: string): Boolean;
    {$IFDEF DELPHI_2009_UP}{$REGION 'Documentation'}{$ENDIF}
    ///	<summary>��������� ������ ����� � �����</summary>
    ///	<param name="Stream">�����</param>
    {$IFDEF DELPHI_2009_UP}{$ENDREGION}{$ENDIF}
    function SaveToStream(Stream: TStream): Boolean;
    {$IFDEF DELPHI_2009_UP}{$REGION 'Documentation'}{$ENDIF}
    ///	<summary>��������� ������ ����� � ������</summary>
    ///	<returns>������ � ������������� ������</returns>
    {$IFDEF DELPHI_2009_UP}{$ENDREGION}{$ENDIF}
    function SaveToString: string;
    {$IFDEF DELPHI_2009_UP}{$REGION 'Documentation'}{$ENDIF}
    ///	<summary>���������� ����� � ������</summary>
    ///	<param name="RootKey">�������� ����� �������</param>
    ///	<param name="Key">���� �������</param>
    ///	<param name="Param">�������� ��� ���������� ������ �����</param>
    {$IFDEF DELPHI_2009_UP}{$ENDREGION}{$ENDIF}
    function SaveToRegistry(RootKey: HKEY; Key, Param: string): Boolean;

    {$IFDEF DELPHI_2009_UP}{$REGION 'Documentation'}{$ENDIF}
    ///	<summary>��������� ������ ������� �����</summary>
    ///	<returns>������ ������� �����</returns>
    {$IFDEF DELPHI_2009_UP}{$ENDREGION}{$ENDIF}
    function RequestKey(ProductSID: string): string;
    {$IFDEF DELPHI_2009_UP}{$REGION 'Documentation'}{$ENDIF}
    ///	<summary>��������� ������ ������� ����� �������� �� ��� ������ �
    ///	��������� ������������� ��������</summary>
    ///	<param name="ReqKey">������ ������� �����</param>
    ///	<param name="Password">������</param>
    ///	<param name="ProductSID">��������� ������������� ��������</param>
    {$IFDEF DELPHI_2009_UP}{$ENDREGION}{$ENDIF}
    procedure ParceRequestKey(ReqKey: string; out vPassword, vProductSID: string);

    function EncryptStream(Stream: TStream): Boolean;
    function DecryptStream(Stream: TStream; CheckEncrypted: Boolean = False): Boolean;


    {$IFDEF DELPHI_2009_UP}{$REGION 'Documentation'}{$ENDIF}
    ///	<summary>������� ��������� ����� TStringStream ����������� �� ������ �
    ///	���������� UTF8</summary>
    {$IFDEF DELPHI_2009_UP}{$ENDREGION}{$ENDIF}
    function NewStringStream: TStringStream;
    {$IFDEF DELPHI_2009_UP}{$REGION 'Documentation'}{$ENDIF}
    ///	<summary>���������� ������ ���� ��������� ���������� ������ � ��
    ///	��������</summary>
    {$IFDEF DELPHI_2009_UP}{$ENDREGION}{$ENDIF}
    function Debug: string;
    {$IFDEF DELPHI_2009_UP}{$REGION 'Documentation'}{$ENDIF}
    ///	<summary>������� ��������� �� ������� ���� ��������� ���������� ������
    ///	� �� ����������</summary>
    {$IFDEF DELPHI_2009_UP}{$ENDREGION}{$ENDIF}
    procedure DebugMessage;

    {$IFDEF DELPHI_2009_UP}{$REGION 'Documentation'}{$ENDIF}
    ///	<summary>���������� ������������ ���������� ������ ��� ������������
    ///	������������� �������: OnGetPassword, OnGetPassword2</summary>
    {$IFDEF DELPHI_2009_UP}{$ENDREGION}{$ENDIF}
    property UseStaticPassword: Boolean read FUseStaticPassword write FUseStaticPassword;
    {$IFDEF DELPHI_2009_UP}{$REGION 'Documentation'}{$ENDIF}
    ///	<summary>
    ///	  <para>������ ������ ����� ���������.</para>
    ///	  <para>�� ��������� ���� ���������. � ������� ��� ���������
    ///	  �������������� ���� � �������� �� ���� ������ � �����������.</para>
    ///	</summary>
    {$IFDEF DELPHI_2009_UP}{$ENDREGION}{$ENDIF}
    property Password: String read GetPassword write FPassword;
    {$IFDEF DELPHI_2009_UP}{$REGION 'Documentation'}{$ENDIF}
    ///	<summary>
    ///	  <para>������ ���������� ������ ������� �����.</para>
    ///	  <para>���� ���� ������ ���������� (��������)</para>
    ///	</summary>
    {$IFDEF DELPHI_2009_UP}{$ENDREGION}{$ENDIF}
    property Password2: String read GetPassword2 write FPassword2;
    {$IFDEF DELPHI_2009_UP}{$REGION 'Documentation'}{$ENDIF}
    ///	<summary>������� ��������� ������ Password. ����������� ���
    ///	UseStaticPassword = False</summary>
    {$IFDEF DELPHI_2009_UP}{$ENDREGION}{$ENDIF}
    property OnGetPassword: TGetPassword read FOnGetPassword write FOnGetPassword;
    {$IFDEF DELPHI_2009_UP}{$REGION 'Documentation'}{$ENDIF}
    ///	<summary>������� ��������� ������ Password2. ����������� ���
    ///	UseStaticPassword = False</summary>
    {$IFDEF DELPHI_2009_UP}{$ENDREGION}{$ENDIF}
    property OnGetPassword2: TGetPassword read FOnGetPassword2 write FOnGetPassword2;
    {$IFDEF DELPHI_2009_UP}{$REGION 'Documentation'}{$ENDIF}
    ///	<summary>��������� ����� ���������</summary>
    {$IFDEF DELPHI_2009_UP}{$ENDREGION}{$ENDIF}
    property Values[Name: string]: TDBField read GetValues; default;
    property UseMd5HashByPassword: Boolean read FUseMd5HashByPassword write FUseMd5HashByPassword;
    property IsChanged: Boolean read GetIsChanged;
  end;

implementation

uses Variants;

{ TUcProtect }

procedure TUcProtect.Clear;
begin
  FValues.Clear;
end;

constructor TUcProtect.Create;
begin
  inherited;
  FUseMd5HashByPassword := False;
  FUseStaticPassword := True;
  FPassword          := '';
  FPassword2         := '';
  FOnGetPassword     := nil;
  FOnGetPassword2    := nil;
  FValues            := TDBFields.Create;
end;

function TUcProtect.Debug: string;
begin
  Result := FValues.Debug;
end;

procedure TUcProtect.DebugMessage;
begin
  ShowMessage(Debug);
end;

function TUcProtect.DecryptStream(Stream: TStream; CheckEncrypted: Boolean = False): Boolean;
begin
  Result := (not CheckEncrypted) or (xxtea_stream_encrypted(Stream));
  if Result then
  begin
    if Password <> '' then
      Result := xxtea_decrypt(Stream, PreparePassword(Password));
    Result := Result and UC_ZIP(Stream, False);
  end;
end;

destructor TUcProtect.Destroy;
begin
  FValues.Free;
  inherited;
end;

function TUcProtect.EncryptStream(Stream: TStream): Boolean;
begin
  Result := not xxtea_stream_encrypted(Stream);
  if Result then
  begin
    Result := UC_ZIP(Stream, True);
    if Password <> '' then
//      Result := xxtea_encrypt(Stream, PreparePassword(Password));
      Result := xxtea_encrypt_ex(Stream, PreparePassword(Password));
  end;
end;

function TUcProtect.RequestKey(ProductSID: string): string;
var ss: TStringStream;
begin
  ss := NewStringStream;
  try
    ss.WriteString(UC_Implode('?', [Password, ProductSID, UC_GeneratePassword(2)]));
    if Password2 <> '' then xxtea_encrypt(ss, RawByteString(Password2));
    base64_encode(ss);

    Result := ss.DataString;
  finally
    ss.Free;
  end;
end;

procedure TUcProtect.ParceRequestKey(ReqKey: string; out vPassword, vProductSID: string);
var ss: TStringStream;
    sa: TStrArray;
begin
  ss := NewStringStream;
  try
    ss.WriteString(Trim(ReqKey));
    base64_decode(ss);
    if Password2 <> '' then xxtea_decrypt(ss, RawByteString(Password2));

    sa := UC_Explode('?', ss.DataString, 3);
    vPassword   := sa[0];
    vProductSID := sa[1];
  finally
    ss.Free;
  end;
end;

function TUcProtect.PreparePassword(Pass: String): RawByteString;
begin
  Result := RawByteString(Pass);

  if FUseMd5HashByPassword then
    Result := RawByteString(UC_MD5String(Result));
end;

function TUcProtect.GetIsChanged: Boolean;
begin
  Result := FValues.IsChanged;
end;

function TUcProtect.GetPassword: String;
begin
  if FUseStaticPassword then
    Result := FPassword
    else begin
      if Assigned(FOnGetPassword) then
        FOnGetPassword(Self, Result)
        else
        raise Exception.Create('�� ������ ���������� ������������ ������!');
    end;
end;

function TUcProtect.GetPassword2: String;
begin
  if FUseStaticPassword then
    Result := FPassword2
    else begin
      if Assigned(FOnGetPassword2) then
        FOnGetPassword2(Self, Result)
        else
        raise Exception.Create('�� ������ ���������� ������������ ������ (2)!');
    end;
end;

function TUcProtect.GetValues(Name: string): TDBField;
begin
  Result := FValues[Name];
end;

function TUcProtect.LoadFromFile(FileName: string): Boolean;
var
  Stream: TStream;
begin
  Result := FileExists(FileName);
  if Result then
  try
    Stream := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
    try
      Result := LoadFromStream(Stream);
    finally
      Stream.Free;
    end;
  except
    Result := False;
  end;
end;

function TUcProtect.LoadFromRegistry(RootKey: HKEY; Key, Param: string): Boolean;
var R: TRegistry;
    {$IFDEF DELPHI_2009_UP}
      Buffer: TBytes;
    {$ELSE}
      Buffer: string;
    {$ENDIF}
    ms: TMemoryStream;
    DataSize: Integer;
begin
  R := TRegistry.Create;
  ms := TMemoryStream.Create;
  try
    try
      R.RootKey := RootKey;
      Result := R.OpenKey(Key, False);
      if Result then
      begin
        DataSize := R.GetDataSize(Param);
        Result := DataSize > 0;
        if Result then
        begin
          SetLength(Buffer, DataSize);
          R.ReadBinaryData(Param, Pointer(Buffer)^, DataSize);
          ms.Write(Pointer(Buffer)^, DataSize);
          ms.Position := 0;
          Result := LoadFromStream(ms);
        end;
      end;
    except
      Result := False;
    end;
  finally
    ms.Free;
    R.Free;
  end;
end;

function TUcProtect.LoadFromStream(Stream: TStream): Boolean;
var ms: TMemoryStream;
    xd: IXMLDocument;
    nRoot, Node: IXMLNode;
    i: Integer;
begin
  Clear;
  ms := TMemoryStream.Create;
  try
    // �������� ������
    ms.LoadFromStream(Stream);
    // ��������� ���� ������
    base64_decode(ms);
    DecryptStream(ms);
    //**

    // ���������� � ������ � ������ ������
    xd := NewXMLDocument();
    xd.Encoding := 'UTF-8';
    xd.NodeIndentStr := #9;
    xd.Options := xd.Options + [doNodeAutoIndent];

    // �������� ������ �� �����
    Result := ms.Size > 0;
    if Result then
      try
        xd.LoadFromStream(ms);
        Result := True;
      except
        Result := False;
      end;
    //**
    if not Result then Exit;

    // ��������� ������
    nRoot := xd.ChildNodes.FindNode('root');
    if Assigned(nRoot) then
      for i := 0 to nRoot.ChildNodes.Count - 1 do
      begin
        Node := nRoot.ChildNodes[i];
        if CompareText(Node.NodeName, 'v') = 0 then
        begin
          Values[Node.Attributes['name']].AsString := Node.Attributes['value'];

//          { TODO : ��� �������������� ����� �� ���������� ����� ���������� ������. }
////          {$IFDEF DELPHI_2009_UP}
//          Values[Node.Attributes['name']].AsString := Node.Attributes['value'];
////          {$ELSE}
////          Values[Node.Attributes['name']].AsString := VarToStrDef(Node.Attributes['value'], 'encode problem');
////          {$ENDIF}
        end;
      end;
    FValues.IsChanged := False;
    //**
  finally
    ms.Free;
  end;
end;

function TUcProtect.LoadFromString(Str: string): Boolean;
var ss: TStringStream;
begin
  ss := NewStringStream;
  try
    ss.WriteString(Trim(Str));
    Result := LoadFromStream(ss);
  finally
    ss.Free;
  end;
end;

function TUcProtect.NewStringStream: TStringStream;
begin
{$IFDEF DELPHI_2009_UP}
  Result := TStringStream.Create('', TUTF8Encoding.Create);
{$ELSE}
  Result := TStringStream.Create('');
{$ENDIF}
end;

function TUcProtect.SaveToFile(FileName: string): Boolean;
var
  Stream: TStream;
begin
  try
    Stream := TFileStream.Create(FileName, fmCreate);
    try
      Result := SaveToStream(Stream);
    finally
      Stream.Free;
    end;
  except
    Result := False;
  end;
end;

function TUcProtect.SaveToRegistry(RootKey: HKEY; Key, Param: string): Boolean;
var R: TRegistry;
    {$IFDEF DELPHI_2009_UP}
      Buffer: TBytes;
    {$ELSE}
      Buffer: string;
    {$ENDIF}
    ms: TMemoryStream;
begin
  R := TRegistry.Create;
  ms := TMemoryStream.Create;
  try
    try
      R.RootKey := RootKey;
      Result := R.OpenKey(Key, True) and SaveToStream(ms);
      if Result then
      begin
        SetLength(Buffer, ms.Size);
        ms.Position := 0;
        ms.Read(Pointer(Buffer)^, ms.Size);
        R.WriteBinaryData(Param, Pointer(Buffer)^, ms.Size);
      end;
    except
      Result := False;
    end;
  finally
    ms.Free;
    R.Free;
  end;
end;

function TUcProtect.SaveToStream(Stream: TStream): Boolean;
var ms: TMemoryStream;
    xd: IXMLDocument;
    nRoot, Node: IXMLNode;
    i: Integer;
begin
  ms := TMemoryStream.Create;
  try
    try
      // ���������� ������
      xd := NewXMLDocument();
      xd.Encoding := 'UTF-8';
      xd.NodeIndentStr := #9;
      xd.Options := xd.Options + [doNodeAutoIndent];

      nRoot := xd.AddChild('root');
      if Assigned(nRoot) then
      begin
        Values['trash'].AsString := UC_GeneratePassword();
        for i := 0 to FValues.Count - 1 do
        begin
          Node := nRoot.AddChild('v');

          Node.Attributes['name']  := FValues.Fields[i].FieldName;
          Node.Attributes['value'] := FValues.Fields[i].AsString;

//          if VarType(FValues.Fields[i].AsVariant) = varDate then         // ��� ����, ����� �������� ������ ��� ��������� ���������
//            begin                                                        // ���������� ����
//              Node.Attributes['value'] := FValues.Fields[i].AsFloat;
//              Node.Attributes['txtvalue'] := FValues.Fields[i].AsString; // ����� ����� ���� ��������� ���������� ����
//            end
//          else
//            Node.Attributes['value'] := FValues.Fields[i].AsString;

        end;
      end;

      xd.SaveToStream(ms);
      // �������� ������
      EncryptStream(ms);
      base64_encode(ms);

      ms.SaveToStream(Stream);
      Result := True;
    except
      Result := False;
    end;
  finally
    ms.Free;
  end;
end;

function TUcProtect.SaveToString: string;
var ss: TStringStream;
begin
  ss := NewStringStream;
  try
    SaveToStream(ss);
    Result := ss.DataString;
  finally
    ss.Free;
  end;
end;

end.
