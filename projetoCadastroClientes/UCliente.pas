unit UCliente;

interface

type
  Tcliente = class
  private
    Fcodigo: integer;
    Fnome: string;
    Fcpf: string;
    FdataNasc: TDateTime;
  public
    property Codigo: integer read Fcodigo write Fcodigo;
    property Nome: string read Fnome write Fnome;
    property CPF: string read Fcpf write Fcpf;
    property DataNasc: TDateTime read FdataNasc write FdataNasc;
  end;

implementation

end.
