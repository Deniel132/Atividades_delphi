unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    PaintBox: TPaintBox;
    procedure FormCreate(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}




procedure TForm2.FormCreate(Sender: TObject);
begin
      PaintBox.Canvas.Pen.Color:=clRed;
      PaintBox.Canvas.Pen.Width:=3;
      PaintBox.Canvas.Brush.Color := clred;

end;

procedure TForm2.PaintBoxPaint(Sender: TObject);
  var
    p: array[0..2] of tpoint;
begin
  paintBox.Canvas.Ellipse(125,125,325,325);
  paintBox.Canvas.Ellipse(150,0,300,150);

  PaintBox.Canvas.Pen.Color:=clBlack;
  paintBox.Canvas.Ellipse(180,40,200,60);
  paintBox.Canvas.Ellipse(250,40,270,60);

PaintBox.Canvas.Pen.Color:=RGB(255, 165, 0);
paintBox.Canvas.Brush.Color:= RGB(255, 165, 0);
p[0] := point(225,70);
p[1] := point(320,75);
p[2] := point(225,85);
paintBox.Canvas.Polygon(p);

PaintBox.Canvas.Pen.Color := clRed;
PaintBox.Canvas.Arc(190, 90, 250, 125, 190, 115, 250, 115);



end;

end.
