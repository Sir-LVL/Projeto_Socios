unit Unit_logon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm_logon = class(TForm)
    Label1: TLabel;
    edt_usuario: TEdit;
    Label2: TLabel;
    edt_senha: TEdit;
    btn_ok: TBitBtn;
    btn_fechar: TBitBtn;
    procedure btn_fecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_logon: TForm_logon;

implementation

{$R *.dfm}

procedure TForm_logon.btn_fecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
