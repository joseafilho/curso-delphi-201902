unit uMovimentoEstoqueEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ufrConsultaProdutos;

type
  TfmMovimentoEstoqueEntrada = class(TForm)
    frConsultaProduto1: TfrConsultaProduto;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMovimentoEstoqueEntrada: TfmMovimentoEstoqueEntrada;

implementation

{$R *.dfm}

procedure TfmMovimentoEstoqueEntrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  fmMovimentoEstoqueEntrada := nil;
end;

end.
