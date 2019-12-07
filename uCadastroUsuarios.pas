unit uCadastroUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroBase, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfmCadastroUsuarios = class(TfmCadastroBase)
    Label1: TLabel;
    Label2: TLabel;
    edLogin: TEdit;
    edSenha: TEdit;
    qrDadosLOGIN: TStringField;
    qrDadosSENHA: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  protected
    procedure BeforeEdit; override;
    procedure BeforePost; override;
    function ValidarObrigatorios: boolean; override;
  public
    { Public declarations }
  end;

var
  fmCadastroUsuarios: TfmCadastroUsuarios;

implementation

{$R *.dfm}

uses
  uCadastroCategorias, uSystemUtils;

procedure TfmCadastroUsuarios.BeforeEdit;
begin
  inherited;
  edLogin.Text := qrDados.FieldByName('LOGIN').AsString;
  edSenha.Text := DecriptB64(qrDados.FieldByName('SENHA').AsString);
end;

procedure TfmCadastroUsuarios.BeforePost;
begin
  inherited;
  qrDados.FieldByName('LOGIN').AsString := edLogin.Text;
  qrDados.FieldByName('SENHA').AsString := CriptB64(edLogin.Text + '_' + edSenha.Text);
end;

procedure TfmCadastroUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fmCadastroUsuarios := nil;
end;

function TfmCadastroUsuarios.ValidarObrigatorios: boolean;
begin
  if Trim(edLogin.Text) = '' then
  begin
    ShowMessage('Informe o login.');
    edLogin.SetFocus;
    Exit(false);
  end;

  if Trim(edSenha.Text) = '' then
  begin
    ShowMessage('Informe a senha.');
    edSenha.SetFocus;
    Exit(false);
  end;

  Result := inherited ValidarObrigatorios;
end;

end.
