unit Unit_rel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, StdCtrls, Buttons;

type
  TForm_rel = class(TForm)
    btn_fechar: TBitBtn;
    btn_rel_socios: TBitBtn;
    btn_rel_dependentes: TBitBtn;
    procedure btn_fecharClick(Sender: TObject);
    procedure btn_rel_sociosClick(Sender: TObject);
    procedure btn_rel_dependentesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_rel: TForm_rel;

implementation

uses Unit_menu, Unit_rel_geral, Unit_rel_dependente, Unit_teste;

{$R *.dfm}

procedure TForm_rel.btn_fecharClick(Sender: TObject);
begin
  Close;
end;

procedure TForm_rel.btn_rel_sociosClick(Sender: TObject);
begin
  Form_rel_geral.RLReport1.Preview();
end;

procedure TForm_rel.btn_rel_dependentesClick(Sender: TObject);
begin
  Form_rel_dependentes.RLReport1.Preview();
end;

procedure TForm_rel.FormShow(Sender: TObject);
begin
  Teste.adoquery_socio.Close;
  Teste.adoquery_socio.Open;
  Teste.adoquery_dependentes.Close;
  Teste.adoquery_dependentes.Open;
end;

end.
