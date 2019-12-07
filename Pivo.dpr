program Pivo;

uses
  Vcl.Forms,
  Vcl.Controls,
  uPrincipal in 'uPrincipal.pas' {fmPrincipal},
  udmPrincipal in 'udmPrincipal.pas' {dmPrincipal: TDataModule},
  uCadastroBase in 'uCadastroBase.pas' {fmCadastroBase},
  uCadastroClientes in 'uCadastroClientes.pas' {fmCadastroClientes},
  uSystemUtils in 'uSystemUtils.pas',
  uCadastroCategorias in 'uCadastroCategorias.pas' {fmCadastroCategorias},
  uCadastroFornecedores in 'uCadastroFornecedores.pas' {fmCadastroFornecedores},
  uCadastroProdutos in 'uCadastroProdutos.pas' {fmCadastroProdutos},
  uCadastroProdutosFornecedores in 'uCadastroProdutosFornecedores.pas' {fmCadastroProdutosFornecedores},
  uMovimentoEstoqueEntrada in 'uMovimentoEstoqueEntrada.pas' {fmMovimentoEstoqueEntrada},
  ufrConsultaProdutos in 'ufrConsultaProdutos.pas' {frConsultaProduto: TFrame},
  uConsultaProdutos in 'uConsultaProdutos.pas' {fmConsultaProdutos},
  uRelatorioProduto in 'uRelatorioProduto.pas' {fmRelatorioProduto},
  uRelatorioMovimentoEstoque in 'uRelatorioMovimentoEstoque.pas' {fmRelatorioMovimentoEstoque},
  uCadastroUsuarios in 'uCadastroUsuarios.pas' {fmCadastroUsuarios},
  uLogin in 'uLogin.pas' {fmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmPrincipal, fmPrincipal);
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.CreateForm(TfmLogin, fmLogin);

  if fmLogin.ShowModal = mrOk then
    Application.Run
  else
    Application.Terminate;
end.
