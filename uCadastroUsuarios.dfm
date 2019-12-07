inherited fmCadastroUsuarios: TfmCadastroUsuarios
  Caption = 'Cadastro de Usuarios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcPrincipal: TPageControl
    ActivePage = tsEdits
    inherited tsEdits: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 477
      ExplicitHeight = 294
      inherited pnEdits: TPanel
        object Label1: TLabel
          Left = 16
          Top = 13
          Width = 25
          Height = 13
          Caption = 'Login'
        end
        object Label2: TLabel
          Left = 16
          Top = 64
          Width = 30
          Height = 13
          Caption = 'Senha'
        end
        object edLogin: TEdit
          Left = 16
          Top = 32
          Width = 169
          Height = 21
          TabOrder = 0
        end
        object edSenha: TEdit
          Left = 16
          Top = 83
          Width = 169
          Height = 21
          TabOrder = 1
        end
      end
    end
  end
  inherited qrDados: TFDQuery
    SQL.Strings = (
      'SELECT * FROM USUARIOS')
    object qrDadosLOGIN: TStringField
      DisplayLabel = 'Login'
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object qrDadosSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
  end
end
