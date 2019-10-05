unit uCadastroCategorias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroBase, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TfmCadastroCategorias = class(TfmCadastroBase)
    qrDadosDESCRICAO: TStringField;
    qrDadosID: TFDAutoIncField;
    Label1: TLabel;
    edId: TDBEdit;
    Label2: TLabel;
    edDescricao: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  protected
    function ValidarObrigatorios: boolean; override;
  public
    { Public declarations }
  end;

var
  fmCadastroCategorias: TfmCadastroCategorias;

implementation

{$R *.dfm}

{ TfmCadastroCategorias }

procedure TfmCadastroCategorias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fmCadastroCategorias := nil;
end;

function TfmCadastroCategorias.ValidarObrigatorios: boolean;
begin
  if Trim(edDescricao.Text) = '' then
  begin
    ShowMessage('Informe a descrição.');
    edDescricao.SetFocus;
    Exit(false);
  end;

  Result := inherited ValidarObrigatorios;
end;

end.
