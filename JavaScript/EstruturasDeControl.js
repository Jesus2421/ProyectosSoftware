// Continuemos con las estruturas de control 
// condicional if
var edad=90
if (edad>=60) {
    console.log("Eres un pensionado")
}else {
    console.log ("No eres pensionado")
}
// El else if es una extensión del if, que permite tener varias opciones para
// evaluar una sola condición. En este caso, si la edad no es mayor
// o igual a 60, vamos a verificar si es menor que 1

//condicional (SWITCH)
var menu;
// vamos a inicialicar menu como un numero alzar del 1 al 5
menu = Math.floor(Math.random() * 5) + 1;
//esta iniciazacion es para probar cada caso del Switch
switch(menu){
    case 1:console.log("pollo con arroz");
    break;
    case 2:console.log("Paella");
    break;
    case 3:console.log("calamares");
    break;
    case 4:console.log("langosta");
    break;
    case 5:console.log("Pescado con papas");
    break;
    default : console.log("no hay platillos");
}
