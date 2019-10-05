unit uSystemUtils;

interface

function IsNumber(Key: Char): boolean;
function MsgConfirm(aMessage: string): boolean;

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

end.
