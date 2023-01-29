//
//  MazdaSerch.swift
//  POO
//
//  Created by Juan Aguilar on 03/07/22.
//

// La fundación es el framework que incorpora esa jerarquía de clases.
import Foundation

class MazdaSerch{
    // Propiedades
    var type:String?
    var doorsNumber:Int?
    var color:String?
    var price:String?
    
    // Constructor
    
    init(type:String, doorsNumber:Int, color:String, price:String){
        self.type = type;
        self.doorsNumber = doorsNumber;
        self.color = color;
        self.price = price;
    }
    
    // Metodos
    func switchOn() -> String{
        let message = "El automovil encendio. "
        return message
    }
    
    func speedUp() -> String{
        let message = "El automovil acelero. "
        return message
    }
}
