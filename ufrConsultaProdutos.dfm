object frConsultaProduto: TfrConsultaProduto
  Left = 0
  Top = 0
  Width = 345
  Height = 42
  AutoSize = True
  TabOrder = 0
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 38
    Height = 13
    Caption = 'Produto'
  end
  object edId: TEdit
    Left = 0
    Top = 19
    Width = 57
    Height = 21
    TabOrder = 0
  end
  object edDescricao: TEdit
    Left = 63
    Top = 19
    Width = 250
    Height = 21
    TabOrder = 1
  end
  object btConsultar: TButton
    Left = 319
    Top = 17
    Width = 26
    Height = 25
    Caption = '...'
    TabOrder = 2
    OnClick = btConsultarClick
  end
end
