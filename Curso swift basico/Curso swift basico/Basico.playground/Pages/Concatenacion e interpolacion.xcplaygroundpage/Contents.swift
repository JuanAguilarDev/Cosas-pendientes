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

name1 == name2;
