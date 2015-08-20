//
//  PersonModel.swift
//  Mealting Pot
//
//  Created by Valentin Pertuisot on 14/08/15.
//  Copyright © 2015 power. All rights reserved.
//

import Foundation
import RealmSwift

class Person : Object
{
    dynamic var id = ""
    dynamic var name = ""
    dynamic var userDescription = ""
    dynamic var imageURL : String = ""
    dynamic var rating : Double = 0.0
    let reviews = List<Review>()
    let guestHistory = List<Meal>()
    let hostHistory = List<Meal>()
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    class func dummyPerson() -> Person
    {
        let person = Person()
        person.id = "123" + String(arc4random_uniform(1000))
        person.name = "Valentin Pertuisot"
        person.userDescription = "French student in Kent University"
        person.imageURL = "https://secure.gravatar.com/avatar/f95f7ce69d93d641e3ec12a76de2f63f"
        person.rating = 8

        return person
    }
}