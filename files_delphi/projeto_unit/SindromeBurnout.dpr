program SindromeBurnout;

uses
  Vcl.Forms,
  U_intro in 'U_intro.pas' {frm_intro},
  U_menu in 'U_menu.pas' {frm_menu},
  DM in 'DM.pas' {DM1: TDataModule},
  U_abertura in 'U_abertura.pas' {frm_abertura},
  U_func in 'U_func.pas' {frm_func},
  U_pagina1 in 'U_pagina1.pas' {frm_pagina1},
  U_pagina2 in 'U_pagina2.pas' {frm_pagina2},
  U_pagina3 in 'U_pagina3.pas' {frm_pagina3},
  U_pagina4 in 'U_pagina4.pas' {frm_pagina4},
  U_resultado in 'U_resultado.pas' {frm_resultado};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_menu, frm_menu);
  Application.CreateForm(TDM1, DM1);
  Application.Run;
end.
