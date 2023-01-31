import UIKit;

// Nos sirve para agrupar datos que tienen caracteristicas en comun

enum PersonalData {
    case name, surname, address, phone
}


var currentData: PersonalData = .name;
var input = "Juan"

currentData = .phone;
input = "4621740866"

// Enumeraciones con valores asociados

enum ComplexPersonalData {
    case name(String)
    case surname(String, String)
    case address(String, Int)
    case phone(Int)
}

var complexCurrentData: ComplexPersonalData  = .name("Juan");
complexCurrentData = .address("Mexico 86", 5);


// Enumeraciones con el mismo tipo de valor

enum RawPersonalData: String {
    case name
    case surname
    case address
    case phone
}


RawPersonalData.name.rawValue;

