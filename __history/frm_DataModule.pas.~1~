unit frm_DataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TBancoDados = class(TDataModule)
    Conexao: TADOConnection;
    qry_Usuario: TADOQuery;
    qry_Usuarioid: TAutoIncField;
    qry_Usuariocpf_ou_cnpj: TStringField;
    qry_Usuarioemail: TStringField;
    qry_Usuarionome: TStringField;
    qry_Usuariosenha: TStringField;
    qry_Usuariotipo: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BancoDados: TBancoDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
