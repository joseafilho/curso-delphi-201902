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
  OnClose = FormClose
  OnShow = FormShow
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
    object tsGrid: TTabSheet
      Caption = 'tsGrid'
      object pnButtonsGrid: TPanel
        Left = 388
        Top = 0
        Width = 89
        Height = 294
        Align = alRight
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object btInserir: TButton
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Inserir'
          TabOrder = 0
          OnClick = btInserirClick
        end
        object btEditar: TButton
          Left = 8
          Top = 36
          Width = 75
          Height = 25
          Caption = 'Editar'
          TabOrder = 1
          OnClick = btEditarClick
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
        DataSource = dsDados
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
      object pnButtonsEdits: TPanel
        Left = 388
        Top = 0
        Width = 89
        Height = 294
        Align = alRight
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object btSalvar: TButton
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Salvar'
          TabOrder = 0
          OnClick = btSalvarClick
        end
        object btCancelar: TButton
          Left = 8
          Top = 36
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 1
          OnClick = btCancelarClick
        end
      end
    end
  end
  object qrDados: TFDQuery
    Connection = dmPrincipal.fdConn
    Left = 164
    Top = 80
  end
  object dsDados: TDataSource
    DataSet = qrDados
    Left = 164
    Top = 136
  end
end
