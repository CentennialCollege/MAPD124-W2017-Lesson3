//
//  ViewController.swift
//  MAPD124-W2017-Lesson3
//
//  Created by Tom Tsiliopoulos on 2017-01-24.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // my custom show alert function
    func showMyAlert(alertTitle: String, alertMessage: String) {
        
        let alertController = UIAlertController(title: alertTitle,
                                                message: alertMessage,
                                                preferredStyle: .alert)
        
        
        let okButton = UIAlertAction(title: "OK",
                                        style: .default,
                                        handler: nil)
        
        alertController.addAction(okButton)
 
        
        present(alertController, animated:  true, completion: nil)
        
    }
    
    func showMyActionSheet() {
        let actionSheetController = UIAlertController(title: "An Action Sheet!",
                                                      message: "Here's a message",
                                                      preferredStyle: .actionSheet)
        
        let yesButton = UIAlertAction(title: "YES",
                                      style: .default,
                                      handler: {
                                        action in
                                        self.showMyAlert(alertTitle: "Positive",
                                                    alertMessage: "Yay! you chose well!")
                                    })
        
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

