object BancoDados: TBancoDados
  OldCreateOrder = False
  Height = 150
  Width = 215
  object Conexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Persist Security Info=False;User ID=sa;Init' +
      'ial Catalog=gestor_vendas;Data Source=NTB-JOAOROBERTO;Initial Fi' +
      'le Name="";Server SPN=""'
    Provider = 'SQLNCLI11.1'
    Left = 112
    Top = 48
  end
  object qry_Usuario: TADOQuery
    Active = True
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From cliente')
    Left = 32
    Top = 64
    object qry_Usuarioid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qry_Usuariocpf_ou_cnpj: TStringField
      FieldName = 'cpf_ou_cnpj'
      Size = 255
    end
    object qry_Usuarioemail: TStringField
      FieldName = 'email'
      Size = 255
    end
    object qry_Usuarionome: TStringField
      FieldName = 'nome'
      Size = 255
    end
    object qry_Usuariosenha: TStringField
      FieldName = 'senha'
      Size = 255
    end
    object qry_Usuariotipo: TIntegerField
      FieldName = 'tipo'
    end
  end
end
