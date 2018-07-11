unit frm_Convenio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frm_Padrao, Data.DB, IPPeerClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Response.Adapter, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, REST.Json, REST.Json.Types, U_Convenio, System.Json, System.Json.Types;

type
  TF_Convenio = class(TF_Padrao)
    RESTClientListar: TRESTClient;
    RESTRequestListar: TRESTRequest;
    RESTResponseListar: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    Tab_Convenio: TFDMemTable;
    Tab_Convenioid: TWideStringField;
    Tab_Convenionome: TWideStringField;
    Tab_ConvenioregistroANS: TWideStringField;
    Tab_ConveniorazaoSocial: TWideStringField;
    Tab_Conveniocnpj: TWideStringField;
    Tab_ConveniocodigoCNS: TWideStringField;
    Tab_Conveniotelefone: TWideStringField;
    Tab_Convenioemail: TWideStringField;
    Tab_ConvenioperiodoRetorno: TWideStringField;
    Tab_Convenioparticular: TWideStringField;
    edt_id: TLabeledEdit;
    edt_nome: TLabeledEdit;
    edt_email: TLabeledEdit;
    edt_cnpj: TLabeledEdit;
    edt_razaoSocial: TLabeledEdit;
    edt_registroANS: TLabeledEdit;
    edt_codigoCNS: TLabeledEdit;
    edt_telefone: TLabeledEdit;
    edt_periodoRetorno: TLabeledEdit;
    RESTClientSalvar: TRESTClient;
    RESTRequestSalvar: TRESTRequest;
    RESTResponseSalvar: TRESTResponse;
    exec_Listar: TAction;
    RESTClientFindByID: TRESTClient;
    RESTRequestFindByID: TRESTRequest;
    RESTResponseFindByID: TRESTResponse;
    exec_FindByID: TAction;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure exec_ListarExecute(Sender: TObject);
  private
    procedure CarregaValores(convenio: TConvenio);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Convenio: TF_Convenio;

implementation

{$R *.dfm}

procedure TF_Convenio.DBGrid1DblClick(Sender: TObject);
var
  convenio : TConvenio;
begin
  inherited;
  // Pega o registro e envia para tela de cadastro.

  try
    try
      RESTRequestFindByID.Params.ParameterByName('id_convenio').Value := DBGrid1.Columns.Items[0].Field.Text;
      RESTRequestFindByID.Execute;

      convenio := TConvenio.Create;
      convenio := TJSON.JsonToObject<TConvenio>(RESTResponseFindByID.Content.Trim);
    except on E: Exception do
      ShowMessage(E.Message);
    end;

    CarregaValores(convenio);
    PageControl1.TabIndex := 1;

  finally
    FreeAndNil(convenio);
  end;
end;

procedure TF_Convenio.exec_ListarExecute(Sender: TObject);
begin
  inherited;
  RESTRequestListar.Execute;
end;

procedure TF_Convenio.CarregaValores(convenio: TConvenio);
begin
  edt_id.Text := IntToStr(convenio.id);
  edt_nome.Text := convenio.nome;
  edt_email.Text := convenio.email;
  edt_cnpj.Text := convenio.cnpj;
  edt_razaoSocial.Text := convenio.razaoSocial;
  edt_registroANS.Text := convenio.registroANS;
  edt_codigoCNS.Text := convenio.codigoCNS;
  edt_telefone.Text := convenio.telefone;
  edt_periodoRetorno.Text := IntToStr(convenio.periodoRetorno);
end;

procedure TF_Convenio.FormShow(Sender: TObject);
begin
  inherited;
  exec_Listar.Execute;
end;

end.
