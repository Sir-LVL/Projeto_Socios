object Form_consul_socio: TForm_consul_socio
  Left = 261
  Top = 147
  Width = 715
  Height = 369
  Caption = 'Consulta S'#243'cios'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 681
    Height = 265
    DataSource = ds_socios
    DragMode = dmAutomatic
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object btn_fechar: TBitBtn
    Left = 256
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
      
        'select  id, Format(data_cadastro, '#39'dd/MM/yyyy'#39', '#39'pt-BR'#39') as Data' +
        '_De_Cadastro , nome AS Nome, '
      
        'ativo AS Ativo,  Format(renda, '#39'R$#0,0.00'#39', '#39'pt-BR'#39') as Renda fr' +
        'om Socios')
    Left = 64
    Top = 280
  end
end
