unit DM;

interface

uses
  System.SysUtils, System.Classes, Forms;

type
  TDM1 = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM1: TDM1;
  nome:String;
  teste: integer;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}


{$R *.dfm}

    {
   If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;
   }

{ TDM1 }


{ TDM1 }


end.
