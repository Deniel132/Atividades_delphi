unit Uprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, UClientList, UDB,
  Vcl.Menus, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus;

type
  TFrmHome = class(TForm)
    Shape5: TShape;
    Menu: TMainMenu;
    Cadastros1: TMenuItem;
    Cadastros2: TMenuItem;
    ButtonFechar: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure Cadastros2Click(Sender: TObject);
    procedure ButtonFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
  public
    { Public declarations }
  end;

var
  FrmHome: TFrmHome;

implementation

{$R *.dfm}


procedure TFrmHome.ButtonFecharClick(Sender: TObject);
begin
  FrmHome.close;
end;

procedure TFrmHome.Cadastros2Click(Sender: TObject);
var
  LClientList: TFrmClientList;
begin
  LClientList := TFrmClientList.Create(nil);
  LClientList.ShowModal;
end;

procedure TFrmHome.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  self.release;
end;

procedure TFrmHome.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    ButtonFechar.Click;
end;

end.
