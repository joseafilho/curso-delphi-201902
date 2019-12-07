object fmLogin: TfmLogin
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 202
  ClientWidth = 343
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 39
    Height = 19
    Caption = 'Login'
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 43
    Height = 19
    Caption = 'Senha'
  end
  object edLogin: TEdit
    Left = 16
    Top = 41
    Width = 241
    Height = 27
    TabOrder = 0
  end
  object edSenha: TEdit
    Left = 16
    Top = 105
    Width = 241
    Height = 27
    PasswordChar = '*'
    TabOrder = 1
  end
  object btOk: TButton
    Left = 176
    Top = 169
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 2
    OnClick = btOkClick
  end
  object btCancelar: TButton
    Left = 257
    Top = 169
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
  end
  object qrLogin: TFDQuery
    Connection = dmPrincipal.fdConn
    Left = 256
    Top = 8
  end
end
