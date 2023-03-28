unit U_menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  Tfrm_menu = class(TForm)
    background: TImage;
    btn_next: TButton;
    txt_nome: TEdit;
    Timer1: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure txt_nomeEnter(Sender: TObject);
    procedure txt_nomeExit(Sender: TObject);
    procedure txt_nomeChange(Sender: TObject);
    procedure btn_nextClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_menu: Tfrm_menu;
  ver: integer;

implementation

{$R *.dfm}



procedure Tfrm_menu.btn_nextClick(Sender: TObject);
begin
showmessage(txt_nome.Text);
end;

procedure Tfrm_menu.FormActivate(Sender: TObject);
begin
   ver:=1;
   background.ClientHeight:=288;
   background.ClientWidth:=626;
   background.Left:=0;
   background.Top:=0;
   frm_menu.Constraints.MaxHeight := height;
   frm_menu.Constraints.MaxWidth := Width;
end;

procedure Tfrm_menu.Timer1Timer(Sender: TObject);
begin
 if ((length(txt_nome.Text)=0)or(txt_nome.Text='digite seu nome'))and(ver = 1) then
  begin
   txt_nome.Font.Name:='@MingLiU_HKSCS-ExtB';
   txt_nome.Font.Height:=12;
   txt_nome.Text:='digite seu nome';
   txt_nome.Height:=29;
  end else
  begin
    txt_nome.Font.Name:='@Microsoft JhengHei';
   txt_nome.Font.Height:=15;
   if ver <> 2 then
   txt_nome.Text:= '';
   txt_nome.Height:=29;
  end;

end;

procedure Tfrm_menu.txt_nomeChange(Sender: TObject);
begin
 ver:=2;
end;

procedure Tfrm_menu.txt_nomeEnter(Sender: TObject);
begin
 ver:=0;
end;

procedure Tfrm_menu.txt_nomeExit(Sender: TObject);
begin
 ver:=1;
end;

end.
