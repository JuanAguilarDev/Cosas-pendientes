import UIKit;

// MARK: Condicionales if - else

var age = 18;
var moneyAmount = 1000;
var isFemale = false;

if (age >= 18 && moneyAmount > 250) {
    print("Eres mayor de edad, ademas de que tienes el dinero suficiente. ");
    if(isFemale){
        print("Puedes entrar al bar debido a que eres mujer. ");
    } else {
        print("Pero no puedes entrar al bar debido a que no eres mujer. ");
    }
} else {
    print("No puedes entrar al bar porque eres menor. ");
}

// MARK: Switch

let country = "MX";

switch(country){
    case "ES":
        print("The lenguage is Spanish. ")
    case "MX":
        print("The lenguage is Spanish. ")
    case "PE":
        print("The lenguage is Spanish. ")
    case "ARG":
        print("The lenguage is Spanish. ")
    case "EEUU":
        print("The lenguage is English. ")
    default:
        print("The lenguage is unkwon. ")
}


switch(age){
    case 0,1,2:
        print("Eres un bebe. ")
    case 3...10:
        print("Eres un adolecente. ")
    case 11..<16:
        print("Eres un adolecente. ")
    case 16..<70:
        print("Eres un adulto. ");
    case 70..<100:
        print("Eres un senior. ");
    default:
        print("Inmortal. ");
}


// Switch con enum

enum PersonalData {
    case name
    case surname
    case address
    case phone
}

let userData: PersonalData = .name;

switch userData {
    case .name:
        print("Estamos dentro de name. ");
    case .surname:
        print("Estamos dentro de surname. ");
    case .address:
        print("Estamos dentro de address. ");
    case .phone:
        print("Estamos dentro de phone");
}
