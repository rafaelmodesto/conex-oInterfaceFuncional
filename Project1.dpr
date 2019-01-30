program Project1;

uses
  Vcl.Forms,
  eUsuario.View.Principal in 'eUsuario.View.Principal.pas' {Form1},
  eUsuario.Model.Conexao.Firedac in 'eUsuario.Model.Conexao.Firedac.pas',
  eUsuario.Model.Conexao.Interfaces in 'eUsuario.Model.Conexao.Interfaces.pas',
  eUsuario.Model.Query.Firedac in 'eUsuario.Model.Query.Firedac.pas',
  eUsuario.Model.Entidade.Cliente in 'eUsuario.Model.Entidade.Cliente.pas',
  eUsuario.Controller.Factory.Query in 'eUsuario.Controller.Factory.Query.pas',
  eUsuario.Controller.Factory.Interfaces in 'eUsuario.Controller.Factory.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
