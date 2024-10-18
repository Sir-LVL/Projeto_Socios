unit Unit_teste;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TTeste = class(TDataModule)
    adoquery_socio: TADOQuery;
    adoquery_dependentes: TADOQuery;
    ds_socios: TDataSource;
    ds_dependentes: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Teste: TTeste;

implementation

uses Unit_menu;

{$R *.dfm}

end.
