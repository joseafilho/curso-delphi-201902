inherited fmCadastroProdutos: TfmCadastroProdutos
  Caption = 'Cadastro de Produtos'
  ClientHeight = 407
  ClientWidth = 648
  ExplicitWidth = 664
  ExplicitHeight = 446
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcPrincipal: TPageControl
    Width = 648
    Height = 407
    ActivePage = tsEdits
    inherited tsGrid: TTabSheet
      inherited pnButtonsGrid: TPanel
        Left = 551
        Height = 379
        object btFornecedores: TButton
          Left = 8
          Top = 117
          Width = 75
          Height = 25
          Caption = 'Fornecedores'
          TabOrder = 3
          OnClick = btFornecedoresClick
        end
      end
      inherited grDados: TDBGrid
        Width = 551
        Height = 379
      end
    end
    inherited tsEdits: TTabSheet
      ExplicitWidth = 640
      ExplicitHeight = 379
      inherited pnButtonsEdits: TPanel
        Left = 551
        Height = 379
        ExplicitLeft = 551
        ExplicitHeight = 379
      end
      inherited pnEdits: TPanel
        Width = 551
        Height = 379
        ExplicitWidth = 551
        ExplicitHeight = 379
        object Label1: TLabel
          Left = 16
          Top = 19
          Width = 10
          Height = 13
          Caption = 'Id'
          FocusControl = edId
        end
        object Label2: TLabel
          Left = 16
          Top = 62
          Width = 27
          Height = 13
          Caption = 'Nome'
          FocusControl = edNome
        end
        object Label3: TLabel
          Left = 16
          Top = 102
          Width = 24
          Height = 13
          Caption = 'Valor'
          FocusControl = Valor
        end
        object edId: TDBEdit
          Left = 16
          Top = 38
          Width = 134
          Height = 21
          DataField = 'ID'
          DataSource = dsDados
          TabOrder = 0
        end
        object edNome: TDBEdit
          Left = 16
          Top = 78
          Width = 400
          Height = 21
          DataField = 'NOME'
          DataSource = dsDados
          TabOrder = 1
        end
        object Valor: TDBEdit
          Left = 16
          Top = 118
          Width = 134
          Height = 21
          DataField = 'VALOR'
          DataSource = dsDados
          TabOrder = 2
        end
      end
    end
  end
  inherited qrDados: TFDQuery
    SQL.Strings = (
      'SELECT * FROM PRODUTOS')
    object qrDadosID: TFDAutoIncField
      DefaultExpression = '0'
      DisplayLabel = 'Id'
      FieldName = 'ID'
      ReadOnly = True
    end
    object qrDadosNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object qrDadosVALOR: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
  end
end
