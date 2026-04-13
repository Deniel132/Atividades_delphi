unit UDB;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.IBDef, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.IB,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    DataSourceDeBuscaDaLista: TDataSource;
    BuscarListaDeClientes: TFDQuery;
    InserirValores: TFDQuery;
    BuscarClientePorId: TFDQuery;
    VerificaCpfExistente: TFDQuery;
    BuscarListaDeClientesid: TIntegerField;
    BuscarListaDeClientesname: TWideStringField;
    BuscarListaDeClientescpf: TWideStringField;
    BuscarListaDeClientesdata_nascimento: TDateField;
    procedure BuscarListaDeClientescpfGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public

  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


procedure TDataModule1.BuscarListaDeClientescpfGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var
  cpfFormatado: string;
begin
  cpfFormatado := Sender.AsString;
  if Length(cpfFormatado) = 11 then
  begin
    Insert('.', cpfFormatado, 4);
    Insert('.', cpfFormatado, 8);
    Insert('-', cpfFormatado, 12);
    Text := cpfFormatado;
  end
  else
    Text := cpfFormatado;
end;

end.
