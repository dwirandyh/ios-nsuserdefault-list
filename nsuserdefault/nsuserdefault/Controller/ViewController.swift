//
//  ViewController.swift
//  nsuserdefault
//
//  Created by Dwi Randy Herdinanto on 03/02/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func tapLabel(_ sender: Any) {
        
    }
    
    @IBAction func saveProduct(_ sender: Any) {
        let defaults = NSUserDefaults
    }
}

