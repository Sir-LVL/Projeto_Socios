object Form_logon: TForm_logon
  Left = 561
  Top = 245
  Width = 268
  Height = 202
  Caption = 'Logon'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 8
    Width = 36
    Height = 13
    Caption = 'Usu'#225'rio'
  end
  object Label2: TLabel
    Left = 56
    Top = 64
    Width = 31
    Height = 13
    Caption = 'Senha'
  end
  object edt_usuario: TEdit
    Left = 56
    Top = 24
    Width = 137
    Height = 21
    MaxLength = 30
    TabOrder = 0
  end
  object edt_senha: TEdit
    Left = 56
    Top = 80
    Width = 137
    Height = 21
    MaxLength = 10
    PasswordChar = '*'
    TabOrder = 1
  end
  object btn_ok: TBitBtn
    Left = 32
    Top = 120
    Width = 89
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    Kind = bkYes
  end
  object btn_fechar: TBitBtn
    Left = 136
    Top = 120
    Width = 89
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = btn_fecharClick
    Kind = bkAbort
  end
end