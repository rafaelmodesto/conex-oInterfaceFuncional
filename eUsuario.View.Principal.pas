unit eUsuario.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, eUsuario.Model.Conexao.Interfaces;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    btnConectar: TButton;
    DBNavigator1: TDBNavigator;
    procedure btnConectarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FCliente : iEntidade;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  eUsuario.Model.Conexao.Firedac, eUsuario.Model.Entidade.Cliente;

{$R *.dfm}

procedure TForm1.btnConectarClick(Sender: TObject);
begin
  FCliente.Listar(DataSource1);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FCliente := TModelEntidadeCliente.New;
end;

end.
