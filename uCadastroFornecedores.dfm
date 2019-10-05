inherited fmCadastroFornecedores: TfmCadastroFornecedores
  Caption = 'Cadastro de Fornecedores'
  ClientHeight = 408
  ClientWidth = 610
  ExplicitWidth = 626
  ExplicitHeight = 447
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcPrincipal: TPageControl
    Width = 610
    Height = 408
    inherited tsGrid: TTabSheet
      inherited pnButtonsGrid: TPanel
        Left = 513
        Height = 380
      end
      inherited grDados: TDBGrid
        Width = 513
        Height = 380
      end
    end
    inherited tsEdits: TTabSheet
      inherited pnButtonsEdits: TPanel
        Left = 513
        Height = 380
      end
      inherited pnEdits: TPanel
        Width = 513
        Height = 380
        object Label1: TLabel
          Left = 16
          Top = 8
          Width = 10
          Height = 13
          Caption = 'Id'
          FocusControl = edId
        end
        object Label2: TLabel
          Left = 16
          Top = 48
          Width = 27
          Height = 13
          Caption = 'Nome'
          FocusControl = edNome
        end
        object Label3: TLabel
          Left = 16
          Top = 88
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = edEndereco
        end
        object Label4: TLabel
          Left = 16
          Top = 128
          Width = 24
          Height = 13
          Caption = 'Email'
          FocusControl = edEmail
        end
        object Label5: TLabel
          Left = 16
          Top = 168
          Width = 25
          Height = 13
          Caption = 'CNPJ'
          FocusControl = edCNPJ
        end
        object Label6: TLabel
          Left = 16
          Top = 208
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = edTelefone
        end
        object edId: TDBEdit
          Left = 16
          Top = 24
          Width = 134
          Height = 21
          DataField = 'ID'
          DataSource = dsDados
          TabOrder = 0
        end
        object edNome: TDBEdit
          Left = 16
          Top = 64
          Width = 400
          Height = 21
          DataField = 'NOME'
          DataSource = dsDados
          TabOrder = 1
        end
        object edEndereco: TDBEdit
          Left = 16
          Top = 104
          Width = 400
          Height = 21
          DataField = 'ENDERECO'
          DataSource = dsDados
          TabOrder = 2
        end
        object edEmail: TDBEdit
          Left = 16
          Top = 144
          Width = 400
          Height = 21
          DataField = 'EMAIL'
          DataSource = dsDados
          TabOrder = 3
        end
        object edCNPJ: TDBEdit
          Left = 16
          Top = 184
          Width = 199
          Height = 21
          DataField = 'CNPJ'
          DataSource = dsDados
          TabOrder = 4
        end
        object edTelefone: TDBEdit
          Left = 16
          Top = 224
          Width = 264
          Height = 21
          DataField = 'TELEFONE'
          DataSource = dsDados
          TabOrder = 5
        end
      end
    end
  end
  inherited qrDados: TFDQuery
    SQL.Strings = (
      'SELECT * FROM FORNECEDORES')
    object qrDadosID: TFDAutoIncField
      DefaultExpression = '0'
      DisplayLabel = 'Id'
      FieldName = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrDadosNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object qrDadosENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object qrDadosEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object qrDadosCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      FixedChar = True
      Size = 15
    end
    object qrDadosTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
    end
  end
end
