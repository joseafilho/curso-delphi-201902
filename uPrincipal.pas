unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls;

type
  TfmPrincipal = class(TForm)
    mmPrincipal: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Produtos1: TMenuItem;
    Categorias1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Movimentos1: TMenuItem;
    Vendas1: TMenuItem;
    Relatrios1: TMenuItem;
    Estoque1: TMenuItem;
    sbPrincipal: TStatusBar;
    Estoque2: TMenuItem;
    Entradas1: TMenuItem;
    Sadas1: TMenuItem;
    ListagemProdutos1: TMenuItem;
    procedure Clientes1Click(Sender: TObject);
    procedure Categorias1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Entradas1Click(Sender: TObject);
    procedure ListagemProdutos1Click(Sender: TObject);
    procedure Estoque1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPrincipal: TfmPrincipal;

implementation

{$R *.dfm}

uses
  uCadastroClientes, uCadastroCategorias, uCadastroFornecedores,
  uCadastroProdutos, uMovimentoEstoqueEntrada, uRelatorioProduto,
  uRelatorioMovimentoEstoque;

procedure TfmPrincipal.Categorias1Click(Sender: TObject);
begin
  if fmCadastroCategorias = nil then
    fmCadastroCategorias := TfmCadastroCategorias.Create(Self);

  fmCadastroCategorias.Show;
end;

procedure TfmPrincipal.Clientes1Click(Sender: TObject);
begin
  if fmCadastroClientes = nil then
    fmCadastroClientes := TfmCadastroClientes.Create(Self);

  fmCadastroClientes.Show;
end;

procedure TfmPrincipal.Entradas1Click(Sender: TObject);
begin
  if fmMovimentoEstoqueEntrada = nil then
    fmMovimentoEstoqueEntrada := TfmMovimentoEstoqueEntrada.Create(Self);

  fmMovimentoEstoqueEntrada.Show;
end;

procedure TfmPrincipal.Estoque1Click(Sender: TObject);
begin
  fmRelatorioMovimentoEstoque := TfmRelatorioMovimentoEstoque.Create(Self);
  fmRelatorioMovimentoEstoque.rpMovimentos.Preview;
end;

procedure TfmPrincipal.Fornecedores1Click(Sender: TObject);
begin
  if fmCadastroFornecedores = nil then
    fmCadastroFornecedores := TfmCadastroFornecedores.Create(Self);

  fmCadastroFornecedores.Show;
end;

procedure TfmPrincipal.ListagemProdutos1Click(Sender: TObject);
begin
  fmRelatorioProduto := TfmRelatorioProduto.Create(Self);
  fmRelatorioProduto.rpProdutos.Preview;
end;

procedure TfmPrincipal.Produtos1Click(Sender: TObject);
begin
  if fmCadastroProdutos = nil then
    fmCadastroProdutos := TfmCadastroProdutos.Create(Self);

  fmCadastroProdutos.Show;
end;

end.
