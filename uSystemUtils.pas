unit uSystemUtils;

interface

uses
  System.NetEncoding;

const
  KEY_MASTER = 108;

function IsNumber(Key: Char): boolean;
function MsgConfirm(aMessage: string): boolean;
procedure MsgWarning(aMessage: string);
function CriptB64(aStr: string): string;
function DecriptB64(aStr: string): string;

implementation

uses
  Vcl.Forms, Winapi.Windows, System.SysUtils;

function IsNumber(Key: Char): boolean;
begin
  Result := CharInSet(Key, ['0'..'9']);
end;

function MsgConfirm(aMessage: string): boolean;
begin
  Result := Application.MessageBox(PWideChar(aMessage), 'Pivo', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = ID_YES;
end;

procedure MsgWarning(aMessage: string);
begin
  Application.MessageBox(PWideChar(aMessage), 'Pivo', MB_OK + MB_ICONWARNING);
end;

function CriptB64(aStr: string): string;
begin
  Result := TNetEncoding.Base64.Encode(AStr);
end;

function DecriptB64(aStr: string): string;
begin
  Result := TNetEncoding.Base64.Decode(aStr);
end;

end.
