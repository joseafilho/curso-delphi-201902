program Pivo;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {fmPrincipal},
  udmPrincipal in 'udmPrincipal.pas' {dmPrincipal: TDataModule},
  uCadastroBase in 'uCadastroBase.pas' {fmCadastroBase},
  uCadastroClientes in 'uCadastroClientes.pas' {fmCadastroClientes},
  uSystemUtils in 'uSystemUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmPrincipal, fmPrincipal);
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.Run;
end.
