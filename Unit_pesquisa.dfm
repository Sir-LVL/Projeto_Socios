object Form_pesquisa: TForm_pesquisa
  Left = 370
  Top = 194
  BorderStyle = bsSingle
  Caption = 'Pesquisa'
  ClientHeight = 303
  ClientWidth = 612
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
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 193
    Height = 13
    Caption = 'Digite o Nome ou parte do Nome:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 64
    Width = 593
    Height = 193
    DataSource = ds_aux
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
  end
  object edt_nome: TEdit
    Left = 8
    Top = 32
    Width = 225
    Height = 21
    MaxLength = 50
    TabOrder = 1
  end
  object btn_pesquisa: TBitBtn
    Left = 272
    Top = 32
    Width = 129
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 2
    OnClick = btn_pesquisaClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33033333333333333F7F3333333333333000333333333333F777333333333333
      000333333333333F777333333333333000333333333333F77733333333333300
      033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
      33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
      3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
      33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
      333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
      333333773FF77333333333370007333333333333777333333333}
    NumGlyphs = 2
  end
  object btn_limpar: TBitBtn
    Left = 424
    Top = 32
    Width = 129
    Height = 25
    Caption = 'Limpar'
    TabOrder = 3
    OnClick = btn_limparClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
      555557777F777555F55500000000555055557777777755F75555005500055055
      555577F5777F57555555005550055555555577FF577F5FF55555500550050055
      5555577FF77577FF555555005050110555555577F757777FF555555505099910
      555555FF75777777FF555005550999910555577F5F77777775F5500505509990
      3055577F75F77777575F55005055090B030555775755777575755555555550B0
      B03055555F555757575755550555550B0B335555755555757555555555555550
      BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
      50BB555555555555575F555555555555550B5555555555555575}
    NumGlyphs = 2
  end
  object btn_confirmar: TBitBtn
    Left = 176
    Top = 264
    Width = 129
    Height = 25
    Caption = 'Selecionar'
    TabOrder = 4
    OnClick = btn_confirmarClick
    Kind = bkOK
  end
  object btn_cancelar: TBitBtn
    Left = 328
    Top = 264
    Width = 129
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = btn_cancelarClick
    Kind = bkAbort
  end
  object adoquery_pesquisa: TADOQuery
    Connection = Form_menu.conexaoDB
    Parameters = <>
    Left = 64
    Top = 264
  end
  object ds_aux: TDataSource
    DataSet = adoquery_pesquisa
    Left = 32
    Top = 264
  end
end
