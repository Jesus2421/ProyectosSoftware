// en este ejercicio veremos los tipos de dato de JavaScript
// y como se utilizan.
let edad = 25;
let peso = 2.5;
// tambien podemos usar var para declarar una variable
var x=5;
const altura = 1.70;
let nombre = "Juan";
let apellido = "Perez";
let esEstudiante = true;
let variableNula = null;
let variableIndefinida;
let simbolo = Symbol('descripcion');
console.log(edad);
console.log("Nombre: "+nombre+" "+apellido);
if (esEstudiante){
    console.log("Estoy estudiando");
        }else{
            console.log("No estoy estudiando");
        }
// Una variable nula se utiliza así:
console.log("Hola soy una variable: "+ variableNula);
console.log("La variable X vale: "+x);
// tambien podemos tener arreglos unidimencionales o multidimencionales
let numeros = [1, 2, 3, 4, 5];
// este arreglo numeros se utiliza asi
console.log("El primer numero del arreglo es: "+numeros[0]);
// y también se puede hacer de esta manera
console.log("El ultimo número del arreglo es: "+numeros[numeros.length-1]);
//un ejemplo de arreglo multidimencional es el siguente:
let personas=[{
        nombre:"Juan",
        apellido:"Perez",
        edad:25},
        {
            nombre:"María",
            apellido:"García",
            edad:30}
        ];
//este arreglo se utiliza asi:
console.log("La persona llamada Juan tiene "+personas[0].edad+" años.");