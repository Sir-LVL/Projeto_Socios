unit Unit_depedentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, Mask;

type
  TForm_dependentes = class(TForm)
    Label1: TLabel;
    edt_nome: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edt_id_socio: TEdit;
    btn_novo: TBitBtn;
    btn_salvar: TBitBtn;
    btn_alterar: TBitBtn;
    btn_cancelar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_fechar: TBitBtn;
    btn_socio: TBitBtn;
    adoquery_aux: TADOQuery;
    Label4: TLabel;
    edt_nome_socio: TEdit;
    btn_localizar: TBitBtn;
    edt_idade: TEdit;
    procedure btn_fecharClick(Sender: TObject);
    procedure btn_socioClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure edt_idadeKeyPress(Sender: TObject; var Key: Char);
    procedure edt_id_socioKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pk, operacao, socio : string;
    procedure desabilitar_salvar(Sender: TObject);
    procedure habilita_salvar(Sender: TObject);
    procedure bloqueia_campos;
    procedure libera_campos;
    procedure limpa_campos;
  end;

var
  Form_dependentes: TForm_dependentes;

implementation

uses Unit_menu, Unit_pesquisa;

{$R *.dfm}

procedure TForm_dependentes.bloqueia_campos;
var
i: integer;
begin
  for i := 1 to form_dependentes.ComponentCount -1 do
    begin
      if form_dependentes.Components[i] is TEdit then
        begin
          (form_dependentes.Components[i] as TEdit).Enabled := false;
          (form_dependentes.Components[i] as TEdit).color := clInfoBk;
        end;
      end;
end;
procedure TForm_dependentes.btn_fecharClick(Sender: TObject);
begin
  Close;
end;

procedure TForm_dependentes.desabilitar_salvar(Sender: TObject);
begin
  btn_novo.Enabled := True;
  btn_salvar.Enabled := False;
  btn_alterar.Enabled := True;
  btn_cancelar.Enabled := False;
  btn_excluir.Enabled := True;


  if Sender = btn_novo then
    operacao := 'novo'
  else if Sender = btn_salvar then
    operacao := 'salvar'
  else if Sender = btn_alterar then
    operacao := 'alterar'
  else if Sender = btn_cancelar then
    operacao := 'cancelar'
  else if Sender = btn_excluir then
    operacao := 'excluir'

end;


procedure TForm_dependentes.habilita_salvar(Sender: TObject);
begin
  btn_novo.Enabled := False;
  btn_salvar.Enabled := True;
  btn_alterar.Enabled := False;
  btn_cancelar.Enabled := True;
  btn_excluir.Enabled := False;

  if Sender = btn_novo then
    operacao := 'novo'
  else if Sender = btn_salvar then
    operacao := 'salvar'
  else if Sender = btn_alterar then
    operacao := 'alterar'
  else if Sender = btn_cancelar then
    operacao := 'cancelar'
  else if Sender = btn_excluir then
    operacao := 'excluir'
end;

procedure TForm_dependentes.libera_campos;
var i: integer;
begin
  for i := 1 to form_dependentes.ComponentCount -1 do
    begin
      if form_dependentes.Components[i] is TEdit then
        begin
          if (form_dependentes.Components[i] as TEdit).Name <> 'edt_id' then
            begin
                (form_dependentes.Components[i] as TEdit).Enabled := true;
                (form_dependentes.Components[i] as TEdit).color := clWindow;
            end;
        end;
    end;
end;


procedure TForm_dependentes.limpa_campos;
var i: integer;
begin
  for i := 1 to form_dependentes.ComponentCount -1 do
    begin
      if form_dependentes.Components[i] is TEdit then
        begin
        (form_dependentes.Components[i] as TEdit).Clear;
        end;
      if form_dependentes.Components[i] is TMaskEdit then
        begin
        (form_dependentes.Components[i] as TMaskEdit).Clear;
        end;
    end;
end;
procedure TForm_dependentes.btn_socioClick(Sender: TObject);
begin
  edt_id_socio.Clear;
  edt_nome_socio.Clear;
  Form_pesquisa.sql_pesquisa := ' SELECT * FROM Socios ';
  Form_pesquisa.ShowModal;
  if Form_pesquisa.chave <> '' then
    begin
      socio := Form_pesquisa.chave;
      adoquery_aux.SQL.Text := ' SELECT * FROM Socios ' +
                               ' WHERE id = ' + Form_pesquisa.chave;
      adoquery_aux.Open;
      edt_id_socio.Text := adoquery_aux.fieldbyname('id').AsString;
      edt_nome_socio.Text := adoquery_aux.fieldbyname('nome').AsString;
    end
end;

procedure TForm_dependentes.btn_novoClick(Sender: TObject);
begin
  libera_campos;
  limpa_campos;
  pk := '';
  habilita_salvar(sender);
  btn_socio.Enabled := true;
  edt_id_socio.Enabled := False;
  edt_id_socio.Color := clInfoBk;
  edt_nome_socio.Enabled := False;
  edt_nome_socio.Color := clInfoBk;
end;

procedure TForm_dependentes.btn_alterarClick(Sender: TObject);
begin
  if pk = '' then
    begin
      showmessage('Impossível Alterar')
    end
  else
    begin
      libera_campos;
      habilita_salvar(sender);
    end;
    btn_socio.Enabled := true;
    edt_id_socio.Enabled := False;
    edt_id_socio.Color := clInfoBk;
    edt_nome_socio.Enabled := False;
    edt_nome_socio.Color := clInfoBk;
