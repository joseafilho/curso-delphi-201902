program Pivo;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {fmPrincipal},
  uTest in 'uTest.pas' {fmTest},
  udmPrincipal in 'udmPrincipal.pas' {dmPrincipal: TDataModule},
  uCadastroBase in 'uCadastroBase.pas' {fmCadastroBase};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmPrincipal, fmPrincipal);
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.Run;
end.
