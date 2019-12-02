unit uRelatorioMovimentoEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLReport, Vcl.StdCtrls, Vcl.DBCtrls,
  RLParser;

type
  TfmRelatorioMovimentoEstoque = class(TForm)
    rpMovimentos: TRLReport;
    qrDados: TFDQuery;
    dsDados: TDataSource;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    DBText1: TDBText;
    qrDadosID: TIntegerField;
    qrDadosNOME: TStringField;
    qrDadosTIPO: TIntegerField;
    qrDadosQUANTIDADE: TIntegerField;
    qrDadosDATA_MOVIMENTO: TDateField;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText3: TRLDBText;
    qrDadosTIPO_MOV_CF: TStringField;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    rlbTotalSaida: TRLLabel;
    rlbTotalEntrada: TRLLabel;
    RLLabel9: TRLLabel;
    procedure qrDadosCalcFields(DataSet: TDataSet);
    procedure rpMovimentosBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlbTotalSaidaBeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure rlbTotalEntradaBeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    FTotalSaida: integer;
    FTotalEntrada: integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRelatorioMovimentoEstoque: TfmRelatorioMovimentoEstoque;

implementation

{$R *.dfm}

uses udmPrincipal;

procedure TfmRelatorioMovimentoEstoque.qrDadosCalcFields(DataSet: TDataSet);
begin
  if qrDadosTIPO.AsInteger = 0 then
    qrDadosTIPO_MOV_CF.AsString := 'Saida'
  else
    qrDadosTIPO_MOV_CF.AsString := 'Entrada';
end;

procedure TfmRelatorioMovimentoEstoque.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if qrDadosTIPO.AsInteger = 0 then
    FTotalSaida := FTotalSaida + qrDadosQUANTIDADE.AsInteger
  else
    FTotalEntrada := FTotalEntrada + qrDadosQUANTIDADE.AsInteger;
end;

procedure TfmRelatorioMovimentoEstoque.rlbTotalEntradaBeforePrint(
  Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
  AText := IntToStr(FTotalEntrada);
end;

procedure TfmRelatorioMovimentoEstoque.rlbTotalSaidaBeforePrint(Sender: TObject;
  var AText: string; var PrintIt: Boolean);
begin
  AText := IntToStr(FTotalSaida);
end;

procedure TfmRelatorioMovimentoEstoque.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  FTotalSaida := 0;
  FTotalEntrada := 0;
end;

procedure TfmRelatorioMovimentoEstoque.rpMovimentosBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  qrDados.Open;
end;

end.
