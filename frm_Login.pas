unit frm_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IPPeerClient, Vcl.StdCtrls, REST.Client,
  REST.Authenticator.Basic, Data.Bind.Components, Data.Bind.ObjectScope, REST.JSON,
  frm_Principal, U_Autenticacao;

type
  TF_Login = class(TForm)
    edt_Email: TEdit;
    edt_Senha: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Login: TF_Login;

implementation

{$R *.dfm}

procedure TF_Login.Button1Click(Sender: TObject);
var
  json : TStringList;
begin
  json := TStringList.Create;

  Auth.email := edt_Email.Text;
  Auth.senha := edt_Senha.Text;

  json.Text := TJson.ObjectToJsonString(Auth);

  RESTRequest1.Params[0].Value := json.Text;
  RESTRequest1.Execute;

  if RESTResponse1.StatusCode = 200 then
  begin
    F_Login.Close;
    Auth.token := Copy(RESTResponse1.Headers.Values['Authorization'],7);
  end
  else
  begin
    ShowMessage('Falha no login');
  end;


end;

procedure TF_Login.Button2Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
