unit UnitCompromisso;

interface
uses FMX.Graphics;

Type TCompromisso = record
  seqCompromisso:integer;
  //icone:TBitmap;
  codUsuario:string;
  data:string;
  hora:string;
  descricao:string;
  indConcluido:string; //S or N
  qtParticipante:integer;
end;
implementation

end.
