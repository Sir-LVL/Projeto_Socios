program Sistema_socios;

uses
  Forms,
  Unit_menu in 'Unit_menu.pas' {Form_menu},
  Unit_socios in 'Unit_socios.pas' {Form_socios},
  Unit_pesquisa in 'Unit_pesquisa.pas' {Form_pesquisa},
  Unit_depedentes in 'Unit_depedentes.pas' {Form_dependentes},
  Unit_rel in 'Unit_rel.pas' {Form_rel},
  Unit_rel_geral in 'Unit_rel_geral.pas' {Form_rel_geral},
  Unit_teste in 'Unit_teste.pas' {Teste: TDataModule},
  Unit_consul_socios in 'Unit_consul_socios.pas' {Form_consul_socio},
  Unit_consul_dependentes in 'Unit_consul_dependentes.pas' {Form_consul_dependente},
  Unit_rel_dependente in 'Unit_rel_dependente.pas' {Form_rel_dependentes};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm_menu, Form_menu);
  Application.CreateForm(TForm_socios, Form_socios);
  Application.CreateForm(TForm_pesquisa, Form_pesquisa);
  Application.CreateForm(TForm_dependentes, Form_dependentes);
  Application.CreateForm(TForm_rel, Form_rel);
  Application.CreateForm(TForm_rel_geral, Form_rel_geral);
  Application.CreateForm(TTeste, Teste);
  Application.CreateForm(TForm_consul_socio, Form_consul_socio);
  Application.CreateForm(TForm_consul_dependente, Form_consul_dependente);
  Application.CreateForm(TForm_rel_dependentes, Form_rel_dependentes);
  Application.Run;
end.
