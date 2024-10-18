unit Unit_consul_dependentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, Grids, DBGrids;

type
  TForm_consul_dependente = class(TForm)
    DBGrid1: TDBGrid;
    btn_fechar: TBitBtn;
    adoquery_aux: TADOQuery;
    ds_dependentes: TDataSource;
    procedure btn_fecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_consul_dependente: TForm_consul_dependente;

implementation

uses Unit_menu;

{$R *.dfm}

procedure TForm_consul_dependente.btn_fecharClick(Sender: TObject);
begin
  Close;
end;

procedure TForm_consul_dependente.FormShow(Sender: TObject);
begin
  adoquery_aux.Close;
  adoquery_aux.Open;
end;

end.
