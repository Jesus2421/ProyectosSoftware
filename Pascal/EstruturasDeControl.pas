program EstructurasDeControl;

uses crt;

var
  edad, mayoria: integer;
  menu: char;

begin
  clrscr;
  writeln('Hola Mundo');
  write('Ingrese un numero : ');
  readln(edad);
  write('Ingrese un numero de su plato: '); readln(menu);
  mayoria := 18;

  { Condicional If-Else }
  if edad >= mayoria then
  begin
    writeln('Usted es mayor de edad');
  end;
  else
  begin
    writeln('Usted es menor de edad');
   end;
  { Condicional Case }
  case menu of
  '1': writeln('Plato 1: arroz con pollo');
  '2': writeln('Plato 2: Paella');
  '3': writeln('Plato 3: Parrilla');
  '4': exit;
  end;
  readkey;
end.
