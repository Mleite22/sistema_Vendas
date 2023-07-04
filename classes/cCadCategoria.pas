﻿unit cCadCategoria;

interface

uses System.Classes,
     Vcl.Controls,
     Vcl.ExtCtrls,
     Vcl.Dialogs, //lista da Units
     ZAbstractConnection,  //CONEXÃO DB
     ZConnection,          //CONEXÃO DB
     ZAbstractRODataset,
     ZAbstractDataset,
     ZDataset,
     System.SysUtils;

type
  TCategoria = class

    private
      ConexaoDB : TZConnection;
      F_categoria_id : Integer;  //int
      F_descricao : String;     //varchar

    function getCodigo: Integer;
    function getDescricao: String;
    procedure setCodigo(const Value: Integer);
    procedure setDescricao(const Value: String);

    public  //Variaveis publicas

      constructor Create (aConexao: TZConnection);  //CONEXÃO DB

      destructor Destroy; override;

      function Gravar: Boolean;

      function Atualizar: Boolean;

      function Apagar: Boolean;

      function Selecionar (id:Integer): Boolean;

    published //Variaveis e métodos publicos que podem ser usadas fora da classe

      property codigo : Integer read getCodigo    write setCodigo;
      property descricao    : String  read getDescricao write setDescricao;
  end;

implementation //Corpo da classe



{ TCategoria }
                {$region'GRUD'}

                  //Apagar
function TCategoria.Apagar: Boolean;
var QRYApagar : TZQuery;
begin
  if MessageDlg('Apagar o Registro: '+#13+#13+
                'Código: ' +IntToStr(F_categoria_id)+#13+
                'Descrição: '+F_descricao, mtInformation,[mbYes, mbNo], 0) = mrNo then
    begin                
      Result:= False;
      Abort;
    end;

    try
    Result := True;      
    QRYApagar:= TZQuery.Create(nil);
    QRYApagar.Connection:= ConexaoDB;
    QRYApagar.SQL.Clear;
    QRYApagar.SQL.Add('DELETE FROM Categorias '+
                      'WHERE categoria_id = :categoria_id ');
    QRYApagar.ParamByName('categoria_id').AsInteger := F_categoria_id;
    try                      
      QRYApagar.ExecSQL;
    Except
      Result := False;
    end;
    
    finally
      if Assigned(QRYApagar) then
        FreeAndNil(QRYApagar);
    end;
    
end;

                   //Atualizar
function TCategoria.Atualizar: Boolean;

var QRYAtualizar : TZQuery;  //Atualiza dados na tabela
begin
   try
     Result :=True;
     QRYAtualizar:= TZQuery.Create(nil);
     QRYAtualizar.Connection := ConexaoDB;
     QRYAtualizar.SQL.Clear;
     QRYAtualizar.SQL.Add(' UPDATE Categorias '  +
                          ' SET descricao = :descricao ' +
                          ' WHERE categoria_id = :categoria_id ');

     QRYAtualizar.ParamByName('categoria_id').AsInteger:= Self.F_categoria_id;
     QRYAtualizar.ParamByName('descricao').AsString    := Self.F_descricao;
     try
       QRYAtualizar.ExecSQL;


     Except
     Result := False;
     end;

   finally
   if Assigned(QRYAtualizar) then   //Exclui da memória
     FreeAndNil(QRYAtualizar);


  end;
end;

                  //Gravar
function TCategoria.Gravar: Boolean;

var QRYGravar : TZQuery;  //Inseri dados na tabela

begin
   try
     Result :=True;
     QRYGravar:= TZQuery.Create(nil);
     QRYGravar.Connection:= ConexaoDB;
     QRYGravar.SQL.Clear;
     QRYGravar.SQL.Add(' INSERT into Categorias (descricao) VALUES (:descricao) ');
     QRYGravar.ParamByName('descricao').AsString:= descricao;
     try
       QRYGravar.ExecSQL; //Execulta no banco de dados
     Except
     Result := False;

     end;
   finally
   if Assigned(QRYGravar) then  //Exclui da memória
     FreeAndNil(QRYGravar);


   end;
end;

                 //Selecionar
function TCategoria.Selecionar(id: Integer): Boolean;
  var QRYSelecionar : TZQuery;  //Inseri dados na tabela
begin
   try
     Result :=True;
     QRYSelecionar:= TZQuery.Create(nil);
     QRYSelecionar.Connection := ConexaoDB;
     QRYSelecionar.SQL.Clear;
     QRYSelecionar.SQL.Add('Select categoria_id, ' +
                              ' descricao ' +
                       ' from Categorias ' +
                       ' where categoria_id = :categoria_id ');
     QRYSelecionar.ParamByName('categoria_id').AsInteger:= id;
     try
       QRYSelecionar.Open;

       Self.F_categoria_id := QRYSelecionar.FieldByName('categoria_id').AsInteger;
       Self.F_descricao := QRYSelecionar.FieldByName('descricao').AsString;
     Except
     Result := False;
     end;

   finally
   if Assigned(QRYSelecionar) then
     FreeAndNil(QRYSelecionar);


  end;
end;

              {$endregion}

                 {$region'CONSTRUCTION, DESTRUCTION'}

constructor TCategoria.Create(aConexao: TZConnection);
begin
  ConexaoDB := aConexao;
end;

destructor TCategoria.Destroy;
begin

  inherited;
end;
              {$endregion}

              {$region'GET'}
function TCategoria.getCodigo: Integer;
begin
   Result := Self.F_categoria_id;
end;

function TCategoria.getDescricao: String;
begin
  Result := Self.F_descricao;
end;

{$endregion}

              {$region'SET'}

procedure TCategoria.setCodigo(const Value: Integer);
begin
  Self.F_categoria_id := Value;
end;

procedure TCategoria.setDescricao(const Value: String);
begin
   Self.F_descricao := Value;
end;

{$endregion}
end.
