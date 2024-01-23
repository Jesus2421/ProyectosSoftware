<?php
// declaracion de bucles en PHP
echo "Bucle for \n";
for ($i = 1; $i <= 5; $i++) {
    echo $i . "\n";
}
echo "<br>";
// Bucle while que imprime los números del 1 al 5
echo "Bucle while \n";
$i = 1;
while ($i <= 5) {
    echo $i . "\n";
    $i++;
}
echo "<br>";
echo "Bucle foreach de PHP \n";
// Bucle foreach que imprime los elementos de un array
$colores = array("rojo", "verde", "azul");
foreach ($colores as $color) {
    echo $color . "\n";
}
?>