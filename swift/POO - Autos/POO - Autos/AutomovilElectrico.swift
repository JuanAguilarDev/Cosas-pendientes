//
//  AutomovilElectrico.swift
//  POO - Autos
//
//  Created by Juan Aguilar on 16/02/23.
//

import Foundation


class AutoElectrico: Automovil {
    var batery = 50;
    
    
    func charge(amount: Int) -> Int {
        if(batery <= 100) { batery += amount }
        return batery;
    }
}
