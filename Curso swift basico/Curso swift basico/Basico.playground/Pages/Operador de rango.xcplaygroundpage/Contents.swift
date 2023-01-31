import UIKit;


var example = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

// Operador de rango doble lado / ( two-side range operator )

var arraySubSet = example[1...3] // Numeros 1, 2, 3

// Operador de rango unico lado / ( one-sided range operator )

var arraySubSetTwo = example[...3]; // 0, 1, 2, 3
var arraySubSetThree = example[5...];


var closedRange  = [1...3];
Array(closedRange[0]);


var closedRangeTwo  = 1...5;
Array(closedRangeTwo);
