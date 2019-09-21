unit uCadastroBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfmCadastroBase = class(TForm)
    pcPrincipal: TPageControl;
    tsGrid: TTabSheet;
    tsEdits: TTabSheet;
    pnButtonsGrid: TPanel;
    btInserir: TButton;
    btEditar: TButton;
    btExcluit: TButton;
    grDados: TDBGrid;
    pnButtonsEdits: TPanel;
    btSalvar: TButton;
    btCancelar: TButton;
    qrDados: TFDQuery;
    dsDados: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCadastroBase: TfmCadastroBase;

implementation

{$R *.dfm}

uses
  udmPrincipal;

procedure TfmCadastroBase.btCancelarClick(Sender: TObject);
begin
  pcPrincipal.ActivePage := tsGrid;
end;

procedure TfmCadastroBase.btEditarClick(Sender: TObject);
begin
  pcPrincipal.ActivePage := tsEdits;
end;

procedure TfmCadastroBase.btInserirClick(Sender: TObject);
begin
  pcPrincipal.ActivePage := tsEdits;
end;

procedure TfmCadastroBase.btSalvarClick(Sender: TObject);
begin
  pcPrincipal.ActivePage := tsGrid;
end;

procedure TfmCadastroBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCadastroBase.FormShow(Sender: TObject);
var
  I: Integer;
begin
  // Esconder as abas do page control
  for I := 0 to pcPrincipal.PageCount - 1 do
    pcPrincipal.Pages[I].TabVisible := false;

  pcPrincipal.ActivePage := tsGrid;
end;

end.
