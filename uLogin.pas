unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfmLogin = class(TForm)
    Label1: TLabel;
    edLogin: TEdit;
    Label2: TLabel;
    edSenha: TEdit;
    btOk: TButton;
    btCancelar: TButton;
    qrLogin: TFDQuery;
    procedure btOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLogin: TfmLogin;

implementation

{$R *.dfm}

uses udmPrincipal, uCadastroBase, uSystemUtils;

procedure TfmLogin.btOkClick(Sender: TObject);
var
  Senha: string;
begin
  qrLogin.Close;
  qrLogin.SQL.Text := 'SELECT SENHA FROM USUARIOS '+
                      'WHERE LOGIN = :LOGIN';

  qrLogin.ParamByName('LOGIN').AsString := edLogin.Text;
  qrLogin.Open;

  if qrLogin.IsEmpty then
  begin
    MsgWarning('Login ou senha incorretas.');
    Exit;
  end
  else if (edLogin.Text + '_' + edSenha.Text) <> DecriptB64(qrLogin.FieldByName('SENHA').AsString) then
  begin
    MsgWarning('Login ou senha incorretas.');
    Exit;
  end;

  ModalResult := mrOk;
end;

end.
