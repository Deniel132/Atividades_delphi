program ProjectcadastroClientes;

uses
  Vcl.Forms,
  Uprincipal in 'Uprincipal.pas' {FrmHome},
  UDB in 'UDB.pas' {DataModule1: TDataModule},
  UClientList in 'UClientList.pas' {FrmClientList},
  UCadastroCliente in 'UCadastroCliente.pas' {FrmCadastro},
  UCliente in 'UCliente.pas',
  UServiceCliente in 'UServiceCliente.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmHome, FrmHome);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFrmCadastro, FrmCadastro);
  Application.CreateForm(TFrmCadastro, FrmCadastro);
  Application.Run;
end.
