program Clinica;

uses
  Vcl.Forms,
  frm_Principal in 'frm_Principal.pas' {F_Principal},
  frm_Sobre in 'frm_Sobre.pas' {F_Sobre},
  Vcl.Themes,
  Vcl.Styles,
  frm_Sair in 'frm_Sair.pas' {F_Sair},
  frm_DataModule in 'frm_DataModule.pas' {BancoDados: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Projeto Agenda Clinica';
  TStyleManager.TrySetStyle('Aqua Light Slate');
  Application.CreateForm(TF_Principal, F_Principal);
  Application.CreateForm(TF_Sair, F_Sair);
  Application.CreateForm(TBancoDados, BancoDados);
  Application.Run;
end.
