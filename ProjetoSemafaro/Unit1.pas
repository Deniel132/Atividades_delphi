unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Label2: TLabel;
    Button2: TButton;
    procedure proximoForm(Sender: TObject);
    procedure passarTexto(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm1.passarTexto(Sender: TObject);
begin
  Label2.Caption := Edit1.Text
end;

procedure TForm1.proximoForm(Sender: TObject);
begin
  Form2.Show;
  Self.Release;
end;

end.
