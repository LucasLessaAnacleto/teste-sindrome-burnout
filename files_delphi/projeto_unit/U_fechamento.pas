unit U_fechamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFrm_fechamento = class(TForm)
    background: TImage;
    sim: TImage;
    nao: TImage;
    procedure FormActivate(Sender: TObject);
    procedure naoClick(Sender: TObject);
    procedure simClick(Sender: TObject);

  private
    { Private declarations }
     procedure fecha;
     procedure abre;
  public
    { Public declarations }
  end;

var
  Frm_fechamento: TFrm_fechamento;

implementation

{$R *.dfm}

uses U_abertura, U_pagina1, U_pagina2, U_pagina3, DM, U_pagina4;

procedure TFrm_fechamento.abre;
begin
  case codigo of
   1: frm_abertura.Show;
   2: frm_pagina1.Show;
   3: frm_pagina2.Show;
   4: frm_pagina3.Show;
   5: frm_pagina4.Show;
 end;
end;

procedure TFrm_fechamento.fecha;
begin
 showmessage(String(teste));
 case codigo of
   1:begin
    frm_abertura.close;
   end;
   2:begin
    frm_pagina1.close;
   end;
   3:begin
   frm_pagina2.close;
   end;
   4:begin
   frm_pagina3.close;
   end;
   5:begin
   frm_pagina4.close;
   end;
 end;

end;

procedure TFrm_fechamento.FormActivate(Sender: TObject);
begin
 background.Left:=0;
 background.Top:=0;
end;

procedure TFrm_fechamento.naoClick(Sender: TObject);
begin
 hide;
 abre;
 close;
end;

procedure TFrm_fechamento.simClick(Sender: TObject);
begin
 CloseAction:= caFree;
 fecha;
 close;
end;

end.
