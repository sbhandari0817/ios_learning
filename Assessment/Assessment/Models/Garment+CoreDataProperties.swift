//
//  Garment+CoreDataProperties.swift
//  Assessment
//
//  Created by Santosh Bhandari on 11/18/21.
//
//

import Foundation
import CoreData


extension Garment {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Garment> {
        return NSFetchRequest<Garment>(entityName: "Garment")
    }

    @NSManaged public var name: String

}

extension Garment : Identifiable {

}
