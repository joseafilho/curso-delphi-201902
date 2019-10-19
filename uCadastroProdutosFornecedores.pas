unit uCadastroProdutosFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroBase, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Mask;

type
  TfmCadastroProdutosFornecedores = class(TfmCadastroBase)
    qrFornecedores: TFDQuery;
    dsFornecedores: TDataSource;
    qrFornecedoresID: TIntegerField;
    qrFornecedoresNOME: TStringField;
    Label1: TLabel;
    lkFornecedor: TDBLookupComboBox;
    edIdProduto: TEdit;
    Label2: TLabel;
    edNomeProduto: TEdit;
    qrDadosPRODUTO_ID: TIntegerField;
    qrDadosFORNECEDOR_ID: TIntegerField;
    qrDadosFORNECEDOR: TStringField;
    edIdFornecedor: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure qrDadosBeforePost(DataSet: TDataSet);
    procedure qrDadosBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCadastroProdutosFornecedores: TfmCadastroProdutosFornecedores;

implementation

{$R *.dfm}

uses udmPrincipal;

procedure TfmCadastroProdutosFornecedores.FormShow(Sender: TObject);
begin
  inherited;
  qrFornecedores.Open;
end;

procedure TfmCadastroProdutosFornecedores.qrDadosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qrDados.ParamByName('PRODUTO_ID').AsString := edIdProduto.Text;
end;

procedure TfmCadastroProdutosFornecedores.qrDadosBeforePost(DataSet: TDataSet);
begin
  inherited;
  qrDados.FieldByName('PRODUTO_ID').AsString := edIdProduto.Text;
end;

end.
