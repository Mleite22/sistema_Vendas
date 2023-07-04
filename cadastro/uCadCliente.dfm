inherited frmCadCliente: TfrmCadCliente
  Caption = 'Cadastro de Clientes'
  ClientHeight = 382
  ClientWidth = 833
  ExplicitWidth = 839
  ExplicitHeight = 411
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 412
    Top = 201
    Width = 19
    Height = 13
    Caption = 'CEP'
  end
  inherited pgcPrincipal: TPageControl
    Width = 833
    Height = 341
    ActivePage = tabListagem
    ExplicitWidth = 833
    ExplicitHeight = 341
    inherited tabListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 825
      ExplicitHeight = 313
      object Label1: TLabel
        Left = 408
        Top = 81
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object Label3: TLabel
        Left = 408
        Top = 177
        Width = 42
        Height = 13
        Caption = 'Telefone'
      end
      object Label4: TLabel
        Left = 408
        Top = 224
        Width = 102
        Height = 13
        Caption = 'Data de NascimentoS'
      end
      object edtcliente_id: TLabeledEdit
        Tag = 1
        Left = 15
        Top = 51
        Width = 121
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 0
      end
      object edtnome: TLabeledEdit
        Tag = 2
        Left = 15
        Top = 99
        Width = 314
        Height = 21
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        MaxLength = 60
        TabOrder = 1
      end
      object edtCEP: TMaskEdit
        Left = 408
        Top = 99
        Width = 204
        Height = 21
        EditMask = '99.999-999;1;_'
        MaxLength = 10
        TabOrder = 2
        Text = '  .   -   '
      end
      object edtEndereco: TLabeledEdit
        Left = 15
        Top = 147
        Width = 378
        Height = 21
        EditLabel.Width = 45
        EditLabel.Height = 13
        EditLabel.Caption = 'Endere'#231'o'
        MaxLength = 60
        TabOrder = 3
      end
      object edtBairro: TLabeledEdit
        Left = 408
        Top = 147
        Width = 204
        Height = 21
        EditLabel.Width = 28
        EditLabel.Height = 13
        EditLabel.Caption = 'Bairro'
        MaxLength = 50
        TabOrder = 4
      end
      object edtCidade: TLabeledEdit
        Left = 15
        Top = 196
        Width = 378
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'Cidade'
        MaxLength = 50
        TabOrder = 5
      end
      object edtEmail: TLabeledEdit
        Left = 15
        Top = 243
        Width = 378
        Height = 21
        EditLabel.Width = 28
        EditLabel.Height = 13
        EditLabel.Caption = 'E-mail'
        MaxLength = 100
        TabOrder = 6
      end
      object edtData_Nascimento: TDateEdit
        Left = 408
        Top = 243
        Width = 121
        Height = 21
        ClickKey = 114
        DialogTitle = 'Selecione a Data de Nascimento'
        NumGlyphs = 2
        CalendarStyle = csDialog
        TabOrder = 7
      end
      object edtTelefone: TMaskEdit
        Left = 408
        Top = 197
        Width = 201
        Height = 21
        EditMask = '(99)99999-9999;1;_'
        MaxLength = 14
        TabOrder = 8
        Text = '(  )     -    '
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 825
      ExplicitHeight = 313
      inherited pnlListagemTop: TPanel
        Width = 825
        ExplicitWidth = 825
      end
      inherited grdListagem: TDBGrid
        Width = 825
        Height = 252
        Columns = <
          item
            Expanded = False
            FieldName = 'cliente_id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 232
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'endereco'
            Width = 331
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cep'
            Width = 109
            Visible = True
          end>
      end
    end
  end
  inherited pnlRodape: TPanel
    Top = 341
    Width = 833
    ExplicitTop = 341
    ExplicitWidth = 833
    inherited btnFechar: TBitBtn
      Left = 747
      ExplicitLeft = 747
    end
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited qryListagem: TZQuery
    SQL.Strings = (
      'SELECT  cliente_id,'
      '        nome,'
      '        endereco,'
      '        cidade,'
      '        bairro,'
      '        estado,'
      '        cep,'
      '        telefone,'
      '        email,'
      '        data_Nascimento'
      'FROM Clientes')
    object qryListagemcliente_id: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cliente_id'
      ReadOnly = True
    end
    object qryListagemnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Required = True
      Size = 60
    end
    object qryListagemendereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 60
    end
    object qryListagemcidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Size = 50
    end
    object qryListagembairro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Size = 50
    end
    object qryListagemestado: TWideStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Size = 2
    end
    object qryListagemcep: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Size = 10
    end
    object qryListagemtelefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Size = 14
    end
    object qryListagememail: TWideStringField
      DisplayLabel = 'Email'
      FieldName = 'email'
      Size = 100
    end
    object qryListagemdata_Nascimento: TDateTimeField
      DisplayLabel = 'data Nascimento'
      FieldName = 'data_Nascimento'
    end
  end
end
