object Form_rel_geral: TForm_rel_geral
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Relat'#243'rio S'#243'cios'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 48
    Top = 8
    Width = 794
    Height = 1123
    DataSource = Teste.ds_socios
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 91
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 264
        Top = 16
        Width = 171
        Height = 24
        Caption = 'Relat'#243'rio S'#243'cios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 24
        Top = 64
        Width = 61
        Height = 22
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 208
        Top = 64
        Width = 66
        Height = 22
        Caption = 'Renda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 400
        Top = 64
        Width = 52
        Height = 22
        Caption = 'Ativo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 544
        Top = 64
        Width = 161
        Height = 22
        Caption = 'Data De Cadastro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object socios: TRLBand
      Left = 38
      Top = 129
      Width = 718
      Height = 72
      object RLDBText1: TRLDBText
        Left = 24
        Top = 24
        Width = 43
        Height = 18
        DataField = 'nome'
        DataSource = Teste.ds_socios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 208
        Top = 24
        Width = 36
        Height = 16
        DataField = 'renda'
        DataSource = Teste.ds_socios
        DisplayMask = 'R$0,0.00'
      end
      object RLDBText3: TRLDBText
        Left = 400
        Top = 24
        Width = 30
        Height = 16
        DataField = 'ativo'
        DataSource = Teste.ds_socios
      end
      object RLDBText4: TRLDBText
        Left = 544
        Top = 24
        Width = 29
        Height = 16
        DataField = 'data'
        DataSource = Teste.ds_socios
        DisplayMask = 'DD/MM/YYYY'
      end
    end
  end
end
