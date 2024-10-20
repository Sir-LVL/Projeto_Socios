unit Unit_pesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons;

type
  TForm_pesquisa = class(TForm)
    adoquery_pesquisa: TADOQuery;
    ds_aux: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    edt_nome: TEdit;
    btn_pesquisa: TBitBtn;
    btn_limpar: TBitBtn;
    btn_confirmar: TBitBtn;
    btn_cancelar: TBitBtn;
    procedure btn_confirmarClick(Sender: TObject);
    procedure btn_pesquisaClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    chave, chave_aux, sql_pesquisa: string;
  end;

var
  Form_pesquisa: TForm_pesquisa;

implementation

uses Unit_menu;

{$R *.dfm}

procedure TForm_pesquisa.btn_confirmarClick(Sender: TObject);
begin
  if adoquery_pesquisa.Active = false then
    begin
      Showmessage('Impossível Selecionar')
    end
  else
    begin
      chave := adoquery_pesquisa.Fields[0].AsString;
      chave_aux := adoquery_pesquisa.Fields[1].AsString;
      adoquery_pesquisa.Close;
    end;
end;

procedure TForm_pesquisa.btn_pesquisaClick(Sender: TObject);
begin
  if edt_nome.Text = '' then
      Showmessage('Digite o Nome ou parte do nome!')
  else if sql_pesquisa = '' then
      showmessage('Impossível Pesquisar!')
  else
    begin
      adoquery_pesquisa.Close;
      adoquery_pesquisa.SQL.Text := sql_pesquisa + ' WHERE nome LIKE ' +
                                    QuotedStr(edt_nome.Text + '%');

      adoquery_pesquisa.Open;
      DBGrid1.SetFocus;

    end;
end;

procedure TForm_pesquisa.btn_limparClick(Sender: TObject);
begin
  chave := '';
  edt_nome.Clear;
  adoquery_pesquisa.Close;
end;

procedure TForm_pesquisa.FormShow(Sender: TObject);
begin
  edt_nome.Clear
end;

procedure TForm_pesquisa.btn_cancelarClick(Sender: TObject);
begin
  adoquery_pesquisa.Close;
  close;
  edt_nome.Clear;
end;

end.
