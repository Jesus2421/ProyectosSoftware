program Subrutina;
uses crt;
 {vamos a declara una Subrutina para las operaciones basicas}
 Procedure OperacionBasica(Var Num1,Num2:Real);
 Var Resultado : Real;
begin
   Resultado := Num1 + Num2;
   writeln('Suma: ', Resultado:4:2);
   
   Resultado := Num1 - Num2;
   writeln('Resta: ', Resultado:4:2);
   
   Resultado := Num1 * Num2;
   writeln('Multiplicacion: ', Resultado:4:2);
   
   if Num2 <> 0 then
   begin
     Resultado := Num1 / Num2;
     writeln('Division: ', Resultado:4:2);
   end
   else
     writeln('No se puede dividir por cero.');
 end;
    
Var
a,b:Real;
begin
   clrscr;
   writeln('Hola Mundo');
   write('Ingrese el primer numero : ');
   readln(a);
   write('Ingrese un segundo numero: ');
   readln(b);
   OperacionBasica(a, b);
   readkey;
end.
