unit uConsultaProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls;

type
  TfmConsultaProdutos = class(TForm)
    Panel1: TPanel;
    grDados: TDBGrid;
    qrConsulta: TFDQuery;
    dsConsulta: TDataSource;
    Label1: TLabel;
    edConsulta: TEdit;
    procedure FormShow(Sender: TObject);
    procedure edConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grDadosDblClick(Sender: TObject);
    procedure grDadosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure Consultar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmConsultaProdutos: TfmConsultaProdutos;

implementation

{$R *.dfm}

uses udmPrincipal;

const
  SQL_BASE = 'SELECT ID, NOME FROM PRODUTOS ';

procedure TfmConsultaProdutos.FormShow(Sender: TObject);
begin
  Consultar;
end;

procedure TfmConsultaProdutos.grDadosDblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfmConsultaProdutos.grDadosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    ModalResult := mrOk;
end;

procedure TfmConsultaProdutos.edConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    Consultar;
end;

procedure TfmConsultaProdutos.Consultar;
begin
  qrConsulta.Close;
  qrConsulta.SQL.Text := SQL_BASE;

  if Trim(edConsulta.Text) <> '' then
  begin
    qrConsulta.SQL.Text := qrConsulta.SQL.Text +
      'WHERE LOWER(NOME) LIKE ''%' + LowerCase(edConsulta.Text) + '%''';
  end;

  qrConsulta.Open;
end;

end.
