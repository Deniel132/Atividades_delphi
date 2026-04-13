unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Unit2, System.inifiles;

type
  TForm4 = class(TForm)
    amarelo: TShape;
    Button1: TButton;
    Button2: TButton;
    carcaca: TShape;
    Timer1: TTimer;
    verde: TShape;
    vermelho: TShape;
    procedure Back(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure iniciarTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    tempoVermelho:integer;
    tempoVerde:integer;
    tempoAmarelo:integer;
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  estaLigado: boolean;
  corAtiva: integer;

implementation

{$R *.dfm}


procedure TForm4.Back(Sender: TObject);
begin
  Form2.Show;
  Self.Release;
end;

procedure TForm4.FormCreate(Sender: TObject);
var
  LAquivoIni: Tinifile;
begin
 LAquivoIni:= Tinifile.Create(ExtractFilePath(paramStr(0)) + 'config.ini');
      try
        begin
          tempoVermelho:= LAquivoIni.ReadInteger('dados','tempoVermelho',5000);
          tempoVerde:= LAquivoIni.ReadInteger('dados','tempoVerde',4000);
          tempoAmarelo:= LAquivoIni.ReadInteger('dados','tempoAmarelo',1000);
          corAtiva:= LAquivoIni.ReadInteger('dados','CorAtiva',corAtiva);
          estaLigado := LAquivoIni.ReadBool('dados','estaLigado',estaLigado);
        end;
      finally
      freeAndNil(LAquivoIni);
      end;
end;

procedure TForm4.FormDestroy(Sender: TObject);
var
  LAquivoIni: Tinifile;
begin
      LAquivoIni:= Tinifile.Create(ExtractFilePath(paramStr(0)) + 'config.ini');
      try
        begin
          LAquivoIni.WriteInteger('dados','tempoVermelho',tempoVermelho);
          LAquivoIni.WriteInteger('dados','tempoVerde',tempoVerde);
          LAquivoIni.WriteInteger('dados','tempoAmarelo',tempoAmarelo);
          LAquivoIni.WriteInteger('dados','CorAtiva',corAtiva);
          LAquivoIni.WriteBool('dados','estaLigado',estaLigado);
        end;
      finally
      freeAndNil(LAquivoIni);
      end;
end;

procedure TForm4.iniciarTimer(Sender: TObject);
begin
  vermelho.Brush.Color := clblack;
  verde.Brush.Color := clblack;
  amarelo.Brush.Color := clblack;
  estaLigado := not estaLigado;
  Timer1.Enabled := estaLigado;
  Timer1.Interval := 100;
end;

procedure TForm4.Timer1Timer(Sender: TObject);
begin
  vermelho.Brush.Color := clblack;
  verde.Brush.Color := clblack;
  amarelo.Brush.Color := clblack;

  if corAtiva = 4 then
  begin
    corAtiva := 1;
  end;

  case corAtiva of
    1:
      begin
        vermelho.Brush.Color := clred;
        Timer1.Interval := tempoVermelho;
      end;
    2:
      begin
        verde.Brush.Color := clGreen;
        Timer1.Interval := tempoVerde;
      end;
    3:
      begin
        amarelo.Brush.Color := clYellow;
        Timer1.Interval := tempoAmarelo;
      end;
  end;

  corAtiva := corAtiva + 1;
end;

end.
