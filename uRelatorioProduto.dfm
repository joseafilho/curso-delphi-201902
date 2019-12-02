object fmRelatorioProduto: TfmRelatorioProduto
  Left = 0
  Top = 0
  Caption = 'fmRelatorioProduto'
  ClientHeight = 479
  ClientWidth = 799
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rpProdutos: TRLReport
    Left = -3
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dsProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = rpProdutosBeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 43
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 236
        Top = 8
        Width = 229
        Height = 24
        Caption = 'Listagem de Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 81
      Width = 718
      Height = 23
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel2: TRLLabel
        Left = 3
        Top = 3
        Width = 20
        Height = 16
        Caption = 'ID:'
      end
      object RLLabel3: TRLLabel
        Left = 51
        Top = 3
        Width = 42
        Height = 16
        Caption = 'Nome:'
      end
      object RLLabel4: TRLLabel
        Left = 603
        Top = 3
        Width = 38
        Height = 16
        Caption = 'Valor:'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 104
      Width = 718
      Height = 20
      object RLDBText1: TRLDBText
        Left = 3
        Top = 2
        Width = 16
        Height = 16
        DataField = 'ID'
        DataSource = dsProdutos
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 51
        Top = 2
        Width = 43
        Height = 16
        DataField = 'NOME'
        DataSource = dsProdutos
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 603
        Top = 1
        Width = 48
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR'
        DataSource = dsProdutos
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 124
      Width = 718
      Height = 29
      BandType = btSummary
      object RLDBResult1: TRLDBResult
        Left = 603
        Top = 8
        Width = 87
        Height = 16
        DataField = 'VALOR'
        DataSource = dsProdutos
        Info = riSum
        Text = ''
        OnCompute = RLDBResult1Compute
      end
    end
  end
  object qrProdutos: TFDQuery
    AggregatesActive = True
    Connection = dmPrincipal.fdConn
    SQL.Strings = (
      'SELECT * FROM PRODUTOS')
    Left = 576
    Top = 144
    object qrProdutosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrProdutosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object qrProdutosVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object qrProdutosCATEGORIA_ID: TIntegerField
      FieldName = 'CATEGORIA_ID'
      Origin = 'CATEGORIA_ID'
      Required = True
    end
  end
  object dsProdutos: TDataSource
    DataSet = qrProdutos
    Left = 576
    Top = 200
  end
end
