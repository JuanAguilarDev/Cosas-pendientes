import Foundation

// Concatenar
var myString = "Bienvenidos" + " al curso de swift";
myString += " concatenar";


// Interpolacion, es una forma de crear una nueva cadena utilizando nuevas variables

let name = "Juan ";
let country = " Mexico";

let myPersonaleInfo = "Mi nombre es: " + name + " y vivo en: " + country;

let myPersonalInfoWithInterpolation = "Mi nombre es: \(name) y vivo en: \(country)";

// Comparacion de strings

let name1 = "Juan";
let name2 = "Manuel";
let name3 = "Juan";

name1 == name2;
name1 == name3;

// Comparaciones de contenido

let myContent = "Mi nombre es Juan";

myContent.contains(name1);

//  Verificar si una cadena es vacia
myContent.isEmpty;

// Recorrer un string
for valor in myContent {
    print(valor);
}
