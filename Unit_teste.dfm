object Teste: TTeste
  OldCreateOrder = False
  Left = 351
  Top = 177
  Height = 207
  Width = 254
  object adoquery_socio: TADOQuery
    Active = True
    Connection = Form_menu.conexaoDB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Socios'
      '')
    Left = 24
    Top = 80
  end
  object adoquery_dependentes: TADOQuery
    Active = True
    Connection = Form_menu.conexaoDB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Dependente')
    Left = 160
    Top = 88
  end
  object ds_socios: TDataSource
    DataSet = adoquery_socio
    Left = 40
    Top = 32
  end
  object ds_dependentes: TDataSource
    DataSet = adoquery_dependentes
    Left = 144
    Top = 32
  end
end
