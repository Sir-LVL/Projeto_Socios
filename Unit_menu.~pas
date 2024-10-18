unit Unit_menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB;

type
  TForm_menu = class(TForm)
    btn_fechar: TBitBtn;
    btn_socios: TBitBtn;
    btn_dependentes: TBitBtn;
    btn_consulta_socios: TBitBtn;
    btn_consulta_dependentes: TBitBtn;
    btn_relatorios: TBitBtn;
    conexaoDB: TADOConnection;
    procedure btn_fecharClick(Sender: TObject);
    procedure btn_sociosClick(Sender: TObject);
    procedure btn_dependentesClick(Sender: TObject);
    procedure btn_relatoriosClick(Sender: TObject);
    procedure btn_consulta_sociosClick(Sender: TObject);
    procedure btn_consulta_dependentesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ErrorDB(msg: string; texto: string): string;
  end;

var
  Form_menu: TForm_menu;

implementation

uses Unit_socios, Unit_depedentes, Unit_rel, Unit_consul_socios,
  Unit_consul_dependentes;

{$R *.dfm}

procedure TForm_menu.btn_fecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm_menu.btn_sociosClick(Sender: TObject);
begin
  Form_socios.ShowModal;
end;

function TForm_menu.ErrorDB(msg, texto: string): string;
var
i , tam_msg, tam_texto : integer;
pedaco : string;
begin
  tam_msg := length(msg);
  tam_texto := length(texto);
for i:=1 to tam_msg do
  begin
    pedaco := copy(msg,i,tam_texto);
    if pedaco = texto then
      begin
        result := 'Sim';
        break;
      end
    else
      result := 'Não';
    end;
end;


procedure TForm_menu.btn_dependentesClick(Sender: TObject);
begin
  Form_dependentes.ShowModal;
end;

procedure TForm_menu.btn_relatoriosClick(Sender: TObject);
begin
  Form_rel.ShowModal;
end;

procedure TForm_menu.btn_consulta_sociosClick(Sender: TObject);
begin
  Form_consul_socio.ShowModal;
end;

procedure TForm_menu.btn_consulta_dependentesClick(Sender: TObject);
begin
  Form_consul_dependente.ShowModal;
end;

end.
