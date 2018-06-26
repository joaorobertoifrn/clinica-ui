unit U_Autenticacao;


interface

type
  TAutenticacao = class
  private
    Femail: String;
    Fsenha: String;
    Ftoken: String;
    procedure Setemail(const Value: String);
    procedure Setsenha(const Value: String);
    procedure Settoken(const Value: String);

  published

  property email : String read Femail write Setemail;
  property senha : String read Fsenha write Setsenha;
  property token : String read Ftoken write Settoken;
  end;

implementation

{ TAutenticacao }

procedure TAutenticacao.Setemail(const Value: String);
begin
  Femail := Value;
end;

procedure TAutenticacao.Setsenha(const Value: String);
begin
  Fsenha := Value;
end;

procedure TAutenticacao.Settoken(const Value: String);
begin
  Ftoken := Value;
end;

end.
