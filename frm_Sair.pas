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
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Sair: TF_Sair;

implementation

{$R *.dfm}

procedure TF_Sair.BitBtn1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TF_Sair.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

end.
