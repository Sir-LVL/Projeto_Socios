object Form_consul_socio: TForm_consul_socio
  Left = 418
  Top = 156
  Width = 598
  Height = 369
  Caption = 'Consulta S'#243'cios'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 16
    Width = 561
    Height = 257
    DataSource = ds_socios
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object btn_fechar: TBitBtn
    Left = 208
    Top = 288
    Width = 169
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = btn_fecharClick
    Kind = bkAbort
  end
  object ds_socios: TDataSource
    DataSet = adoquery_aux
    Left = 8
    Top = 280
  end
  object adoquery_aux: TADOQuery
    Active = True
    Connection = Form_menu.conexaoDB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT id, nome AS Nome, renda AS Renda, '
      'ativo AS Ativo FROM Socios'
      'SELECT format(renda,'#39'N2'#39', '#39'pt-BR'#39') as '#39'0.00,00'#39' from Socios')
    Left = 64
    Top = 280
  end
end
