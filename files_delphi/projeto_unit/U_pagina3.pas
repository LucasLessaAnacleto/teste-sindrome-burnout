unit U_pagina3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  Tfrm_pagina3 = class(TForm)
    background: TImage;
    continuar: TImage;
    Cb3: TComboBox;
    cb2: TComboBox;
    Cb1: TComboBox;
    procedure Cb3Change(Sender: TObject);
    procedure cb2Change(Sender: TObject);
    procedure Cb1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure continuarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pagina3: Tfrm_pagina3;

implementation

{$R *.dfm}

uses U_pagina4,DM;

procedure Tfrm_pagina3.Cb1Change(Sender: TObject);
begin
 if (cb1.ItemIndex >= 0)and(cb2.ItemIndex >= 0)and(cb3.ItemIndex >= 0) then
 begin
   continuar.enabled:=true;
 end;
end;

procedure Tfrm_pagina3.cb2Change(Sender: TObject);
begin
 if (cb1.ItemIndex >= 0)and(cb2.ItemIndex >= 0)and(cb3.ItemIndex >= 0) then
 begin
   continuar.enabled:=true;
 end;
end;

procedure Tfrm_pagina3.Cb3Change(Sender: TObject);
begin
 if (cb1.ItemIndex >= 0)and(cb2.ItemIndex >= 0)and(cb3.ItemIndex >= 0) then
 begin
   continuar.enabled:=true;
 end;
end;

procedure Tfrm_pagina3.continuarClick(Sender: TObject);
begin
 teste:=teste+(cb1.ItemIndex+1)+(cb2.ItemIndex+1)+(cb3.ItemIndex+1);
 hide;
 application.CreateForm(Tfrm_pagina4,Frm_pagina4);
 frm_pagina4.ShowModal;
 close;
end;

procedure Tfrm_pagina3.FormActivate(Sender: TObject);
begin
 continuar.Enabled:=false;
end;


procedure Tfrm_pagina3.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;
 key:=#0;
end;

end.
