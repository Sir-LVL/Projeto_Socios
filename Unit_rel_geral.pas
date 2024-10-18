unit Unit_rel_geral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, ADODB;

type
  TForm_rel_geral = class(TForm)
    RLReport1: TRLReport;
    cabecalho: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    socios: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_rel_geral: TForm_rel_geral;

implementation

uses Unit_menu, Unit_teste;

{$R *.dfm}

end.
