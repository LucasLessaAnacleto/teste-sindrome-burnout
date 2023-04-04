unit U_func;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  Tfrm_func = class(TForm)
    background: TImage;
    voltar: TImage;
    procedure voltarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_func: Tfrm_func;

implementation

{$R *.dfm}

uses U_abertura;

procedure Tfrm_func.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 frm_abertura.Show;
 close;
end;

procedure Tfrm_func.voltarClick(Sender: TObject);
begin
 hide;
 frm_abertura.Show;
 close;
end;

end.
