object Form_consul_dependente: TForm_consul_dependente
  Left = 753
  Top = 242
  BorderStyle = bsSingle
  Caption = 'Consulta Dependentes'
  ClientHeight = 288
  ClientWidth = 719
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 16
    Width = 697
    Height = 217
    DataSource = ds_dependentes
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
  end
  object btn_fechar: TBitBtn
    Left = 272
    Top = 248
    Width = 177
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = btn_fecharClick
    Kind = bkAbort
  end
  object adoquery_aux: TADOQuery
    Active = True
    Connection = Form_menu.conexaoDB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT id  AS Identifica'#231#227'o, nome AS Nome, idade AS Idade,'
      ' nome_socio AS S'#243'cio FROM Dependente')
    Left = 56
    Top = 248
  end
  object ds_dependentes: TDataSource
    DataSet = adoquery_aux
    Left = 16
    Top = 248
  end
end
