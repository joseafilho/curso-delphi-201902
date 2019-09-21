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
    procedure Clientes1Click(Sender: TObject);
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
  uCadastroClientes;

procedure TfmPrincipal.Clientes1Click(Sender: TObject);
begin
  if fmCadastroClientes = nil then
    fmCadastroClientes := TfmCadastroClientes.Create(Self);

  fmCadastroClientes.Show;
end;

end.
