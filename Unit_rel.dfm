object Form_rel: TForm_rel
  Left = 528
  Top = 227
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio'
  ClientHeight = 156
  ClientWidth = 265
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
  object btn_fechar: TBitBtn
    Left = 48
    Top = 104
    Width = 169
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = btn_fecharClick
    Kind = bkAbort
  end
  object btn_rel_socios: TBitBtn
    Left = 48
    Top = 24
    Width = 169
    Height = 25
    Caption = 'Relat'#243'rio S'#243'cios'
    TabOrder = 0
    OnClick = btn_rel_sociosClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
      00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
      00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
      F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
      F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
      F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
      FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
      0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
      0033333337FFFFFF773333333000000003333333377777777333}
    NumGlyphs = 2
  end
  object btn_rel_dependentes: TBitBtn
    Left = 48
    Top = 64
    Width = 169
    Height = 25
    Caption = 'Relat'#243'rio Dependentes'
    TabOrder = 1
    OnClick = btn_rel_dependentesClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0000377777777777777707FFFFFFFFFFFF70773FF33333333F770F77FFFFFFFF
      77F07F773FFFFFFF77F70FFF7700000000007F337777777777770FFFFF0BBBBB
      BBB07F333F7F3FF33FF70FFF700B00BB00B07F3F777F77F377370F707F0BB0B0
      0BB07F77337F37F77337007EEE0BB0B0BBB077FFFF7F37F7F3370777770EE000
      EEE07777777F3777F3F7307EEE0E0E00E0E03773FF7F7377F73733707F0EE000
      0EE03337737F377773373333700EEE00EEE03333377F3377FF373333330EEEE0
      0EE03333337F33377F373333330EEEE00EE03333337F333773373333330EEEEE
      EEE03333337FFFFFFFF733333300000000003333337777777777}
    NumGlyphs = 2
  end
end
