//
//  CustomViewController.swift
//  POO - Autos
//
//  Created by Juan Aguilar on 15/02/23.
//

import UIKit

class CustomViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var carImage: UIImageView!
    
    var brand:String?;
    var generalCar: Automovil?;
    var electricCar: AutoElectrico?;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize cars to nil
        generalCar = nil;
        electricCar = nil;
        
        switch(brand!){
        case "Mazda":
            electricCar = AutoElectrico();
            carImage.image = UIImage(named: "mazda");
            infoLabel.text = "Se ha creado un automovil electrico. ";
        case "General":
            generalCar = Automovil();
            carImage.image = UIImage(named: "march");
            infoLabel.text = "Se ha creado un automovil generico. ";
        default:
            print("Error");
        }
        // Do any additional setup after loading the view.
    }
    
    /*
        MARK: TIP
     
        Podemos agregar textos largos con saltos de linea de la siguiente manera, pero si agregamos \ esto indicara
        que nuestro texto seguira sin saltar la linea mientras aun tenga espacio.
     
        """
     
     
        """
        
    */
    
    @IBAction func showInfo(_ sender: Any) {
        if let car = generalCar {
            infoLabel.text = " Color: \(car.color) \n Precio: \(car.price) \n Numero de llantas: \(car.numberOfWheels) ";
        }
        
        if let car = electricCar {
            infoLabel.text = """
                Color: \(car.color) Precio: \(car.price)
                Numero de llantas: \(car.numberOfWheels)
                Bateria: \(car.batery)
            """;
        }
    }
    
    
    @IBAction func startOn(_ sender: Any) {
        if let car = generalCar {
            if(car.isOn){
                infoLabel.text = "El auto ya estaba encendido. ";
            } else {
                infoLabel.text = "El auto se ha encendido. ";
                car.isOn = true;
            }
        }
        
        if let car = electricCar {
            if(car.isOn){
                infoLabel.text = "El auto ya estaba encendido. ";
            } else {
                infoLabel.text = "El auto se ha encendido. ";
                car.isOn = true;
            }
        }
    }
    
    
    @IBAction func startOff(_ sender: Any) {
        if let car = generalCar {
            if(!car.isOn){
                infoLabel.text = "El auto ya estaba apagado. ";
            } else {
                infoLabel.text = "El auto se ha apagado. ";
                car.isOn = false;
            }
        }
        
        if let car = electricCar {
            if(!car.isOn){
                infoLabel.text = "El auto ya estaba apagado. ";
            } else {
                infoLabel.text = "El auto se ha apagado. ";
                car.isOn = false;
            }
        }
    }
    

    @IBAction func speedUp(_ sender: Any) {
        if let car = generalCar {
            if(car.isOn){ return infoLabel.text = car.speedUp() };
            infoLabel.text = "El auto necesita estar encendido para poder arrancar. ";
        }
        
        if let car = electricCar {
            if(car.isOn){
                infoLabel.text = car.speedUp()
                car.batery -= 10;
                return
            };
            infoLabel.text = "El auto necesita estar encendido para poder arrancar. ";
            
        }
    }
    
}
