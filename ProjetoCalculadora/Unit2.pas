unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    ButtonMais: TButton;
    ButtonVirgula: TButton;
    Button1: TButton;
    ButtonIgual: TButton;
    Button2: TButton;
    Button3: TButton;
    ButtonMenos: TButton;
    Button6: TButton;
    Button4: TButton;
    Button5: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    ButtonVezes: TButton;
    ButtonApagarTudo: TButton;
    ButtonApagar: TButton;
    ButtonDivisao: TButton;
    Label1: TLabel;
    Button: TButton;
    Button10: TButton;
    Button11: TButton;
    procedure Numero(Sender: TObject);
    procedure Operacao(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure igual(Sender: TObject);
    procedure realizarOperacao;
    procedure verificaErro;
    procedure limparTudo(Sender: TObject);
    procedure Apagar1(Sender: TObject);
    procedure porVirgula(Sender: TObject);
    procedure temperatura(Sender: TObject);
    procedure velocidade(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    Valor1: Double;
    Valor2: Double;
    texto: string;
    SimboloDaoperacao: char;
    TemValor1: boolean;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}


uses Unit1, Unit3;

procedure TForm2.Operacao(Sender: TObject);
begin
  verificaErro;
  if TemValor1 = false then
  begin
    Valor1 := StrToFloatdef(Label1.Caption, 0);
    TemValor1 := true;
  end
  else
    realizarOperacao();

  SimboloDaoperacao := (Sender as TButton).Caption[2];
  Label1.Caption := Label1.Caption + (Sender as TButton).Caption;
  Label1.Caption := stringreplace(Label1.Caption, '&', '', [rfReplaceAll]);
  texto := Label1.Caption;
end;

procedure TForm2.verificaErro;
begin
  if Label1.Caption = 'Erro Ao Dividir por 0' then
  begin
    Label1.Caption := '0';
  end
  else
end;

procedure TForm2.realizarOperacao;
begin

  texto := stringreplace(Label1.Caption, texto, '', [rfReplaceAll]);
  Valor2 := StrToFloatdef(texto, 0);

   if (SimboloDaoperacao = '/') and (Valor2 = 0) then
  begin
    limparTudo(ButtonApagarTudo);
    Label1.Caption := 'Erro Ao Dividir por 0';
    exit;
  end;

  case SimboloDaoperacao of
    '*':
      Valor1 := Valor1 * Valor2;
    '+':
      Valor1 := Valor1 + Valor2;
    '-':
      Valor1 := Valor1 - Valor2;
    '/':
      Valor1 := Valor1 / Valor2;
  end;
    TemValor1 := false;
    Label1.Caption := Valor1.ToString;
end;

procedure TForm2.igual(Sender: TObject);
begin
  verificaErro;
  if Valor1 = null then
  begin
    Label1.Caption := '0';
  end
  else
  begin
    realizarOperacao();
  end;
end;

procedure TForm2.limparTudo(Sender: TObject);
begin
  Label1.Caption := '0';
  Valor1 := 0;
  Valor2 := 0;
  texto := '';
  TemValor1 := false;
end;

procedure TForm2.Apagar1(Sender: TObject);
begin
  texto := Label1.Caption;
  if Length(Label1.Caption) > 1 then
    Delete(texto, Length(Label1.Caption), 1)
  else if Length(Label1.Caption) = 1 then
    texto := '0';

  Label1.Caption := texto;
end;

procedure TForm2.velocidade(Sender: TObject);
var
  NovoForm3: TForm3;
begin
  NovoForm3 := TForm3.Create(nil);
  NovoForm3.SetFormAnterior(self);
  NovoForm3.Show;
  Form2.hide;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  texto := '';
  Label1.Caption := '0';
  TemValor1 := false;
  KeyPreview := True;
end;

procedure TForm2.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
    igual(ButtonIgual)
 else if Key = #8 then
    Apagar1(ButtonApagar)
 else if Key = #46 then
    limparTudo(ButtonApagarTudo)

end;

procedure TForm2.Numero(Sender: TObject);
begin
  verificaErro;
  if Label1.Caption = '0' then
    Label1.Caption := (Sender as TButton).Caption
  else
    Label1.Caption := Label1.Caption + (Sender as TButton).Caption;

  Label1.Caption := stringreplace(Label1.Caption, '&', '', [rfReplaceAll]);
end;

procedure TForm2.porVirgula(Sender: TObject);
begin
  if Pos(FormatSettings.DecimalSeparator, Label1.Caption) = 0 then
    Label1.Caption := Label1.Caption + FormatSettings.DecimalSeparator;
  Label1.Caption := stringreplace(Label1.Caption, '&', '', [rfReplaceAll]);

end;

procedure TForm2.temperatura(Sender: TObject);
var
  NovoForm1: TForm1;
begin
  NovoForm1 := TForm1.Create(nil);
  NovoForm1.SetFormAnterior(self);
  NovoForm1.Show;
  Form2.hide;
end;

end.
