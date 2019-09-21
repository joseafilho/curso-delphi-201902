unit uCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroBase, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls;

type
  TfmCadastroClientes = class(TfmCadastroBase)
    qrDadosID: TIntegerField;
    qrDadosNOME: TStringField;
    qrDadosENDERECO: TStringField;
    qrDadosEMAIL: TStringField;
    qrDadosCPF: TStringField;
    qrDadosTELEFONE: TStringField;
    Label1: TLabel;
    edId: TDBEdit;
    edNome: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    edEndereco: TDBEdit;
    Label4: TLabel;
    edEmail: TDBEdit;
    Label5: TLabel;
    edCPF: TDBEdit;
    Label6: TLabel;
    edTelefone: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCadastroClientes: TfmCadastroClientes;

implementation

{$R *.dfm}

procedure TfmCadastroClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fmCadastroClientes := nil;
end;

end.
