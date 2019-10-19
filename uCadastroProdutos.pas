unit uCadastroProdutos;

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
  TfmCadastroProdutos = class(TfmCadastroBase)
    qrDadosNOME: TStringField;
    qrDadosVALOR: TFMTBCDField;
    qrDadosID: TFDAutoIncField;
    Label1: TLabel;
    edId: TDBEdit;
    Label2: TLabel;
    edNome: TDBEdit;
    Label3: TLabel;
    Valor: TDBEdit;
    btFornecedores: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btFornecedoresClick(Sender: TObject);
  private
    { Private declarations }
  protected
    function ValidarObrigatorios: boolean; override;
  public
    { Public declarations }
  end;

var
  fmCadastroProdutos: TfmCadastroProdutos;

implementation

{$R *.dfm}

uses uCadastroProdutosFornecedores;

{ TfmCadastroProdutos }

procedure TfmCadastroProdutos.btFornecedoresClick(Sender: TObject);
begin
  inherited;

  fmCadastroProdutosFornecedores := TfmCadastroProdutosFornecedores.Create(Self);
  try
    fmCadastroProdutosFornecedores.edIdProduto.Text := qrDadosID.AsString;
    fmCadastroProdutosFornecedores.edNomeProduto.Text := qrDadosNOME.AsString;
    fmCadastroProdutosFornecedores.ShowModal;
  finally
    fmCadastroProdutosFornecedores.Free;
  end;
end;

procedure TfmCadastroProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fmCadastroProdutos := nil;
end;

function TfmCadastroProdutos.ValidarObrigatorios: boolean;
begin
  if Trim(edNome.Text) = '' then
  begin
    ShowMessage('Informe o nome.');
    ednome.SetFocus;
    Exit(false);
  end;

  Result := inherited ValidarObrigatorios;
end;

end.
