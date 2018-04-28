//
//  Items+CoreDataProperties.swift
//  AgendaApp
//
//  Created by admin on 28/04/18.
//  Copyright © 2018 admin. All rights reserved.
//
//

import Foundation
import CoreData


extension Items {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Items> {
        return NSFetchRequest<Items>(entityName: "Items")
    }

    @NSManaged public var agendaTitle: String?
    @NSManaged public var agendaTime: NSDate?

}
