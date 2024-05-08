# Ejercicio el Cajero Automatico
### La entidad financiera “Santander” está interesada en implementar una red de cajeros automáticos que presten servicio de cambio de billetes de alta denominación a billetes de baja denominación ó sencillo. Dentro de las denominaciones que tiene prevista manejar se encuentran: billetes de Euros: 50, 20, 10, 5 y monedas Euros 1,00.
## Los pasos para ejecutar los cambios de denominación se muestran a continuación:
- El cliente introduce un billete en la ranura del cajero, la maquina lo lee y lo verifica:
-	Si el billete no es verificado con éxito, el cajero emite el siguiente mensaje: ‘Billete Defectuoso’ y lo devuelve al cliente. Si el cliente insiste, hasta tres veces, con el mismo billete el cajero lo retiene y le solicita comunicarse con el gerente de la entidad financiera.
-	En otro caso, el cajero solicita al cliente el tipo de denominación que prefiere y le muestra un menú de opciones.
-	Si no hay suficientes fondos en la denominación elegida, el cajero emite el mensaje correspondiente y muestra al cliente un segundo menú con las denominaciones para las que sí hay cambio. Este incluye la suma con las diferentes denominaciones disponibles en el cajero, hasta que complete el valor del billete del cliente.
-	En el caso que, de ningún modo, no haya fondos suficientes, el cajero emite el mensaje correspondiente y devuelve el billete al cliente.
-	Después de cada transacción, el cajero automáticamente retiene Bs. 5 por el servicio prestado. 
-	Una vez finalizada la transacción, el sistema de cambio actualiza los fondos que quedan en el cajero. 
-	Para hacer más interesante el problema, asumiremos que el cliente puede insertar billetes de cualquier denominación, aún cuando esta designación sea ficticia.
## Diseñe un programa, que simule la situación planteada y cada vez que el personal autorizado desee revisar los fondos del cajero, este sea capaz de mostrar, en forma detallada, lo que queda en inventario.

