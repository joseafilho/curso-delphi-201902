unit uRelatorioProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfmRelatorioProduto = class(TForm)
    rpProdutos: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    qrProdutos: TFDQuery;
    dsProdutos: TDataSource;
    qrProdutosID: TIntegerField;
    qrProdutosNOME: TStringField;
    qrProdutosCATEGORIA_ID: TIntegerField;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand4: TRLBand;
    qrProdutosVALOR: TFMTBCDField;
    RLDBResult1: TRLDBResult;
    procedure rpProdutosBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDBResult1Compute(Sender: TObject; var Value: Variant;
      var AText: string; var ComputeIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRelatorioProduto: TfmRelatorioProduto;

implementation

{$R *.dfm}

uses udmPrincipal;

procedure TfmRelatorioProduto.RLDBResult1Compute(Sender: TObject;
  var Value: Variant; var AText: string; var ComputeIt: Boolean);
begin
  Value := qrProdutosVALOR.AsCurrency;
end;

procedure TfmRelatorioProduto.rpProdutosBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  qrProdutos.Open;
end;

end.
