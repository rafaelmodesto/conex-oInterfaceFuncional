unit eUsuario.Model.Entidade.Cliente;

interface

uses
  eUsuario.Model.Conexao.Interfaces, Data.DB;

Type
  TModelEntidadeCliente = class(TInterfacedObject, iEntidade)
    private
      FQuery: iQuery;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iEntidade;
      function Listar(Value : TDataSource) : iEntidade;
  end;
implementation

uses
  eUsuario.Controller.Factory.Query;

{ TMinhaClasse }

constructor TModelEntidadeCliente.Create;
begin
  FQuery := TControllerFactoryQuery.New.Query(nil);
end;

destructor TModelEntidadeCliente.Destroy;
begin

  inherited;
end;

function TModelEntidadeCliente.Listar(Value: TDataSource): iEntidade;
begin
  Result := Self;
  FQuery.SQL('SELECT * FROM TB_CLIENTES');
  Value.DataSet := FQuery.DataSet;
end;

class function TModelEntidadeCliente.New: iEntidade;
begin
  Result := Self.Create;
end;

end.
