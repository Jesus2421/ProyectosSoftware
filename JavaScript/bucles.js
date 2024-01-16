// comensamos con las estructuras de control

// de esta manera se hace un bucke for en JavaScript
for (let step = 0; step < 5; step++) {
    // Se ejecuta 5 veces, con valores del paso 0 al 4.
    console.log("Camina un paso hacia el este");
  }
 
// de esta manera de declara un bucle while
let i = 0;
while(i<10){
    console.log(`Soy la iteración ${i}`);
    i++;
}

// podemos usar break para deterner el ciclo independientemente que sea for o while
outer: while(true) {
    let num = Math.floor(Math.random() * 20);
    if (num == 10) {
        console.log('¡Has encontrado el tesoro!');
        break outer;
        } else {
            console.log(`No es el tesoro, sigue buscando... (${
                num})`);
                }
}
// y continue nos permite saltarnos una iteracón completa
for (let j = 0; j <= 9; j++) {
    if (j == 5) {
        console.log('Saltar a la siguiente iteración');
        continue;
        }
        console.log(`Valor de J: ${j}`);
}
//Declaración for...in
const persona={
    nombre:"Juan",
    apellido:"Pérez",
    edad:38};
//for .. in
for (key in persona) {
    console.log(`Propiedad: ${key}, Valor: ${persona[key]}`);
}
//Declaración for...of
const frutas=["Manzana","Naranja","Platano"];
for (let fruit of frutas) {
    console.log(`Soy ${fruit}`);
}