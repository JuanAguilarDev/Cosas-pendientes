//
//  Country+CoreDataProperties.swift
//  Tablas y colecciones
//
//  Created by Juan Aguilar on 23/02/23.
//
//

import Foundation
import CoreData


extension Country {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Country> {
        return NSFetchRequest<Country>(entityName: "Country")
    }

    @NSManaged public var name: String?

}

extension Country : Identifiable {

}
