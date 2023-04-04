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
  label2.Caption:='  Cuidado '+nome+', os resultados indicam que est� em'+#13+' uma situa��o de estresse elevado. Recomendamos buscar'+#13+' ajuda profissional o quanto antes e fa�a mudan�as em sua'+#13+' rotina para cuidar da sua sa�de. A preven��o � a melhor'+#13+' forma de evitar a S�ndrome de Burnout';
  ProgressBar1.Position:=14;
  progressBar2.Position:=12;
  progressBar3.Position:=teste-26;
 end else
 if teste > 14 then
 begin
  label2.Top:=label2.top+12;
  label2.Caption:='    Fique atento '+nome+', parece estar lidando com'+#13+'   algumas demandas estressantes em seu trabalho.'+#13+'   � importante que voc� comece a fazer mudan�as em'+#13+'   sua rotina para evitar uma sobrecarga ainda maior';
  ProgressBar1.Position:=14;
  progressBar2.Position:=teste-14;
 end else
 begin
   label2.Top:=label2.top+26;
   label2.Caption:='   Parab�ns '+nome+', voc� parece estar lidando bem'+#13+'  com as exig�ncias do seu trabalho. Continue assim, se'+#13+'  cuidando e gerenciando bem o seu tempo e energia.';
   ProgressBar1.Position:=teste;
 end;
end;


procedure Tfrm_resultado.help1Click(Sender: TObject);
begin
 showmessage('Indica que o n�vel de estresse est� dentro do aceit�vel'+#13+'e que n�o h� risco iminente de desenvolver a s�ndrome'+#13+'de burnout. No entanto, � importante manter um equil�brio'+#13+'saud�vel entre trabalho e vida pessoal para evitar futuros '+#13+'problemas.');
end;

procedure Tfrm_resultado.help2Click(Sender: TObject);
var
 frase: string;
begin
 frase:='Indica que o n�vel de estresse est� moderado e que h�';
 showmessage(frase+#13+'um potencial de desenvolver a s�ndrome de burnout se n�o houver cuidados adequados. � importante avaliar as fontes de estresse e tomar medidas para reduzi-las. Buscar ajuda profissional tamb�m pode ser uma boa op��o.');
end;

procedure Tfrm_resultado.help3Click(Sender: TObject);
var
frase: string;
begin
 frase:='Indica que o n�vel de estresse est� cr�tico e que h� um alto risco de desenvolver a s�ndrome de burnout. � importante procurar ajuda profissional';
 showmessage(frase+'imediatamente e fazer mudan�as significativas na rotina para diminuir o estresse. A s�ndrome de burnout pode ter consequ�ncias graves para a sa�de mental e f�sica, por isso � fundamental tomar medidas preventivas o mais r�pido poss�vel.');
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
