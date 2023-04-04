unit U_pagina4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  Tfrm_pagina4 = class(TForm)
    background: TImage;
    Cb1: TComboBox;
    cb2: TComboBox;
    Cb3: TComboBox;
    continuar: TImage;
    procedure FormActivate(Sender: TObject);
    procedure Cb1Change(Sender: TObject);
    procedure cb2Change(Sender: TObject);
    procedure Cb3Change(Sender: TObject);
    procedure continuarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pagina4: Tfrm_pagina4;

implementation

{$R *.dfm}

uses DM, U_resultado;

procedure Tfrm_pagina4.Cb1Change(Sender: TObject);
begin
 if (cb1.ItemIndex >= 0)and(cb2.ItemIndex >= 0)and(cb3.ItemIndex >= 0) then
 begin
   continuar.enabled:= true;
 end;
end;

procedure Tfrm_pagina4.cb2Change(Sender: TObject);
begin
 if (cb1.ItemIndex >= 0)and(cb2.ItemIndex >= 0)and(cb3.ItemIndex >= 0) then
 begin
   continuar.enabled:= true;
 end;
end;

procedure Tfrm_pagina4.Cb3Change(Sender: TObject);
begin
 if (cb1.ItemIndex >= 0)and(cb2.ItemIndex >= 0)and(cb3.ItemIndex >= 0) then
 begin
   continuar.enabled:= true;
 end;
end;

procedure Tfrm_pagina4.continuarClick(Sender: TObject);
begin
 teste:=teste+(cb1.ItemIndex+1)+(cb2.ItemIndex+1)+(cb3.ItemIndex+1);
 hide;
 application.CreateForm(Tfrm_resultado,Frm_resultado);
 frm_resultado.ShowModal;
 close;
end;

procedure Tfrm_pagina4.FormActivate(Sender: TObject);
begin
 continuar.Enabled:=false;
end;

procedure Tfrm_pagina4.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;
 key:=#0;
end;

end.
