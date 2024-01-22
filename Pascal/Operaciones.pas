program Operaciones;
uses crt;
var
  a, b, i, n: integer;
  suma, resta, multiplicacion: integer;
  division: real;
  sumatoria: integer; 
begin
  clrscr;
  writeln('Hola Mundo');
  write('Ingrese el primer numero : ');
  readln(a);
  write('Ingrese un segundo numero: ');
  readln(b);
  
  suma := a + b;
  resta := a - b;
  multiplicacion := a * b;
  division := a / real(b);
  writeln('El resultado de la suma es =', suma);
  writeln('El resultado de la resta es =', resta);
  writeln('El resultado de la multiplicacion es =', multiplicacion);
  writeln('El resultado de la divicion es =', division:4:2);
  
  sumatoria := 0;
  n := 20;
  
  for i := 1 to n do begin
    sumatoria := sumatoria + i;
  end;
  writeln('Sumatoria = ', sumatoria);
  readkey;
end.
