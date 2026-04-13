unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    BtTeste: TButton;
    Label1: TLabel;
    procedure testeBt(Sender: TObject);
  private
    { Private declarations }
    valorTeste : integer;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.testeBt(Sender: TObject);
begin
  valorTeste
  showmessage('teste com o bt');
end;

end.
