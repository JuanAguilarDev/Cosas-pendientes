//
//  Automovil.swift
//  POO - Autos
//
//  Created by Juan Aguilar on 12/02/23.
//

import Foundation


class Automovil {
    var color = "Red";
    var numberOfWheels = 4;
    var price = 0;
    var isOn = false;
    
    func startOn() -> Bool {
        isOn = true;
        return isOn;
    }
    
    func startOff() -> Bool {
        isOn = false;
        return isOn;
    }
    
    func speedUp() -> String {
        return "Estoy acelerando. ";
    }
}
