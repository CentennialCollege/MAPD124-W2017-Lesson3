//
//  ViewController.swift
//  MAPD124-W2017-Lesson3
//
//  Created by Tom Tsiliopoulos on 2017-01-24.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Class Constants (Members)
    private var tom: Professor!
    

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        tom = Professor(fullName: "Tom Tsiliopoulos", age: 28, viewController: self)
        tom.SaysHello()
    }
    
    // my custom show alert function
    public func showMyAlert(alertTitle: String, alertMessage: String) {
        
        let alertController = UIAlertController(title: alertTitle,
                                                message: alertMessage,
                                                preferredStyle: .alert)
        
        
        let okButton = UIAlertAction(title: "OK",
                                        style: .default,
                                        handler: nil)
        
        alertController.addAction(okButton)
 
        
        present(alertController, animated:  true, completion: nil)
        
    }
    
    private func yesButtonHandler(alert:UIAlertAction) {
        self.showMyAlert(alertTitle: "Positive",
                         alertMessage: "Yay! you chose well!")
    }
    
    private func showMyActionSheet() {
        let actionSheetController = UIAlertController(title: "An Action Sheet!",
                                                      message: "Here's a message",
                                                      preferredStyle: .actionSheet)
        
        let yesButton = UIAlertAction(title: "YES",
                                      style: .default,
                                      handler: yesButtonHandler)
        
       
        
        let noButton = UIAlertAction(title: "NO",
                                     style: .cancel,
                                     handler: {
                                        action in
                                        self.showMyAlert(alertTitle: "Negative",
                                                    alertMessage: "Boo! you chose poorly!")
                                        })
        
        actionSheetController.addAction(yesButton)
        actionSheetController.addAction(noButton)
        
        present(actionSheetController, animated: true, completion: nil)
    }
    
    
    @IBAction func actionButtonTouched(_ sender: UIButton) {
        showMyActionSheet()
    }
    



}

