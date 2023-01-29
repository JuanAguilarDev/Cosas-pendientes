class Client{
  var idClient:Int?;
  var book:Book?;

  init(idClientS:Int){
    idClient = idClientS;
  }
}


class Book{
  var idBook:Int?;
  var name:String?;

  init(idBookS: Int, nameS:String){
    idBook = idBookS;
    name = nameS;
  }
}

var option:Int = 0;
var idAut:Int = 0;
var idUser:Int = 0;

// Clients
var clients:[Client] = [];

// Books
var books:[Book] = [];

while(option != 4){
  print("1. Registrar un usuario. ");
  print("2. Registrar un libro. ");
  print("3. Prestar libro. ");
  print("4. Imprimir reporte. ")
  print("5. Salir. ")
  let value = readLine()!;
  option = Int(value)!;

  switch(option){
    case 1:
      clients.append(Client(idClientS: idUser));
      idUser+=1;
    case 2:
      print("Ingrese un titulo para el libro con id \(idAut)");
      let name = readLine();
      books.append(Book(idBookS: idAut, nameS: name!))
      idAut+=1;
    case 3:
      print("Elija un usuario: ")
      for client in clients{
        print("id del usuario: \(client.idClient!)")
      }
      let idTemp = readLine()!;
      let idCurrentClient = Int(idTemp)!;
      print("Elija un libro por id: ")
      for book in books{
        print("\(book.name!) con id: \(book.idBook!)");
      }
      let idBookTemp = readLine()!;
      let idBook = Int(idBookTemp)!;

      if let book = clients[idCurrentClient].book{
        print("Este usuario ya tiene un libro. ")
      }else{
        clients[idCurrentClient].book = books[idBook];
      }
     
    case 4:
      print("Nombre de los LIBROS")
      for client in clients{
        print("wl libro \(client.book?.name!) lo tiene el usuario con el id \(client.idClient!)")
      }
     
    case 5:
      print("Ejecucion finalizada. ")
    default:
      print("Seleccione una opcion vaida. ")
  }
}
