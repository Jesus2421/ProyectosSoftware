<?php
  // Estructuras condicionales
  //Estructura if:
  $edad = 20;
  if ($edad >= 18) {
      echo "Eres mayor de edad. \n";
  }
  echo "<br>";
  //Estructura if y else:
    if ($edad >= 18) {
        echo "Eres mayor de edad.\n";
    } else {
        echo "Eres menor de edad. \n";
    }
    echo "<br>";
  // Estructura if, else if y else:
  $nota = 75;
  if ($nota >= 90) {
      echo "Tienes una A \n";
  } elseif ($nota >= 80) {
      echo "Tienes una B \n";
  } elseif ($nota >= 70) {
      echo "Tienes una C \n";
  } else {
      echo "Tienes una nota inferior a C \n";
  }
  echo "<br>";
  // switch
  $opcion = 2;
  switch ($opcion) {
      case 1:
          echo "Seleccionaste la opción 1";
          break;
      case 2:
          echo "Seleccionaste la opción 2";
          break;
      case 3:
          echo "Seleccionaste la opción 3";
          break;
      default:
          echo "Opción no válida";
          break;
  }
?>