end;
procedure TForm_dependentes.btn_cancelarClick(Sender: TObject);
begin
  if operacao = 'novo' then
    limpa_campos;

  desabilitar_salvar(sender);
  bloqueia_campos;
  btn_socio.Enabled := false;
end;

procedure TForm_dependentes.btn_salvarClick(Sender: TObject);
var deuerro: boolean;
begin
  if (Trim(edt_nome.Text) = '') or (Trim(edt_idade.Text) = '') or (Trim(edt_id_socio.Text) = '')
  or (Trim(edt_nome_socio.Text) = '') then
    begin
      Showmessage('Preencha os Campos!');
    end
  else
    begin
    if operacao = 'novo' then
      begin
        adoquery_aux.SQL.Text := 'INSERT INTO Dependente (nome, idade, id_socio, nome_socio) VALUES ' +
                                 '(' + QuotedStr(edt_nome.Text) + ', ' +
                                 QuotedStr(edt_idade.Text) + ', ' + edt_id_socio.Text +
                                 ', ' + QuotedStr(edt_nome_socio.Text) + ')';

      end
    else if operacao = 'alterar' then
      begin
        adoquery_aux.SQL.Text := 'UPDATE Dependente SET' +
                                 ' nome = ' + QuotedStr(edt_nome.Text) +
                                 ' , idade = ' + QuotedStr(edt_idade.Text) +
                                 ' WHERE id = ' + pk;
      end;
      try
        adoquery_aux.ExecSQL;
        deuerro := false;
      except
        on E : Exception do
          begin
            deuerro:= true;
            if Form_menu.ErrorDB(E.Message, 'id') = 'Sim' then
              begin
                Showmessage('Dependente Já Cadastrado!');
              end
            else
              begin
                Showmessage('Ocorreu o seguinte erro ' + E.Message);
              end;
            if deuerro = true then
              begin
                Form_menu.conexaoDB.RollbackTrans;
              end
            else
              begin
                Form_menu.conexaoDB.CommitTrans;
                if operacao = 'novo' then
                  adoquery_aux.SQL.Text := 'SELECT id FROM Dependente ' +
                                           ' WHERE nome = ' + QuotedStr(edt_nome.Text) +
                                           ' AND idade = ' + QuotedStr(edt_idade.Text) +
                                           ' AND id_socio = ' + edt_id_socio.Text +
                                           ' AND nome_socio = ' + edt_nome_socio.Text;

              end;
          adoquery_aux.Close;
          adoquery_aux.Open;
          pk := adoquery_aux.fieldbyname('id').AsString;
          adoquery_aux.Close;
          end;
          end;
          desabilitar_salvar(sender);
          bloqueia_campos;
          btn_socio.Enabled := false;
    end;
end;

procedure TForm_dependentes.btn_localizarClick(Sender: TObject);
begin
  limpa_campos;
  bloqueia_campos;
  desabilitar_salvar(sender);
  Form_pesquisa.sql_pesquisa := 'SELECT * FROM Dependente';
  Form_pesquisa.ShowModal;
  if Form_pesquisa.chave <> '' then
    begin
    pk := Form_pesquisa.chave;
      adoquery_aux.SQL.Text := 'SELECT * FROM Dependente  ' +
                               ' WHERE id = ' + pk;
      adoquery_aux.Open;
      edt_nome.Text := adoquery_aux.fieldbyname('nome').AsString;
      edt_idade.Text := adoquery_aux.fieldbyname('idade').AsString;
      edt_id_socio.Text := adoquery_aux.fieldbyname('id_socio').AsString;
      edt_nome_socio.Text := adoquery_aux.fieldbyname('nome_socio').AsString;
    end;  
end;

procedure TForm_dependentes.btn_excluirClick(Sender: TObject);
var deuerro : boolean;
begin
  if pk = '' then
    begin
      Showmessage('Impossível Excluir!');
    end
  else
    begin
      adoquery_aux.SQL.Text := 'DELETE FROM Dependente ' +
                               'WHERE ID = ' + pk;
      Form_menu.conexaoDB.BeginTrans;
      try
        adoquery_aux.ExecSQL;
        deuerro := False;
      except
        on E : Exception do
          begin
            deuerro := true;
            if Form_menu.ErrorDB(E.Message, 'FK_Dependente_Socios') = 'Sim' then
              begin
                showmessage('Ocorreu o seguinte Erro ' + E.Message);
              end;
          end;
        end;  
        if deuerro = True then
          begin
          form_menu.conexaoDB.RollbackTrans;
          end
        else
          begin
            Form_menu.conexaoDB.CommitTrans;
            pk := '';
            desabilitar_salvar(sender);
            limpa_campos;
            bloqueia_campos;
          end;  
          end;
    end;


procedure TForm_dependentes.edt_idadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9', ',', #8]) then
    begin
      Key := #0
    end;
end;

procedure TForm_dependentes.edt_id_socioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9', ',', #8]) then
    begin
      Key := #0
    end;
end;

procedure TForm_dependentes.FormShow(Sender: TObject);
begin
  pk := '';
  operacao := '';
  limpa_campos;
  bloqueia_campos;
  desabilitar_salvar(Sender);
end;

end.
