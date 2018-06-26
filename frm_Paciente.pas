unit frm_Paciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frm_Padrao, Data.DB, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TF_Paciente = class(TF_Padrao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Paciente: TF_Paciente;

implementation

{$R *.dfm}

end.
