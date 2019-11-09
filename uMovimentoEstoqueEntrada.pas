unit uMovimentoEstoqueEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ufrConsultaProdutos,
  Vcl.Samples.Spin, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfmMovimentoEstoqueEntrada = class(TForm)
    frConsultaProduto1: TfrConsultaProduto;
    spQuantidade: TSpinEdit;
    Label1: TLabel;
    btConfirmar: TButton;
    btCancelar: TButton;
    qrEstoque: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btConfirmarClick(Sender: TObject);
  private
    FQuantidadeAtual: integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMovimentoEstoqueEntrada: TfmMovimentoEstoqueEntrada;

implementation

{$R *.dfm}

uses 
  udmPrincipal, uSystemUtils;

procedure TfmMovimentoEstoqueEntrada.btConfirmarClick(Sender: TObject);
const
  ESTOQUE_ENTRADA = 1;
var
  TransactionOk: boolean;
begin
  TransactionOk := false;

  // Pegando a Quantidade do estoque
  qrEstoque.Close;
  qrEstoque.SQL.Text := 'SELECT QUANTIDADE FROM ESTOQUE ' +
                        'WHERE PRODUTO_ID = ' + frConsultaProduto1.edId.Text;
  qrEstoque.Open;
  FQuantidadeAtual := qrEstoque.FieldByName('QUANTIDADE').AsInteger;
  qrEstoque.Close;

  dmPrincipal.fdConn.StartTransaction;
  try
    try
      // Inserindo movimentacao
      qrEstoque.SQL.Text := 'INSERT INTO MOVIMENTOS_ESTOQUE( '+
                              'PRODUTO_ID, '+
                              'TIPO, '+
                              'QUANTIDADE, '+
                              'DATA_MOVIMENTO) '+
                            'VALUES( '+
                              ':PRODUTO_ID, '+
                              ':TIPO, '+
                              ':QUANTIDADE, '+
                              ':DATA_MOVIMENTO)';

      qrEstoque.ParamByName('PRODUTO_ID').AsString := frConsultaProduto1.edId.Text;
      qrEstoque.ParamByName('TIPO').AsInteger := ESTOQUE_ENTRADA;
      qrEstoque.ParamByName('QUANTIDADE').AsInteger := spQuantidade.Value;
      qrEstoque.ParamByName('DATA_MOVIMENTO').AsDateTime := Now;
      qrEstoque.ExecSQL;

      // Atualizar quantidade
      qrEstoque.SQL.Text := 'UPDATE OR INSERT INTO ESTOQUE(PRODUTO_ID, QUANTIDADE) '+
                            'VALUES(:PRODUTO_ID, :QUANTIDADE) MATCHING(PRODUTO_ID) ';

      qrEstoque.ParamByName('PRODUTO_ID').AsString := frConsultaProduto1.edId.Text;
      qrEstoque.ParamByName('QUANTIDADE').AsInteger := FQuantidadeAtual + spQuantidade.Value;
      qrEstoque.ExecSQL;

      TransactionOk := true;
      ShowMessage('Estoque atualizdo com sucesso.');
    except
      on E: Exception do
      begin
        MsgWarning('Evento inesperado: ' + E.Message);
        TransactionOk := false;
      end;
    end;
  finally
    if TransactionOk then
      dmPrincipal.fdConn.Commit
    else
      dmPrincipal.fdConn.Rollback;
  end;
end;

procedure TfmMovimentoEstoqueEntrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  fmMovimentoEstoqueEntrada := nil;
end;

end.
