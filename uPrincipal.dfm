object fmPrincipal: TfmPrincipal
  Left = 0
  Top = 0
  Caption = 'Pivo - Automa'#231#227'o de vendas'
  ClientHeight = 271
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mmPrincipal
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object sbPrincipal: TStatusBar
    Left = 0
    Top = 252
    Width = 442
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 'Version: 1.0.0'
  end
  object mmPrincipal: TMainMenu
    Left = 168
    Top = 88
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
      object Fornecedores1: TMenuItem
        Caption = 'Fornecedores'
      end
      object Categorias1: TMenuItem
        Caption = 'Categorias'
        OnClick = Categorias1Click
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
        ShortCut = 32883
      end
    end
    object Movimentos1: TMenuItem
      Caption = 'Movimentos'
      object Vendas1: TMenuItem
        Caption = 'Vendas'
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Estoque1: TMenuItem
        Caption = 'Estoque'
      end
    end
  end
end
