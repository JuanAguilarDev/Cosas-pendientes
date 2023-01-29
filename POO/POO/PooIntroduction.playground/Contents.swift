// Clases, propiedades y metodos
class SoulColor{
    var white:String = "White"
    var red:String = "Red"
    var black:String = "Black"
}

class Person{ // Creacion de una clase
    // Propiedades
    var soulColor = SoulColor() // Objeto de otra clase
    var name:String?
    var age:Int?
    
    // Constructor
    init(name:String, age:Int){
        self.name = name
        self.age = age
    }
    
    // Metodos
    func doPoo() -> String{
        let message = "\(self.name!) is doing poo. Don't disturb him."
        return message
    }
    
    func sayAge() -> String{
        let message = "Hello, I'm \(name!) and I'm \(age!) yo"
        return message
    }
    
    func sayAge(ageTwo:Int)-> String{
        let message = "Hi I'm not \(ageTwo) yo"
        return message
    }
    
    func saySoulColor() -> String{
        let message = "Hello I'm \(name!) and I have the \(soulColor.black) shirt, 'cause I have a \(soulColor.black) soul. (vaya referencia, no?)"
        return message
    }
}



// Instanciando un objeto
let person = Person(name: "Juan", age: 22)

// Haciendo uso de los metodos
person.doPoo()
print(person.saySoulColor())
// Cambiando sus atributos
person.name = "Manuel"
person.doPoo()

// Almacenando datos de un objeto
var personAge = person.age

// Polimorfismo
person.sayAge()
person.sayAge(ageTwo: 20)


