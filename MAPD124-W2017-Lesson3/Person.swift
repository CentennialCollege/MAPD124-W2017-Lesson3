//
//  Person.swift
//  MAPD124-W2017-Lesson3
//
//  Created by Tom Tsiliopoulos on 2017-01-24.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//

import UIKit

protocol PSaysHello {
    /* GOOD WAY
    func SaysHello(viewController: ViewController)
  */
    func SaysHello()

}


class Person {
    
    // INSTANCE VARIABLES (FIELDS)
    var fullName: String!
    var age: Int!
    let viewController: ViewController!
    
    // Initializer
    init(fullName: String, age: Int, viewController: ViewController) {
        self.fullName = fullName
        self.age = age
        self.viewController = viewController
    }
    
}

class Professor: Person, PSaysHello {
    
    // Initializer - like a constructor
    override init(fullName: String, age: Int, viewController: ViewController) {
        super.init(fullName: fullName, age: age, viewController: viewController)
        
    }
    

    /* GOOD WAY
    func SaysHello(viewController: ViewController) {
        // print("\(self.fullName!) says Hello!")
        
        // display alert that shows the 'fullName says Hello!'
        
        viewController.showMyAlert(alertTitle: "Greeting",
                                   alertMessage: "\(self.fullName!) says Hello!")
    }
    */
    
    func SaysHello() {
        // print("\(self.fullName!) says Hello!")
        
        // display alert that shows the 'fullName says Hello!'
        
        self.viewController.showMyAlert(alertTitle: "Greeting",
                                   alertMessage: "\(self.fullName!) says Hello!")
    }
}


