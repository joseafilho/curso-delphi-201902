object fmCadastroBase: TfmCadastroBase
  Left = 0
  Top = 0
  Caption = 'fmCadastroBase'
  ClientHeight = 322
  ClientWidth = 485
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object pcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 485
    Height = 322
    ActivePage = tsEdits
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 462
    ExplicitHeight = 313
    object tsGrid: TTabSheet
      Caption = 'tsGrid'
      ExplicitLeft = 8
      ExplicitTop = 28
      object pnButtonsGrid: TPanel
        Left = 388
        Top = 0
        Width = 89
        Height = 294
        Align = alRight
        Color = clYellow
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = 387
        object btInserir: TButton
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Inserir'
          TabOrder = 0
        end
        object btEditar: TButton
          Left = 8
          Top = 36
          Width = 75
          Height = 25
          Caption = 'Editar'
          TabOrder = 1
        end
        object btExcluit: TButton
          Left = 8
          Top = 64
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 2
        end
      end
      object grDados: TDBGrid
        Left = 0
        Top = 0
        Width = 388
        Height = 294
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tsEdits: TTabSheet
      Caption = 'tsEdits'
      ImageIndex = 1
      ExplicitWidth = 454
      ExplicitHeight = 285
      object pnButtonsEdits: TPanel
        Left = 388
        Top = 0
        Width = 89
        Height = 294
        Align = alRight
        Color = clYellow
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = 387
        object btSalvar: TButton
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Salvar'
          TabOrder = 0
        end
        object btCancelar: TButton
          Left = 8
          Top = 36
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 1
        end
      end
    end
  end
end
