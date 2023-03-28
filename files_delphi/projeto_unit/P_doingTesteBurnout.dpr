program P_doingTesteBurnout;

uses
  Vcl.Forms,
  U_intro in 'U_intro.pas' {frm_intro},
  U_menu in 'U_menu.pas' {frm_menu};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_menu, frm_menu);
  Application.Run;
end.
