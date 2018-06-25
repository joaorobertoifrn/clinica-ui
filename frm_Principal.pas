unit frm_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TF_Principal = class(TForm)
    MainMenu1: TMainMenu;
    StatusBar1: TStatusBar;
    ActionList1: TActionList;
    act_CadPaciente: TAction;
    act_CadProfissional: TAction;
    act_CadConvenio: TAction;
    Cadastro1: TMenuItem;
    Ajuda1: TMenuItem;
    CadastroPaciente1: TMenuItem;
    CadastroProfissional1: TMenuItem;
    CadastroConvenio1: TMenuItem;
    act_Sair: TAction;
    act_LogOut: TAction;
    act_Ajuda: TAction;
    act_Sobre: TAction;
    Sistema1: TMenuItem;
    actAjuda1: TMenuItem;
    Sobre1: TMenuItem;
    N1: TMenuItem;
    LogOut1: TMenuItem;
    Sair1: TMenuItem;
    act_Agendamento: TAction;
    act_CadCidade: TAction;
    act_CadEspecialidades: TAction;
    act_CadLocalAtendimento: TAction;
    act_CadEstado: TAction;
    act_CadUsuario: TAction;
    Sistema2: TMenuItem;
    Cidade1: TMenuItem;
    Cidade2: TMenuItem;
    Cidade3: TMenuItem;
    Cidade4: TMenuItem;
    EstadoUF1: TMenuItem;
    Profissional1: TMenuItem;
    ImageList1: TImageList;
    Image1: TImage;
    procedure act_SobreExecute(Sender: TObject);
    procedure act_SairExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Principal: TF_Principal;

implementation

{$R *.dfm}

uses frm_Sobre, frm_Sair;

procedure TF_Principal.act_SairExecute(Sender: TObject);
begin
  F_Sair := TF_Sair.Create(Application);
  try
    F_Sair.ShowModal;
  finally
    FreeAndNil(F_Sair);
  end;
end;

procedure TF_Principal.act_SobreExecute(Sender: TObject);
begin
  F_Sobre := TF_Sobre.Create(Application);
  try
    F_Sobre.ShowModal;
  finally
    FreeAndNil(F_Sobre);
  end;
end;

end.
