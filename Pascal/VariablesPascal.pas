program VariablesPascal;

uses crt;

var
  N, I: Integer;
  R: Real;
  Cadena: String;
  Binario: Boolean;
  C1: Char;
  a: Byte;
  b: ShortInt;
  c: LongInt; 
  d: Word;

begin
  clrscr;
  writeln('Hola Mundo');
  writeln('Estas son las variables declaradas'); 
  N := 5;
  I := 10;
  R := 3.1416;
  Cadena := 'Este es un texto';
  Binario := True;
  C1 := 'F';
  a := 8;
  b := -99; 
  c := 123456789;
  d := $FFFF;
  
  { Mostramos los valores de las variables }
  Writeln('Numero entero = ', N);
  Writeln('Numero Entero negativo = ', I);
  Writeln('Numero real = ', R:4:4); 
  Writeln('Cadena = "', Cadena, '"');
  Writeln('Caracter = ', C1);
  Writeln('Valor Booleano = ', Binario);
  Writeln('Byte = ', a);
  Writeln('Short Int = ', b);
  Writeln('Long int = ', c);
  Writeln('Word = ', d);
  readkey;
end.