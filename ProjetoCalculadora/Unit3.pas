unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,Math;

type
  TForm3 = class(TForm)
    Button11: TButton;
    ButtonIgual: TButton;
    ButtonVirgula: TButton;
    Button: TButton;
    Button2: TButton;
    Button1: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button3: TButton;
    ButtonApagar: TButton;
    ButtonApagarTudo: TButton;
    Button9: TButton;
    Button8: TButton;
    Button12: TButton;
    Button7: TButton;
    label16: TLabel;
    label15: TLabel;
    KMH: TLabel;
    MS: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Numero(Sender: TObject);
    procedure porVirgula(Sender: TObject);
    function EscolherLabel:TLabel;
    procedure voltar(Sender: TObject);
    procedure inverter(Sender: TObject);
    procedure limparTudo(Sender: TObject);
    procedure Apagar1(Sender: TObject);
    procedure igual(Sender: TObject);
    procedure SetFormAnterior(AForm: TForm);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  eKm:boolean;
  LabelPrincipal:Tlabel;
  VlKm:double;
  VlMs:double;
  formAnterior:TForm;
   texto:string;

implementation

{$R *.dfm}

procedure TForm3.Numero(Sender: TObject);
begin
    if  Length(labelPrincipal.Caption) < 10 then
      begin
        if LabelPrincipal.Caption = '0' then
          LabelPrincipal.Caption :=(Sender as TButton).Caption
        else
          LabelPrincipal.Caption := LabelPrincipal.Caption + (Sender as TButton).Caption
  end
end;


procedure TForm3.porVirgula(Sender: TObject);
begin
if Pos(FormatSettings.DecimalSeparator, LabelPrincipal.Caption) = 0 then
    LabelPrincipal.Caption := LabelPrincipal.Caption + FormatSettings.DecimalSeparator;
end;

function TForm3.EscolherLabel: TLabel;
begin
  if eKm then
    Result := KMH
  else
    Result := MS;
end;


procedure TForm3.FormCreate(Sender: TObject);
begin
    KMH.Caption := '0';
    MS.Caption := '0';
    eKm := true;
    labelPrincipal := EscolherLabel;
end;

procedure TForm3.igual(Sender: TObject);
begin
  if eKm then
    begin
     VlKm:= StrToFloatdef(KMH.Caption,0);
      VlMs:= (VlKm * 3.6);
       MS.Caption:=  SimpleRoundTo(VlMs,-2).ToString;
    end
  else
    begin
      VlMs:= StrToFloatdef(MS.Caption,0);
        VlKm:= (VlMs / 3.6);
       KMH.Caption:= SimpleRoundTo(VlKm,-2).ToString;
    end;
end;

procedure TForm3.inverter(Sender: TObject);
begin
  eKm := not eKm;
  labelPrincipal:= EscolherLabel;
    KMH.Caption := '0';
    MS.Caption := '0';
end;

procedure TForm3.voltar(Sender: TObject);
begin
  FormAnterior.Show;
  Self.Release;
end;

procedure TForm3.SetFormAnterior(AForm: TForm);
begin
  FormAnterior := AForm;
end;

procedure TForm3.limparTudo(Sender: TObject);
begin
    KMH.Caption := '0';
    MS.Caption := '0';
    vlkm:= 0;
    vlms:= 0;
end;

procedure TForm3.Apagar1(Sender: TObject);
begin
  texto := labelPrincipal.Caption;
  if Length(labelPrincipal.Caption) > 1 then
    Delete(texto, Length(labelPrincipal.Caption), 1)
  else if  Length(labelPrincipal.Caption) = 1  then
   texto := '0';

  labelPrincipal.Caption:= texto;
  ekm := not ekm;
  labelPrincipal:= EscolherLabel;
  labelPrincipal.Caption := '0';
  ekm := not ekm;
  labelPrincipal:= EscolherLabel;
end;


end.
