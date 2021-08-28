//
//  Simpsons Class.swift
//  13-Simpson Book
//
//  Created by Selcuk Baki on 19/8/21.
//

import Foundation
import UIKit

class Simpsons {
    var name : String
    var job : String
    var age : Int
    var image : UIImage
    
    init(nameInit : String, jobInit : String, ageInit : Int, imageInit : UIImage){
        name = nameInit
        job = jobInit
        age = ageInit
        image = imageInit
        
    }
    
}


class Person {
    var firstName: String
    var lastName: String
    var email: String?
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    init(firstNameInit: String, lastNameInit: String, emailInit: String) {
        firstName = firstNameInit
        lastName = lastNameInit
        email = emailInit
    }
}

let selcuk = Person(firstName: "Selcuk", lastName: "Baki")
