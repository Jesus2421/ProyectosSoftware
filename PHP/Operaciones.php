<?php
  // Operaciones Basicas en PHP
  echo "Hola Mundo!"; // Imprime el texto Hola Mundo! 
  $numero = 10;       // Declaramos una variable llamada numero
  // y le asignamos un valor de 10 a la misma.
  echo "<br>";      // Salto de línea para separar los resultados
  echo "El número es: ", $numero, ".<br>";    // Concaten
  echo "La suma de 5 + 3 es: ", 5+3,
  ".<br> La resta de 7 - 2 es: ", 7-2
  ."<br> La multiplicación de 4 * 2 es: ",
  4*2,".<br>";   
  $division = 10 / 2; 
  echo "La división =", $division;  // Realizamos una operacion
  echo "<br>";
  // de división entre dos números
  if ($division == 5) {        // Comprobamos si resultado es un decimal
    echo "La división es exacta.";
    } else {                   
      echo "La división no es exacta.";
      }
  ?>