inherited F_Convenio: TF_Convenio
  Caption = 'Conv'#234'nio'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Caption = 'Cadastro - Conv'#234'nio'
  end
  inherited Panel2: TPanel
    inherited PageControl1: TPageControl
      ActivePage = Tab_Pesquisa
      inherited Tab_Pesquisa: TTabSheet
        inherited Panel5: TPanel
          inherited DBGrid1: TDBGrid
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            OnDblClick = DBGrid1DblClick
          end
        end
      end
      inherited Tab_Cadastro: TTabSheet
        object edt_periodoRetorno: TLabeledEdit [0]
          Left = 482
          Top = 208
          Width = 121
          Height = 21
          EditLabel.Width = 93
          EditLabel.Height = 13
          EditLabel.Caption = 'Per'#237'odo do Retorno'
          TabOrder = 8
        end
        object edt_telefone: TLabeledEdit [1]
          Left = 320
          Top = 208
          Width = 137
          Height = 21
          EditLabel.Width = 42
          EditLabel.Height = 13
          EditLabel.Caption = 'Telefone'
          TabOrder = 7
        end
        object edt_codigoCNS: TLabeledEdit [2]
          Left = 176
          Top = 208
          Width = 121
          Height = 21
          EditLabel.Width = 56
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo CNS'
          TabOrder = 6
        end
        object edt_registroANS: TLabeledEdit [3]
          Left = 24
          Top = 208
          Width = 137
          Height = 21
          EditLabel.Width = 63
          EditLabel.Height = 13
          EditLabel.Caption = 'Registro ANS'
          TabOrder = 5
        end
        object edt_razaoSocial: TLabeledEdit [4]
          Left = 176
          Top = 160
          Width = 427
          Height = 21
          EditLabel.Width = 60
          EditLabel.Height = 13
          EditLabel.Caption = 'Raz'#227'o Social'
          TabOrder = 4
        end
        object edt_cnpj: TLabeledEdit [5]
          Left = 24
          Top = 160
          Width = 137
          Height = 21
          EditLabel.Width = 25
          EditLabel.Height = 13
          EditLabel.Caption = 'CNPJ'
          TabOrder = 3
        end
        object edt_email: TLabeledEdit [6]
          Left = 352
          Top = 109
          Width = 251
          Height = 21
          EditLabel.Width = 24
          EditLabel.Height = 13
          EditLabel.Caption = 'Email'
          TabOrder = 2
        end
        object edt_nome: TLabeledEdit [7]
          Left = 24
          Top = 109
          Width = 313
          Height = 21
          AutoSize = False
          EditLabel.Width = 27
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome'
          TabOrder = 1
        end
        object edt_id: TLabeledEdit [8]
          Left = 24
          Top = 61
          Width = 121
          Height = 21
          EditLabel.Width = 11
          EditLabel.Height = 13
          EditLabel.Caption = 'ID'
          TabOrder = 0
        end
        inherited btn_salvar: TButton
          TabOrder = 9
        end
      end
    end
  end
  inherited Panel3: TPanel
    Caption = 'Salvar'
  end
  inherited ImageList1: TImageList
    Left = 256
    Top = 72
  end
  inherited ActionList1: TActionList
    Left = 185
    Top = 74
    object exec_Listar: TAction
      Caption = 'Listar'
      OnExecute = exec_ListarExecute
    end
  end
  inherited DataSource1: TDataSource
    DataSet = Tab_Convenio
    Left = 328
    Top = 72
  end
  object RESTClientListar: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'http://clinicaifrn.herokuapp.com/convenio'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 32
    Top = 296
  end
  object RESTRequestListar: TRESTRequest
    Client = RESTClientListar
    Params = <>
    Response = RESTResponseListar
    SynchronizedEvents = False
    Left = 120
    Top = 296
  end
  object RESTResponseListar: TRESTResponse
    Left = 224
    Top = 296
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = Tab_Convenio
    FieldDefs = <>
    Response = RESTResponseListar
    Left = 360
    Top = 296
  end
  object Tab_Convenio: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 488
    Top = 296
    object Tab_Convenioid: TWideStringField
      DisplayLabel = 'ID'
      DisplayWidth = 3
      FieldName = 'id'
      EditMask = '!9999;0;_'
      Size = 255
    end
    object Tab_Convenionome: TWideStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 45
      FieldName = 'nome'
      Size = 255
    end
    object Tab_ConvenioregistroANS: TWideStringField
      DisplayLabel = 'Registro ANS'
      DisplayWidth = 10
      FieldName = 'registroANS'
      Size = 255
    end
    object Tab_ConveniorazaoSocial: TWideStringField
      DisplayLabel = 'Raz'#227'o Social'
      DisplayWidth = 50
      FieldName = 'razaoSocial'
      Size = 255
    end
    object Tab_Conveniocnpj: TWideStringField
      DisplayLabel = 'CNPJ'
      DisplayWidth = 15
      FieldName = 'cnpj'
      Size = 255
    end
    object Tab_ConveniocodigoCNS: TWideStringField
      DisplayLabel = 'C'#243'd. CNS'
      DisplayWidth = 10
      FieldName = 'codigoCNS'
      Size = 255
    end
    object Tab_Conveniotelefone: TWideStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 10
      FieldName = 'telefone'
      Size = 255
    end
    object Tab_Convenioemail: TWideStringField
      DisplayLabel = 'Email'
      DisplayWidth = 20
      FieldName = 'email'
      Size = 255
    end
    object Tab_ConvenioperiodoRetorno: TWideStringField
      DisplayLabel = 'Retorno'
      DisplayWidth = 7
      FieldName = 'periodoRetorno'
      Size = 255
    end
    object Tab_Convenioparticular: TWideStringField
      DisplayLabel = 'Particular'
      DisplayWidth = 10
      FieldName = 'particular'
      Size = 255
    end
  end
  object RESTClientSalvar: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'http://clinicaifrn.herokuapp.com/convenio'
    ContentType = 'application/json'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 32
    Top = 352
  end
  object RESTRequestSalvar: TRESTRequest
    Client = RESTClientSalvar
    Method = rmPOST
    Params = <
      item
        Kind = pkHTTPHEADER
        name = 'Content-Type'
        Value = 'application/json'
      end
      item
        Kind = pkHTTPHEADER
        name = 'Authorization'
        Value = 
          'Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ1c3VhcmlvQGNsaW5pY2EuY29t' +
          'LmJyIiwiZXhwIjoxNTMwNzU5NjU2fQ.uo0nNZzL8wScEHUSgBZ2MoKanZZwE1ueF' +
          '702ZYmOXTxlkWN0EcdnTh5ABGnt2LOXTqEfaFQJTGk2IP-ocFRrJg'
      end
      item
        Kind = pkREQUESTBODY
        name = 'body'
        Options = [poDoNotEncode]
        ContentType = ctAPPLICATION_JSON
      end>
    Response = RESTResponseSalvar
    SynchronizedEvents = False
    Left = 120
    Top = 352
  end
  object RESTResponseSalvar: TRESTResponse
    ContentType = 'text/html'
    Left = 224
    Top = 352
  end
  object RESTClientByID: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'http://clinicaifrn.herokuapp.com/convenio/1'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 32
    Top = 240
  end
  object RESTRequestByID: TRESTRequest
    Client = RESTClientByID
    Params = <
      item
        Kind = pkURLSEGMENT
        name = '/{id}'
      end>
    Response = RESTResponseByID
    SynchronizedEvents = False
    Left = 120
    Top = 240
  end
  object RESTResponseByID: TRESTResponse
    ContentType = 'application/json'
    Left = 224
    Top = 240
  end
end
