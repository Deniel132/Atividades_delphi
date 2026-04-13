object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 507
  ClientWidth = 881
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = CreateForm
  TextHeight = 15
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 881
    Height = 37
    Align = alTop
    Alignment = taCenter
    Caption = 'Ferias de Funcionarios'
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
    ExplicitWidth = 262
  end
  object BtTeste: TButton
    Left = 536
    Top = 368
    Width = 129
    Height = 41
    Cursor = crHandPoint
    Caption = 'DesHabilitar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    StyleName = 'Windows'
    OnClick = desebla
  end
  object Button1: TButton
    Left = 208
    Top = 368
    Width = 113
    Height = 41
    Cursor = crHandPoint
    Caption = 'Habilitar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    StyleName = 'Windows'
    OnClick = enable
  end
  object Button2: TButton
    Left = 208
    Top = 448
    Width = 113
    Height = 41
    Cursor = crHandPoint
    Caption = 'Form 4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    StyleName = 'Windows'
    OnClick = form3
  end
  object Button3: TButton
    Left = 536
    Top = 448
    Width = 113
    Height = 41
    Cursor = crHandPoint
    Caption = 'Form 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    StyleName = 'Windows'
    OnClick = teste
  end
end
