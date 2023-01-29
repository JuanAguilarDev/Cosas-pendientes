//
//  MazdaSerchMini.swift
//  POO
//
//  Created by Juan Aguilar on 03/07/22.
//

import Foundation

// Herencia
class MazdaSerchMini: MazdaSerch{
    
    init(){
        super.init(type: "HatchBack", doorsNumber: 2, color: "Red", price: "15000 USD")
    }
    
    // Esta es la forma en la que podemos hacer uso del polimorfismo
    override func switchOn() -> String {
        let message = "Ha encendido el mini Mazda 3 de Serch"
        return message
    }
}
