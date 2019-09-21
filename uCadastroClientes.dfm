inherited fmCadastroClientes: TfmCadastroClientes
  Caption = 'Cadastro de Clientes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcPrincipal: TPageControl
    inherited tsEdits: TTabSheet
      inherited pnEdits: TPanel
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 388
        ExplicitHeight = 294
        object Label5: TLabel
          Left = 16
          Top = 187
          Width = 19
          Height = 13
          Caption = 'CPF'
          FocusControl = edCPF
        end
        object Label2: TLabel
          Left = 16
          Top = 61
          Width = 31
          Height = 13
          Caption = 'Nome:'
        end
        object Label1: TLabel
          Left = 16
          Top = 13
          Width = 14
          Height = 13
          Caption = 'Id:'
        end
        object Label3: TLabel
          Left = 16
          Top = 107
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = edEndereco
        end
        object Label4: TLabel
          Left = 16
          Top = 147
          Width = 24
          Height = 13
          Caption = 'Email'
          FocusControl = edEmail
        end
        object Label6: TLabel
          Left = 16
          Top = 227
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = edTelefone
        end
        object edTelefone: TDBEdit
          Left = 16
          Top = 243
          Width = 264
          Height = 21
          DataField = 'TELEFONE'
          DataSource = dsDados
          TabOrder = 5
        end
        object edEmail: TDBEdit
          Left = 16
          Top = 163
          Width = 329
          Height = 21
          DataField = 'EMAIL'
          DataSource = dsDados
          TabOrder = 3
        end
        object edCPF: TDBEdit
          Left = 16
          Top = 203
          Width = 147
          Height = 21
          DataField = 'CPF'
          DataSource = dsDados
          TabOrder = 4
        end
        object edEndereco: TDBEdit
          Left = 16
          Top = 123
          Width = 329
          Height = 21
          DataField = 'ENDERECO'
          DataSource = dsDados
          TabOrder = 2
        end
        object edId: TDBEdit
          Left = 16
          Top = 32
          Width = 65
          Height = 21
          DataField = 'ID'
          DataSource = dsDados
          TabOrder = 0
        end
        object edNome: TDBEdit
          Left = 16
          Top = 80
          Width = 329
          Height = 21
          DataField = 'NOME'
          DataSource = dsDados
          TabOrder = 1
        end
      end
    end
  end
  inherited qrDados: TFDQuery
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
    object qrDadosID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrDadosNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object qrDadosENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 50
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object qrDadosEMAIL: TStringField
      DisplayLabel = 'Email'
      DisplayWidth = 50
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object qrDadosCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      FixedChar = True
      Size = 11
    end
    object qrDadosTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
    end
  end
end
