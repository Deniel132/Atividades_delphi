unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,Math;

type
  TForm1 = class(TForm)
    ButtonMais: TButton;
    ButtonIgual: TButton;
    Button: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ButtonApagar: TButton;
    ButtonApagarTudo: TButton;
    LabelCelsius: TLabel;
    Button9: TButton;
    Button6: TButton;
    Button5: TButton;
    Button4: TButton;
    Button7: TButton;
    Button8: TButton;
    ButtonVirgula: TButton;
    LabelFahrenheit: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button11: TButton;
    Button12: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Numero(Sender: TObject);
    procedure porVirgula(Sender: TObject);
    function EscolherLabel:TLabel;
    procedure voltar(Sender: TObject);
    procedure inverter(Sender: TObject);
    procedure limparTudo(Sender: TObject);
    procedure Apagar1(Sender: TObject);
    procedure mudarSinal(Sender: TObject);
    procedure igual(Sender: TObject);
    procedure SetFormAnterior(AForm: TForm);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  eCelsius:boolean;
  LabelPrincipal:Tlabel;
  tempCelsius:double;
  tempFahrenheit:double;
  FormAnterior: TForm;
  texto:string;

implementation

{$R *.dfm}


procedure TForm1.Numero(Sender: TObject);
begin
    if  Length(labelPrincipal.Caption) < 10 then
      begin
        if LabelPrincipal.Caption = '0' then
          LabelPrincipal.Caption :=(Sender as TButton).Caption
        else
          LabelPrincipal.Caption := LabelPrincipal.Caption + (Sender as TButton).Caption
  end
end;


procedure TForm1.porVirgula(Sender: TObject);
begin
if Pos(FormatSettings.DecimalSeparator, LabelPrincipal.Caption) = 0 then
    LabelPrincipal.Caption := LabelPrincipal.Caption + FormatSettings.DecimalSeparator;
end;

function TForm1.EscolherLabel: TLabel;
begin
  if eCelsius then
    Result := labelCelsius
  else
    Result := LabelFahrenheit;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
    LabelCelsius.Caption := '0';
    LabelFahrenheit.Caption := '0';
    eCelsius := true;
    labelPrincipal := EscolherLabel;
end;

procedure TForm1.igual(Sender: TObject);
begin
  if eCelsius then
    begin
     tempCelsius:= StrToFloatdef(LabelCelsius.Caption,0);
      tempFahrenheit:= (tempCelsius * 9/5) + 32;
       LabelFahrenheit.Caption:=  SimpleRoundTo(tempFahrenheit,-2).ToString;
    end
  else
    begin
      tempFahrenheit:= StrToFloatdef(LabelFahrenheit.Caption,0);
        tempCelsius:= (tempFahrenheit - 32) * 5/9 ;
       LabelCelsius.Caption:= SimpleRoundTo(tempCelsius,-2).ToString;
    end;
end;

procedure TForm1.inverter(Sender: TObject);
begin
  eCelsius := not eCelsius;
  labelPrincipal:= EscolherLabel;
    LabelCelsius.Caption := '0';
    LabelFahrenheit.Caption := '0';
end;

procedure TForm1.voltar(Sender: TObject);
begin
  FormAnterior.Show;
  Self.Release;
end;

procedure TForm1.SetFormAnterior(AForm: TForm);
begin
  FormAnterior := AForm;
end;


procedure TForm1.limparTudo(Sender: TObject);
begin
    LabelCelsius.Caption := '0';
    LabelFahrenheit.Caption := '0';
    tempCelsius:= 0;
    tempFahrenheit:= 0;
end;

procedure TForm1.mudarSinal(Sender: TObject);
begin
      if LabelPrincipal.Caption[1] = '-' then
          LabelPrincipal.Caption:= stringreplace(LabelPrincipal.Caption,'-','',[rfReplaceAll])
      else
        LabelPrincipal.Caption:= '-' +  LabelPrincipal.Caption;
end;

procedure TForm1.Apagar1(Sender: TObject);
begin
  texto := labelPrincipal.Caption;
  if Length(labelPrincipal.Caption) > 1 then
    Delete(texto, Length(labelPrincipal.Caption), 1)
  else if  Length(labelPrincipal.Caption) = 1  then
   texto := '0';

  labelPrincipal.Caption:= texto;
  eCelsius := not eCelsius;
  labelPrincipal:= EscolherLabel;
  labelPrincipal.Caption := '0';
  eCelsius := not eCelsius;
  labelPrincipal:= EscolherLabel;
end;
end.
