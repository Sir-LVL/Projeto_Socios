unit Unit_consul_socios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons;

type
  TForm_consul_socio = class(TForm)
    DBGrid1: TDBGrid;
    ds_socios: TDataSource;
    adoquery_aux: TADOQuery;
    btn_fechar: TBitBtn;
    procedure btn_fecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_consul_socio: TForm_consul_socio;

implementation

uses Unit_menu;

{$R *.dfm}
procedure TForm_consul_socio.btn_fecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TForm_consul_socio.FormShow(Sender: TObject);
begin
  Form_consul_socio.adoquery_aux.Close;
  Form_consul_socio.adoquery_aux.Open;
  DBGrid1.Columns[0].Width := 50;
  DBGrid1.Columns[1].Width := 100;
end;

end.
