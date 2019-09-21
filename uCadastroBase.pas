unit uCadastroBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCadastroBase: TfmCadastroBase;

implementation

{$R *.dfm}

end.
