unit frm_DataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TBancoDados = class(TDataModule)
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
