unit Unit_socios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, Mask, ComCtrls;

type
  TForm_socios = class(TForm)
    btn_novo: TBitBtn;
    btn_salvar: TBitBtn;
    btn_alterar: TBitBtn;
    btn_cancelar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_fechar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edt_id: TEdit;
    edt_nome: TEdit;
    edt_renda: TEdit;
    btn_localizar: TBitBtn;
    adoquery_aux: TADOQuery;
    Label4: TLabel;
    cb_ativo: TComboBox;
    lbl1: TLabel;
    dt_cadastro: TDateTimePicker;
    procedure btn_fecharClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
    procedure edt_rendaChange(Sender: TObject);
    procedure edt_rendaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    pk, operacao : string;
    procedure desabilitar_salvar(Sender: TObject);
    procedure habilita_salvar(Sender: TObject);
    procedure bloqueia_campos;
    procedure libera_campos;
    procedure limpa_campos;
  end;

var
  Form_socios: TForm_socios;

implementation

uses Unit_menu, Unit_pesquisa;

{$R *.dfm}

procedure TForm_socios.bloqueia_campos;
var
i: integer;
begin
  for i := 1 to form_socios.ComponentCount -1 do
    begin
      if form_socios.Components[i] is TEdit then
        begin
          (form_socios.Components[i] as TEdit).Enabled := false;
          (form_socios.Components[i] as TEdit).color := clInfoBk;
        end;
      if Form_socios.Components[i] is TComboBox then
        begin
          (form_socios.Components[i] as TComboBox).Enabled := false;
          (form_socios.Components[i] as TComboBox).color := clInfoBk;
        end;
      if Form_socios.Components[i] is TDateTimePicker then
        begin
          (Form_socios.Components[i] as TDateTimePicker).Enabled := False;
          (Form_socios.Components[i] as TDateTimePicker).Color := clInfoBk;
        end;
    end;
end;

procedure TForm_socios.btn_fecharClick(Sender: TObject);
begin
  Close;
end;

procedure TForm_socios.desabilitar_salvar(Sender: TObject);
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

procedure TForm_socios.habilita_salvar(Sender: TObject);
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

procedure TForm_socios.libera_campos;
var i: integer;
begin
  for i := 1 to form_socios.ComponentCount -1 do
    begin
      if form_socios.Components[i] is TEdit then
        begin
          if (Form_socios.Components[i] as TEdit).Name <> 'edt_id' then
            begin
                (form_socios.Components[i] as TEdit).Enabled := true;
                (form_socios.Components[i] as TEdit).color := clWindow;
            end;
        end;
      if Form_socios.Components[i] is TComboBox then
        begin
          if (form_socios.Components[i] as TComboBox).Name <> 'edt_id' then
            begin
              (form_socios.Components[i] as TComboBox).Enabled := True;
              (form_socios.Components[i] as TComboBox).color := clWindow;
            end;
        end;
      if Form_socios.Components[i] is TDateTimePicker then
        begin
          if (Form_socios.Components[i] as TDateTimePicker).Name <> 'edt_id' then
            begin
              (Form_socios.Components[i] as TDateTimePicker).Enabled := True;
              (Form_socios.Components[i] as TDateTimePicker).Color := clWindow;
            end;
        end;
    end;
end;

procedure TForm_socios.limpa_campos;
var i: integer;
begin
  for i := 1 to form_socios.ComponentCount -1 do
    begin
      if form_socios.Components[i] is TEdit then
        begin
        (form_socios.Components[i] as TEdit).Clear;
        end;
    end;
end;
procedure TForm_socios.btn_novoClick(Sender: TObject);
begin
  libera_campos;
  limpa_campos;
  pk := '';
  habilita_salvar(sender);
end;

procedure TForm_socios.btn_salvarClick(Sender: TObject);
var
  deuerro: boolean;
  data : string;
