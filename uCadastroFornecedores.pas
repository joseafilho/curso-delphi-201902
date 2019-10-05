unit uCadastroFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroBase, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TfmCadastroFornecedores = class(TfmCadastroBase)
    qrDadosNOME: TStringField;
    qrDadosENDERECO: TStringField;
    qrDadosEMAIL: TStringField;
    qrDadosCNPJ: TStringField;
    qrDadosTELEFONE: TStringField;
    qrDadosID: TFDAutoIncField;
    Label1: TLabel;
    edId: TDBEdit;
    Label2: TLabel;
    edNome: TDBEdit;
    Label3: TLabel;
    edEndereco: TDBEdit;
    Label4: TLabel;
    edEmail: TDBEdit;
    Label5: TLabel;
    edCNPJ: TDBEdit;
    Label6: TLabel;
    edTelefone: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  protected
    function ValidarObrigatorios: boolean; override;
  public
    { Public declarations }
  end;

var
  fmCadastroFornecedores: TfmCadastroFornecedores;

implementation

{$R *.dfm}

{ TfmCadastroFornecedores }

procedure TfmCadastroFornecedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fmCadastroFornecedores := nil;
end;

function TfmCadastroFornecedores.ValidarObrigatorios: boolean;
begin
  if Trim(edId.Text) = '' then
  begin
    ShowMessage('Informe o id.');
    edId.SetFocus;
    Exit(false);
  end;

  if Trim(edNome.Text) = '' then
  begin
    ShowMessage('Informe o nome.');
    edNome.SetFocus;
    Exit(false);
  end;

  if Trim(edEndereco.Text) = '' then
  begin
    ShowMessage('Informe o endereco.');
    edEndereco.SetFocus;
    Exit(false);
  end;

  if Trim(edEmail.Text) = '' then
  begin
    ShowMessage('Informe o email.');
    edEmail.SetFocus;
    Exit(false);
  end;

  Result := inherited ValidarObrigatorios;
end;

end.
