unit U_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  Tfrm_principal = class(TForm)
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Image1: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses U_page2;

procedure Tfrm_principal.FormActivate(Sender: TObject);
begin
 image1.Width:=width;
 image1.Height:=height;
end;

procedure Tfrm_principal.Timer1Timer(Sender: TObject);
begin
 ProgressBar1.Position:=ProgressBar1.Position+1;
 if ProgressBar1.Position = 100 then
 begin
  Timer1.Enabled:=false;
  hide;
  Application.CreateForm(Tfrm_page2,Frm_page2);
  frm_page2.Showmodal;
  frm_principal.Close;
 end;
end;

end.
