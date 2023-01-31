import UIKit

// MARK: ARRAYS -------------------------------------------------------------
// Array es un conjunto de valores almacenados de manera ordenada

var numberArray = [1,2,3];
let numberArrayUnmutable = [3,2,1];

// MARK: Agregar elementos
numberArray.append(5); // Agrega valores al final
numberArray.insert(4, at: 3); // Agrega valores en la posicion deseada

// MARK: Eliminar elementos
numberArray.removeLast(); // Elimina el ultimo valor de un  arreglo
numberArray.remove(at: 3); // Elimina un elemento en una posicion especifica
numberArray.removeAll(); // Elimina todo el contenido del arreglo

// MARK: Declarar arreglos vacios
var emptyArray:[Int] = [];


print(numberArray);
print(numberArrayUnmutable[0]);
print(emptyArray);

// Set almacena valores de manera desordenada pero deben ser distintos entre si

// MARK: DICCIONARIOS  -----------------------------------------------------------
// Diccionarios, almacena datos con un formato [llave] : [valor]

var myClassicDictionary = Dictionary<Int, String>(); // Forma antigua de crear diccionarios
var myModernDictionary = [Int: String]();

// MARK: Agregar datos

myModernDictionary = [001: "Juan", 002: "Manuel"]; // Agregar datos de manera multiple

myModernDictionary[003] = "Aguilar"; // Agregar un dato de manera individual
myModernDictionary[004] = "Garrido";

// Acceder a un dato
myModernDictionary[002];
print(myModernDictionary);

// MARK: Modificar datos

myModernDictionary.updateValue("MAG", forKey: 001); // Manera clasica
myModernDictionary[002] = "1290"; // Forma moderna

print(myModernDictionary)

// MARK: Eliminar datos

myModernDictionary[002] = nil; // Forma moderna
myModernDictionary.removeValue(forKey: 002); // Manera clasica


// MARK: Tuplas  --------------------------------------------------------------
// Las tuplas no son como tal una coleccion pero se comportan de forma similar, con la diferencia de que se pueden combinar distintos tipos de datos


// Una persona puede tener un nombre, apellido, edad y estatura
var person = ("Juan", "Aguilar", 22, 1.65);

// Podemos acceder por medio del valor del indice
print(person.3)

// Maneras alternativa de declarar una tupla
var (name, middlename, age, high) = person;
print(age);

var secondPerson = (secondName: "Manuel", food: "Pizza");
secondPerson.secondName;
