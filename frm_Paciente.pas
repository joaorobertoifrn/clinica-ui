unit frm_Paciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frm_Padrao, Data.DB, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, IPPeerClient, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Response.Adapter;

type
  TF_Paciente = class(TF_Padrao)
    RESTClient1: TRESTClient;
    RESTRequestListar: TRESTRequest;
    RESTResponseListar: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    Tab_Paciente: TFDMemTable;
    Tab_Pacienteid: TWideStringField;
    Tab_Pacientenome: TWideStringField;
    Tab_Pacienteemail: TWideStringField;
    Tab_Pacientecpf: TWideStringField;
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
