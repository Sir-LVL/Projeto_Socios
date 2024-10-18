object Form_rel_dependentes: TForm_rel_dependentes
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Form_rel_dependentes'
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
    Left = 56
    Top = 8
    Width = 794
    Height = 1123
    DataSource = Teste.ds_dependentes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 99
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 240
        Top = 16
        Width = 236
        Height = 24
        Caption = 'Relat'#243'rio Dependentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 32
        Top = 72
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
        Left = 224
        Top = 72
        Width = 59
        Height = 22
        Caption = 'Idade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 416
        Top = 72
        Width = 59
        Height = 22
        Caption = 'S'#243'cio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 137
      Width = 718
      Height = 64
      object RLDBText1: TRLDBText
        Left = 32
        Top = 24
        Width = 43
        Height = 18
        DataField = 'nome'
        DataSource = Teste.ds_dependentes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 224
        Top = 24
        Width = 44
        Height = 18
        DataField = 'idade'
        DataSource = Teste.ds_dependentes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 416
        Top = 24
        Width = 90
        Height = 18
        DataField = 'nome_socio'
        DataSource = Teste.ds_dependentes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
end
