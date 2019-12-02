object fmRelatorioMovimentoEstoque: TfmRelatorioMovimentoEstoque
  Left = 0
  Top = 0
  Caption = 'fmRelatorioMovimentoEstoque'
  ClientHeight = 341
  ClientWidth = 717
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rpMovimentos: TRLReport
    Left = 0
    Top = -32
    Width = 794
    Height = 1123
    DataSource = dsDados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = rpMovimentosBeforePrint
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
        Width = 251
        Height = 24
        Caption = 'Movimentos de Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 81
      Width = 718
      Height = 92
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      DataFields = 'ID'
      BeforePrint = RLGroup1BeforePrint
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 43
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        object DBText1: TDBText
          Left = 75
          Top = 2
          Width = 65
          Height = 17
          DataField = 'NOME'
          DataSource = dsDados
        end
        object RLLabel2: TRLLabel
          Left = 8
          Top = 2
          Width = 58
          Height = 16
          Caption = 'Produto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 32
          Top = 21
          Width = 116
          Height = 16
          Caption = 'Tipo do Movimento:'
        end
        object RLLabel4: TRLLabel
          Left = 176
          Top = 21
          Width = 74
          Height = 16
          Caption = 'Quantidade:'
        end
        object RLLabel5: TRLLabel
          Left = 344
          Top = 21
          Width = 35
          Height = 16
          Caption = 'Data:'
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 43
        Width = 718
        Height = 21
        BeforePrint = RLBand3BeforePrint
        object RLDBText1: TRLDBText
          Left = 32
          Top = 2
          Width = 94
          Height = 16
          DataField = 'TIPO_MOV_CF'
          DataSource = dsDados
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 176
          Top = 2
          Width = 87
          Height = 16
          Alignment = taRightJustify
          DataField = 'QUANTIDADE'
          DataSource = dsDados
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 344
          Top = 2
          Width = 124
          Height = 16
          DataField = 'DATA_MOVIMENTO'
          DataSource = dsDados
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 64
        Width = 718
        Height = 25
        BandType = btFooter
        object RLDBResult1: TRLDBResult
          Left = 128
          Top = 2
          Width = 87
          Height = 16
          Alignment = taRightJustify
          DataField = 'QUANTIDADE'
          DataSource = dsDados
          Info = riSum
          Text = ''
        end
        object RLLabel6: TRLLabel
          Left = 8
          Top = 2
          Width = 116
          Height = 16
          Caption = 'Total Movimentado:'
        end
        object RLLabel7: TRLLabel
          Left = 240
          Top = 2
          Width = 91
          Height = 16
          Caption = 'Total de Sa'#237'da:'
        end
        object rlbTotalSaida: TRLLabel
          Left = 335
          Top = 2
          Width = 79
          Height = 16
          BeforePrint = rlbTotalSaidaBeforePrint
        end
        object rlbTotalEntrada: TRLLabel
          Left = 559
          Top = 2
          Width = 91
          Height = 16
          BeforePrint = rlbTotalEntradaBeforePrint
        end
        object RLLabel9: TRLLabel
          Left = 448
          Top = 2
          Width = 103
          Height = 16
          Caption = 'Total de Entrada:'
        end
      end
    end
  end
  object qrDados: TFDQuery
    Active = True
    OnCalcFields = qrDadosCalcFields
    Connection = dmPrincipal.fdConn
    SQL.Strings = (
      'SELECT PRO.ID,'
      '       PRO.NOME,'
      '       EST.TIPO,'
      '       EST.QUANTIDADE,'
      '       EST.DATA_MOVIMENTO'
      'FROM MOVIMENTOS_ESTOQUE EST'
      'INNER JOIN PRODUTOS PRO ON PRO.ID = EST.PRODUTO_ID'
      'ORDER BY PRO.ID')
    Left = 304
    Top = 176
    object qrDadosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrDadosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object qrDadosTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
    end
    object qrDadosQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
    end
    object qrDadosDATA_MOVIMENTO: TDateField
      FieldName = 'DATA_MOVIMENTO'
      Origin = 'DATA_MOVIMENTO'
      Required = True
    end
    object qrDadosTIPO_MOV_CF: TStringField
      FieldKind = fkCalculated
      FieldName = 'TIPO_MOV_CF'
      Calculated = True
    end
  end
  object dsDados: TDataSource
    DataSet = qrDados
    Left = 304
    Top = 232
  end
end
