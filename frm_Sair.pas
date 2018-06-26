unit frm_Sair;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls, db;

type
  TF_Sair = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Panel3: TPanel;
    btn_Sair: TBitBtn;
    btn_Cancelar: TBitBtn;
    procedure btn_SairClick(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Sair: TF_Sair;

implementation

{$R *.dfm}

procedure TF_Sair.btn_CancelarClick(Sender: TObject);
begin
  F_Sair.Close;
end;

procedure TF_Sair.btn_SairClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
