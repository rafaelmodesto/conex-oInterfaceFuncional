unit eUsuario.Controller.Factory.Interfaces;

interface

uses
  eUsuario.Model.Conexao.Interfaces;

Type

  iFactoryQuery = interface
    ['{567FF166-7C20-4EFD-A494-C003CDD40848}']
    function Query(Connection : iConexao) : iQuery;
  end;

implementation

end.
