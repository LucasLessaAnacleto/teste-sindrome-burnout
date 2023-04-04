unit U_resultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls;

type
  Tfrm_resultado = class(TForm)
    background: TImage;
    help1: TImage;
    help3: TImage;
    help2: TImage;
    encerrar: TImage;
    ProgressBar1: TProgressBar;
    LinkLabel1: TLinkLabel;
    ProgressBar2: TProgressBar;
    ProgressBar3: TProgressBar;
    Image3: TImage;
    Image4: TImage;
    Label1: TLabel;
    voltar: TImage;
    Label2: TLabel;
    procedure encerrarClick(Sender: TObject);
    procedure voltarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure help1Click(Sender: TObject);
    procedure help2Click(Sender: TObject);
    procedure help3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_resultado: Tfrm_resultado;

implementation

{$R *.dfm}

uses DM, U_menu;

procedure Tfrm_resultado.encerrarClick(Sender: TObject);
begin
 close;
end;




procedure Tfrm_resultado.FormActivate(Sender: TObject);
begin
 if teste > 26 then
 begin
  label2.Caption:='  Cuidado '+nome+', os resultados indicam que está em'+#13+' uma situação de estresse elevado. Recomendamos buscar'+#13+' ajuda profissional o quanto antes e faça mudanças em sua'+#13+' rotina para cuidar da sua saúde. A prevenção é a melhor'+#13+' forma de evitar a Síndrome de Burnout';
  ProgressBar1.Position:=14;
  progressBar2.Position:=12;
  progressBar3.Position:=teste-26;
 end else
 if teste > 14 then
 begin
  label2.Top:=label2.top+12;
  label2.Caption:='    Fique atento '+nome+', parece estar lidando com'+#13+'   algumas demandas estressantes em seu trabalho.'+#13+'   É importante que você comece a fazer mudanças em'+#13+'   sua rotina para evitar uma sobrecarga ainda maior';
  ProgressBar1.Position:=14;
  progressBar2.Position:=teste-14;
 end else
 begin
   label2.Top:=label2.top+26;
   label2.Caption:='   Parabéns '+nome+', você parece estar lidando bem'+#13+'  com as exigências do seu trabalho. Continue assim, se'+#13+'  cuidando e gerenciando bem o seu tempo e energia.';
   ProgressBar1.Position:=teste;
 end;
end;


procedure Tfrm_resultado.help1Click(Sender: TObject);
begin
 showmessage('Indica que o nível de estresse está dentro do aceitável'+#13+'e que não há risco iminente de desenvolver a síndrome'+#13+'de burnout. No entanto, é importante manter um equilíbrio'+#13+'saudável entre trabalho e vida pessoal para evitar futuros '+#13+'problemas.');
end;

procedure Tfrm_resultado.help2Click(Sender: TObject);
var
 frase: string;
begin
 frase:='Indica que o nível de estresse está moderado e que há';
 showmessage(frase+#13+'um potencial de desenvolver a síndrome de burnout se não houver cuidados adequados. É importante avaliar as fontes de estresse e tomar medidas para reduzi-las. Buscar ajuda profissional também pode ser uma boa opção.');
end;

procedure Tfrm_resultado.help3Click(Sender: TObject);
var
frase: string;
begin
 frase:='Indica que o nível de estresse está crítico e que há um alto risco de desenvolver a síndrome de burnout. É importante procurar ajuda profissional';
 showmessage(frase+'imediatamente e fazer mudanças significativas na rotina para diminuir o estresse. A síndrome de burnout pode ter consequências graves para a saúde mental e física, por isso é fundamental tomar medidas preventivas o mais rápido possível.');
end;

procedure Tfrm_resultado.voltarClick(Sender: TObject);
begin
 teste:=0;
 nome:='';
 hide;
 application.CreateForm(TFrm_menu,frm_menu);
 frm_menu.ShowModal;
 close;
end;

end.
