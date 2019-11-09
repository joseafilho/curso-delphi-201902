object fmMovimentoEstoqueEntrada: TfmMovimentoEstoqueEntrada
  Left = 0
  Top = 0
  Caption = 'Movimento de Estoque - Entrada'
  ClientHeight = 174
  ClientWidth = 380
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 56
    Width = 56
    Height = 13
    Caption = 'Quantidade'
  end
  inline frConsultaProduto1: TfrConsultaProduto
    Left = 8
    Top = 8
    Width = 345
    Height = 42
    AutoSize = True
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
  end
  object spQuantidade: TSpinEdit
    Left = 8
    Top = 75
    Width = 81
    Height = 22
    MaxValue = 99999
    MinValue = 1
    TabOrder = 1
    Value = 0
  end
  object btConfirmar: TButton
    Left = 216
    Top = 141
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 2
    OnClick = btConfirmarClick
  end
  object btCancelar: TButton
    Left = 297
    Top = 141
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
  end
  object qrEstoque: TFDQuery
    Connection = dmPrincipal.fdConn
    Left = 280
    Top = 72
  end
end
