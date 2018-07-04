inherited F_Paciente: TF_Paciente
  Caption = 'Paciente'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Caption = 'Cadastro - Paciente'
  end
  inherited Panel2: TPanel
    inherited PageControl1: TPageControl
      inherited Tab_Cadastro: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
      end
    end
  end
  inherited DataSource1: TDataSource
    DataSet = Tab_Paciente
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'http://clinicaifrn.herokuapp.com/paciente'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 56
    Top = 296
  end
  object RESTRequestListar: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponseListar
    SynchronizedEvents = False
    Left = 136
    Top = 296
  end
  object RESTResponseListar: TRESTResponse
    ContentType = 'application/json'
    Left = 240
    Top = 296
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = Tab_Paciente
    FieldDefs = <>
    Response = RESTResponseListar
    Left = 376
    Top = 296
  end
  object Tab_Paciente: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'nome'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'email'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'cpf'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 496
    Top = 296
    object Tab_Pacienteid: TWideStringField
      DisplayLabel = 'ID'
      DisplayWidth = 5
      FieldName = 'id'
      Size = 255
    end
    object Tab_Pacientenome: TWideStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 45
      FieldName = 'nome'
      Size = 255
    end
    object Tab_Pacienteemail: TWideStringField
      DisplayLabel = 'Email'
      DisplayWidth = 29
      FieldName = 'email'
      Size = 255
    end
    object Tab_Pacientecpf: TWideStringField
      DisplayLabel = 'CPF'
      DisplayWidth = 15
      FieldName = 'cpf'
      Size = 255
    end
  end
end