begin
  form_menu.conexaoDB.BeginTrans;
  data := FormatDateTime('mm/dd/yyyy', dt_cadastro.Date);
  if (trim(edt_nome.Text) = '') or (trim(edt_renda.Text) = '') or (trim(cb_ativo.Text) = '') then
    begin
      Showmessage('Preencha todos os campos!')
    end
  else
    begin
      if operacao = 'novo' then
        begin
          adoquery_aux.SQL.Text := 'INSERT INTO Socios (nome, renda, ativo, data_cadastro) VALUES ' +
            '(' + QuotedStr(edt_nome.Text) + ', ' + edt_renda.Text +
            ', ' + QuotedStr(cb_ativo.Text) + ',' + QuotedStr(data)
            + ')';
        end
      else if operacao = 'alterar' then
        begin
          adoquery_aux.SQL.Text := 'UPDATE Socios SET ' +
                                   ' nome = ' + QuotedStr(edt_nome.Text) +
                                   ', renda = ' + edt_renda.Text +
                                   ', ativo = ' + QuotedStr(cb_ativo.Text) +
                                   ' WHERE id = ' + pk;
        end;
  try
    adoquery_aux.ExecSQL;
    deuerro := false;
  except
    on E : Exception do
      begin
        deuerro := true;
        if Form_menu.ErrorDB(E.Message,'id') = 'Sim' then
          begin
            Showmessage('Sócio já cadastrado!')
          end
        else
          begin
            Showmessage('Ocorreu o seguinte erro: ' + E.Message);
          end;
      end;
      end;
       if deuerro = true then
        begin
          Form_menu.conexaoDB.RollbackTrans;
        end
       else
        begin
          form_menu.conexaoDB.CommitTrans;
          if operacao = 'novo' then
            begin
            adoquery_aux.SQL.Text:= 'SELECT id FROM Socios ' +
                                    ' WHERE nome =' + QuotedStr(edt_nome.Text) +
                                    'AND renda =' + edt_renda.Text +
                                    'AND ativo =' + QuotedStr(cb_ativo.Text);
            end;
          adoquery_aux.SQL.Text := 'SELECT * FROM Socios';  
          adoquery_aux.close;
          adoquery_aux.Open;
          pk := adoquery_aux.fieldbyname('id').AsString;

      end;
  desabilitar_salvar(sender);
  bloqueia_campos;
 end;
end;



procedure TForm_socios.FormShow(Sender: TObject);
begin
  pk := '';
  operacao := '';
  limpa_campos;
  bloqueia_campos;
  desabilitar_salvar(Sender);
end;

procedure TForm_socios.btn_alterarClick(Sender: TObject);
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
  dt_cadastro.Enabled := False;
  dt_cadastro.Color := clInfoBk;
end;

procedure TForm_socios.btn_cancelarClick(Sender: TObject);
begin
  if operacao = 'novo' then
    limpa_campos;

  desabilitar_salvar(sender);
  bloqueia_campos;  
end;

procedure TForm_socios.btn_excluirClick(Sender: TObject);
var deuerro : boolean;
begin
  if pk = '' then
    begin
      Showmessage('Impossível Excluir!');
    end
  else
    adoquery_aux.SQL.Text := ' DELETE FROM Socios ' +
                             ' WHERE id = ' + pk;

  Form_menu.conexaoDB.BeginTrans;
  Abort;
  try
    adoquery_aux.ExecSQL;
    deuerro :=  false;
  except
    on E : Exception do
      begin
        deuerro := true;
        if form_menu.ErrorDB(E.Message, 'FK_Dependente_Socios') = 'Sim' then
        begin
          Showmessage('Esse Sócio possui dependentes!')
        end
        else
        begin
          showmessage('Ocorreu o seguinte erro' + E.Message)
        end;
      end;
     end;

    if deuerro = true then
      begin
        Form_menu.conexaoDB.RollbackTrans;
      end
    else
      begin
        form_menu.conexaoDB.CommitTrans;
        pk := '';
        desabilitar_salvar(sender);
        limpa_campos;
        bloqueia_campos;
      end;
    end;  


procedure TForm_socios.btn_localizarClick(Sender: TObject);
begin
  limpa_campos;
  bloqueia_campos;
  desabilitar_salvar(sender);
  Form_pesquisa.sql_pesquisa := 'SELECT * FROM Socios';
  Form_pesquisa.ShowModal;
  if Form_pesquisa.chave <> '' then
    begin
      pk := Form_pesquisa.chave;
      adoquery_aux.SQL.Text := 'SELECT * FROM Socios  ' +
                               ' WHERE id = ' + pk;
      adoquery_aux.Open;
      edt_id.Text := adoquery_aux.fieldbyname('id').AsString;
      edt_nome.Text := adoquery_aux.fieldbyname('nome').AsString;
      edt_renda.Text := adoquery_aux.fieldbyname('renda').AsString;
      cb_ativo.Text := adoquery_aux.fieldbyname('ativo').AsString;
    end;  
end;

procedure TForm_socios.edt_rendaChange(Sender: TObject);
begin
  edt_renda.Text := StringReplace(edt_renda.Text, ',', '.', []);
  edt_renda.SelStart := Length(edt_renda.Text);
end;

procedure TForm_socios.edt_rendaKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', ',', #8]) then
    begin
      Key := #0;
    end;
end;

end.
