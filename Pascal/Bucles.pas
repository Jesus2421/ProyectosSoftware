program Bucles;

uses crt;

var
i, n: integer;
begin
   clrscr;
   writeln('Hola Mundo');
   write ('Ingrese un numero : '); readln(n);
     { Bucles for }
   for i := 1 to n do begin
      writeln('Iteracion:', i);
   end;
   { Bucles While }
   while (i <= n) do begin
   writeln('Bucle while');
   i := i + 1;
   writeln('Iteracion:', i);
   end;
   readkey;
end.