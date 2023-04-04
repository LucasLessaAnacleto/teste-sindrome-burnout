unit U_menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.CheckLst;

type
  Tfrm_menu = class(TForm)
    background: TImage;
    txt_nome: TEdit;
    btn_next: TImage;
    procedure FormActivate(Sender: TObject);
    procedure txt_nomeChange(Sender: TObject);
    procedure btn_nextClick(Sender: TObject);
    procedure txt_nomeKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
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

uses U_intro, DM;

procedure Tfrm_menu.btn_nextClick(Sender: TObject);
begin
 nome:=txt_nome.Text;
 hide;
 application.CreateForm(Tfrm_intro,frm_intro);
 frm_intro.ShowModal;
 close;
end;

procedure Tfrm_menu.FormActivate(Sender: TObject);
begin
   btn_next.Enabled:=false;
   background.ClientHeight:=288;
   background.ClientWidth:=626;
   background.Left:=0;
   background.Top:=0;
   frm_menu.Constraints.MaxHeight := height;
   frm_menu.Constraints.MaxWidth := Width;
end;

procedure Tfrm_menu.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure Tfrm_menu.txt_nomeChange(Sender: TObject);
var
i: integer;
newStr: String;
begin
  newStr:='';
  for i := 1 to length(txt_nome.text) do
  begin
   if (txt_nome.text[i]) in ['A'..'Z','a'..'z'] then
   begin
     newStr:=newStr+ uppercase(txt_nome.text[i]);
   end;
  end;

  if (length(newStr)>2) then
  begin
    btn_next.enabled:=true;
  end else
    btn_next.enabled:=false;
end;


procedure Tfrm_menu.txt_nomeKeyPress(Sender: TObject; var Key: Char);
begin
 if (key in ['0'..'9']) then
 key:=#0;
end;

end.
