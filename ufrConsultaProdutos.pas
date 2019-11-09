unit ufrConsultaProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrConsultaProduto = class(TFrame)
    Label1: TLabel;
    edId: TEdit;
    edDescricao: TEdit;
    btConsultar: TButton;
    procedure btConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uConsultaProdutos;

procedure TfrConsultaProduto.btConsultarClick(Sender: TObject);
begin
  fmConsultaProdutos := TfmConsultaProdutos.Create(Self);
  try
    if fmConsultaProdutos.ShowModal = mrOk then
    begin
      edId.Text := fmConsultaProdutos.qrConsulta.FieldByName('ID').AsString;
      edDescricao.Text := fmConsultaProdutos.qrConsulta.FieldByName('NOME').AsString;
    end;
  finally
    fmConsultaProdutos.Free;
  end;
end;

end.
