//
//  ViewController.swift
//  MAPD124-W2017-Lesson3
//
//  Created by Tom Tsiliopoulos on 2017-01-24.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //showMyAlert()
    }
    
    // my custom show alert function
    func showMyAlert() {
        
        let alertController = UIAlertController(title: "My Alert!",
                                                message: "Hello World!",
                                                preferredStyle: .alert)
        
        /*
        let cancelButton = UIAlertAction(title: "Cancel",
                                        style: .cancel ,
                                        handler: nil)
        
        alertController.addAction(cancelButton)
 */
        
        present(alertController, animated:  true, completion: nil)
        
    }
    
    
    



}

