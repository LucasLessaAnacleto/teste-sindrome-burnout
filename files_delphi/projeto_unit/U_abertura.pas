unit U_abertura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  Tfrm_abertura = class(TForm)
    background: TImage;
    como_funfa: TImage;
    continuar: TImage;
    procedure FormActivate(Sender: TObject);
    procedure como_funfaClick(Sender: TObject);
    procedure continuarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);



  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  frm_abertura: Tfrm_abertura;

implementation

{$R *.dfm}

uses U_func, U_pagina1, DM;


procedure Tfrm_abertura.como_funfaClick(Sender: TObject);
begin
  hide;
  application.CreateForm(Tfrm_func,frm_func);
  frm_func.ShowModal;
end;

procedure Tfrm_abertura.continuarClick(Sender: TObject);
begin
  hide;
 application.CreateForm(Tfrm_pagina1,frm_pagina1);
 frm_pagina1.ShowModal;
 close;
end;

procedure Tfrm_abertura.FormActivate(Sender: TObject);
begin
 background.Top:=0;
 background.Left:=0;
end;




procedure Tfrm_abertura.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 { if (sender = frm_abertura)and (MessageDlg('Deseja realmente encerrar o programa?', mtConfirmation, mbYesNo, 0) = mrYes) then
    begin
      CanClose := True;
    end else
      CanClose := False;  }
end;

end.
