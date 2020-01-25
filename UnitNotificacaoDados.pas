unit UnitNotificacaoDados;

interface
Uses FMX.Graphics;

Type TNotificacao = record
  id:integer;
  icone:TBitmap;
  codUsuario:string;
  data:string;
  texto:string;
  tipo:string;
end;

implementation

end.
