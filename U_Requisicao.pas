unit U_Requisicao;

interface
uses
  REST.Response.Adapter, REST.Client, REST.Json, REST.Json.Types, System.Json,
  System.Json.Types, System.Classes;

  type
    TRequisicao = class
      Objeto: TObject;
      RESTRequest: TRESTRequest;
      RESTClient: TRESTClient;
      RESTResponse: TRESTResponse;

      constructor Create();
      function GET(servico: string): string;
      function DELETE(servico: string): string;
      function PUT(servico: string; paramter: TStringStream): string;
      function POST(servico : string;paramter : TStringList):string;
    end;

implementation

end.
