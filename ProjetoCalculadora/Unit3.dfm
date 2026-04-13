object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 533
  ClientWidth = 391
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object label16: TLabel
    Left = 8
    Top = 87
    Width = 161
    Height = 61
    AutoSize = False
    Caption = 'M/S'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
  end
  object label15: TLabel
    Left = 8
    Top = 20
    Width = 161
    Height = 61
    AutoSize = False
    Caption = 'KM/H'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
  end
  object KMH: TLabel
    Left = 184
    Top = 20
    Width = 196
    Height = 61
    Alignment = taRightJustify
    AutoSize = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
  end
  object MS: TLabel
    Left = 184
    Top = 87
    Width = 196
    Height = 61
    Alignment = taRightJustify
    AutoSize = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
  end
  object Button11: TButton
    Left = 8
    Top = 449
    Width = 89
    Height = 65
    Caption = 'Voltar'
    TabOrder = 0
    OnClick = voltar
  end
  object ButtonIgual: TButton
    Left = 294
    Top = 378
    Width = 89
    Height = 136
    Caption = '='
    TabOrder = 1
    OnClick = igual
  end
  object ButtonVirgula: TButton
    Left = 199
    Top = 447
    Width = 89
    Height = 65
    Caption = '.'
    TabOrder = 2
    OnClick = porVirgula
  end
  object Button: TButton
    Left = 104
    Top = 449
    Width = 89
    Height = 65
    Caption = '0'
    TabOrder = 3
    OnClick = Numero
  end
  object Button2: TButton
    Left = 104
    Top = 378
    Width = 89
    Height = 65
    Caption = '2'
    TabOrder = 4
    OnClick = Numero
  end
  object Button1: TButton
    Left = 8
    Top = 378
    Width = 89
    Height = 65
    Caption = '1'
    TabOrder = 5
    OnClick = Numero
  end
  object Button4: TButton
    Left = 8
    Top = 307
    Width = 89
    Height = 65
    Caption = '4'
    TabOrder = 6
    OnClick = Numero
  end
  object Button5: TButton
    Left = 104
    Top = 307
    Width = 89
    Height = 65
    Caption = '5'
    TabOrder = 7
    OnClick = Numero
  end
  object Button6: TButton
    Left = 199
    Top = 307
    Width = 89
    Height = 65
    Caption = '6'
    TabOrder = 8
    OnClick = Numero
  end
  object Button3: TButton
    Left = 199
    Top = 376
    Width = 89
    Height = 65
    Caption = '3'
    TabOrder = 9
    OnClick = Numero
  end
  object ButtonApagar: TButton
    Left = 294
    Top = 234
    Width = 86
    Height = 138
    Caption = '<-'
    TabOrder = 10
    OnClick = Apagar1
  end
  object ButtonApagarTudo: TButton
    Left = 199
    Top = 163
    Width = 184
    Height = 65
    Caption = 'AC'
    TabOrder = 11
    OnClick = limparTudo
  end
  object Button9: TButton
    Left = 199
    Top = 234
    Width = 89
    Height = 65
    Caption = '9'
    TabOrder = 12
    OnClick = Numero
  end
  object Button8: TButton
    Left = 103
    Top = 236
    Width = 89
    Height = 65
    Caption = '8'
    TabOrder = 13
    OnClick = Numero
  end
  object Button12: TButton
    Left = 8
    Top = 165
    Width = 185
    Height = 65
    Caption = 'Inverter'
    TabOrder = 14
    OnClick = inverter
  end
  object Button7: TButton
    Left = 8
    Top = 236
    Width = 89
    Height = 65
    Caption = '7'
    TabOrder = 15
    OnClick = Numero
  end
end
