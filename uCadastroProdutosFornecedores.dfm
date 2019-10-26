inherited fmCadastroProdutosFornecedores: TfmCadastroProdutosFornecedores
  Caption = 'Cadastro de Produtos/Fornecedores'
  ClientHeight = 334
  ClientWidth = 617
  FormStyle = fsNormal
  Visible = False
  ExplicitWidth = 633
  ExplicitHeight = 373
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcPrincipal: TPageControl
    Width = 617
    Height = 334
    ExplicitWidth = 617
    ExplicitHeight = 334
    inherited tsGrid: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 609
      ExplicitHeight = 306
      inherited pnButtonsGrid: TPanel
        Left = 520
        Height = 306
        ExplicitLeft = 520
        ExplicitHeight = 306
      end
      inherited grDados: TDBGrid
        Width = 520
        Height = 306
      end
    end
    inherited tsEdits: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 609
      ExplicitHeight = 306
      inherited pnButtonsEdits: TPanel
        Left = 520
        Height = 306
        ExplicitLeft = 520
        ExplicitHeight = 306
      end
      inherited pnEdits: TPanel
        Width = 520
        Height = 306
        ExplicitWidth = 520
        ExplicitHeight = 306
        object Label1: TLabel
          Left = 8
          Top = 73
          Width = 55
          Height = 13
          Caption = 'Fornecedor'
        end
        object Label2: TLabel
          Left = 8
          Top = 17
          Width = 38
          Height = 13
          Caption = 'Produto'
        end
        object lkFornecedor: TDBLookupComboBox
          Left = 52
          Top = 92
          Width = 337
          Height = 21
          DataField = 'FORNECEDOR_ID'
          DataSource = dsDados
          KeyField = 'ID'
          ListField = 'NOME'
          ListSource = dsFornecedores
          TabOrder = 1
        end
        object edIdProduto: TEdit
          Left = 8
          Top = 36
          Width = 38
          Height = 21
          TabStop = False
          Color = 15132390
          ReadOnly = True
          TabOrder = 2
        end
        object edNomeProduto: TEdit
          Left = 52
          Top = 36
          Width = 349
          Height = 21
          TabStop = False
          Color = 15132390
          ReadOnly = True
          TabOrder = 3
        end
        object edIdFornecedor: TDBEdit
          Left = 8
          Top = 92
          Width = 38
          Height = 21
          DataField = 'FORNECEDOR_ID'
          DataSource = dsDados
          TabOrder = 0
        end
      end
    end
  end
  inherited qrDados: TFDQuery
    BeforeOpen = qrDadosBeforeOpen
    BeforePost = qrDadosBeforePost
    SQL.Strings = (
      'SELECT * FROM PRODUTOS_FORNECEDORES'
      'WHERE PRODUTO_ID = :PRODUTO_ID')
    ParamData = <
      item
        Name = 'PRODUTO_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrDadosPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
      Origin = 'PRODUTO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object qrDadosFORNECEDOR_ID: TIntegerField
      FieldName = 'FORNECEDOR_ID'
      Origin = 'FORNECEDOR_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object qrDadosFORNECEDOR: TStringField
      DisplayLabel = 'Fornecedor'
      FieldKind = fkLookup
      FieldName = 'FORNECEDOR'
      LookupDataSet = qrFornecedores
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'FORNECEDOR_ID'
      Size = 100
      Lookup = True
    end
  end
  object qrFornecedores: TFDQuery
    Connection = dmPrincipal.fdConn
    SQL.Strings = (
      'SELECT ID, NOME FROM FORNECEDORES')
    Left = 304
    Top = 176
    object qrFornecedoresID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrFornecedoresNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object dsFornecedores: TDataSource
    DataSet = qrFornecedores
    Left = 304
    Top = 232
  end
end
