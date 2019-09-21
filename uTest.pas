unit uTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfmTest = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTest: TfmTest;

implementation

{$R *.dfm}

procedure TfmTest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fmTest := nil;
end;

end.
