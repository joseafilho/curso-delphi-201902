object fmConsultaProdutos: TfmConsultaProdutos
  Left = 0
  Top = 0
  Caption = 'Consulta de Produtos'
  ClientHeight = 334
  ClientWidth = 533
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 533
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 4
      Width = 87
      Height = 13
      Caption = 'Consultar Produto'
    end
    object edConsulta: TEdit
      Left = 8
      Top = 23
      Width = 353
      Height = 21
      TabOrder = 0
      OnKeyDown = edConsultaKeyDown
    end
  end
  object grDados: TDBGrid
    Left = 0
    Top = 57
    Width = 533
    Height = 277
    Align = alClient
    DataSource = dsConsulta
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = grDadosDblClick
    OnKeyDown = grDadosKeyDown
  end
  object qrConsulta: TFDQuery
    Connection = dmPrincipal.fdConn
    Left = 264
    Top = 176
  end
  object dsConsulta: TDataSource
    DataSet = qrConsulta
    Left = 264
    Top = 240
  end
end
