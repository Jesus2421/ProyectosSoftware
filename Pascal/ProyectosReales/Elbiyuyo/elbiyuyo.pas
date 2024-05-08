program elbiyuyo;

uses crt;
//Primero de todo declaramos Variable
var
billete,D,b1:integer;
b,b3,Cb:real;
begin
 clrscr; // Limpiamos la pantalla
 randomize; // Inicializamos el generador de números aleatorios
 billete:=random (2); // Generamos un número aleatorio para simular el estado del billete (0: defectuoso, 1: correcto)
 Cb:=random (5000)+1; // Generamos un número aleatorio para simular la cantidad de billetes en el sistema
 //Mostramos la cantidad de billetes en el sistema.
 writeln ('cantidad de billetes en sistema:',Cb:5:0);
 readln; // Esperamos a que el usuario presione una tecla para continuar
 //Aqui lo que vamos hacer es simular la validación del billete
  if billete=0 then // Si el billete es defectuoso
        begin
            writeln ('billete defectuoso'); // Mostramos un mensaje indicando que el billete es defectuoso
        end
     else // Si el billete es correcto
         begin
              if billete=1 then // Si el billete es correcto
              begin
                write ('ingrese denominación de los billetes que desee:');readln(D); // Solicitamos al usuario la denominación deseada
                write ('su billete es de:');readln(b); // Solicitamos al usuario el monto del billete introducido
                b:=b-5; // Restamos el monto del servicio (Bs. 5)
                Cb:=Cb+5; // Añadimos el monto del servicio al total de billetes en el sistema
              if Cb>D then // Si hay suficientes billetes en el sistema para realizar el cambio
                begin
                b:=b/D; // Calculamos la cantidad de billetes a entregar al cliente
                Cb:=Cb-b; // Actualizamos la cantidad de billetes en el sistema
                b3:=b*D; // Calculamos el monto total a entregar al cliente
                end
               else // Si no hay suficientes billetes en el sistema para realizar el cambio
                begin
                 if Cb<D then // Si la cantidad de billetes en el sistema es menor que la denominación deseada
                 begin
                   write ('No hay dinero en el cajero'); // Mostramos un mensaje indicando que no hay suficiente dinero en el cajero
                 end
                else // Si no hay suficientes billetes en el sistema para realizar el cambio
                end;
                writeln ('Se le entregarán bolívares:',b3:5:0,' En billetes de:',D); // Mostramos el monto total a entregar al cliente y la denominación
                writeln ('cantidad de billetes en sistema:',Cb:5:0); // Mostramos la cantidad de billetes en el sistema después de la transacción
              end
              else // Si el billete no es ni defectuoso ni correcto
          end;
   readkey; // Esperamos a que el usuario presione una tecla para continuar
end.

