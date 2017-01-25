//
//  Person.swift
//  MAPD124-W2017-Lesson3
//
//  Created by Tom Tsiliopoulos on 2017-01-24.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//

import UIKit

protocol PSaysHello {
    func SaysHello(viewController: ViewController)
}


class Person {
    
    // INSTANCE VARIABLES (FIELDS)
    var fullName: String!
    var age: Int!
    
    // Initializer
    init(fullName: String, age: Int) {
        self.fullName = fullName
        self.age = age
    }
    
}

class Professor: Person, PSaysHello {
    
    // Initializer - like a constructor
    override init(fullName: String, age: Int) {
        super.init(fullName: fullName, age: age)
    }
    

    
    func SaysHello(viewController: ViewController) {
        // print("\(self.fullName!) says Hello!")
        
        // display alert that shows the 'fullName says Hello!'
        
        viewController.showMyAlert(alertTitle: "Greeting",
                                   alertMessage: "\(self.fullName!) says Hello!")
    }
}


