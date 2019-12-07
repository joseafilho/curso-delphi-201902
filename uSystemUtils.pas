unit uSystemUtils;

interface

function IsNumber(Key: Char): boolean;
function MsgConfirm(aMessage: string): boolean;
procedure MsgWarning(aMessage: string);
function Criptografa(texto: string; chave: integer): string;
function DesCriptografa(texto: string; chave: integer): string;

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

function AsciiToInt(Caracter: Char): Integer;
var
  i: Integer;
begin
  i := 32;
  while i < 255 do begin
    if Chr(i) = Caracter then
      Break;
    i := i + 1;
  end;
  Result := i;
end;

Function Criptografa(texto:string;chave:integer):String;
var
  cont:integer;
  retorno:string;
begin
  if (trim(texto)=EmptyStr) or (chave=0) then begin
    result:=texto;
  end else begin
    retorno:='';
    for cont:=1 to length(texto) do begin
      retorno:=retorno+chr(asciitoint(texto[cont])+chave);
    end;
    result:=retorno;
  end;
end;

Function DesCriptografa(texto:string;chave:integer):String;
var
  cont:integer;
  retorno:string;
begin
  if (trim(texto)=EmptyStr) or (chave=0) then begin
    result:=texto;
  end else begin
    retorno:='';
    for cont:=1 to length(texto) do begin
      retorno:=retorno+chr(asciitoint(texto[cont])-chave);
    end;
    result:=retorno;
  end;
end;


end.
