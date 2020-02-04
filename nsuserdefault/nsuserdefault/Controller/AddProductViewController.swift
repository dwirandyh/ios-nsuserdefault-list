//
//  AddProductViewController.swift
//  nsuserdefault
//
//  Created by Dwi Randy Herdinanto on 04/02/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import UIKit

class AddProductViewController: UIViewController {
    
    public static let SEGUE_IDENTIFIER = "AddProductViewController"
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var priceText: UITextField!
    @IBOutlet weak var descriptionText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getProduct()
    }
    
    @IBAction func saveData(_ sender: Any) {
        let product = Product(name: nameText.text ?? "", price: Int(priceText.text ?? "0")!, description: descriptionText.text ?? "")
        UserPreferenceHelper.updateProduct(product: product)
        
        backToPreviousPage()
    }
    
    func getProduct(){
        if let product = UserPreferenceHelper.getProduct() {
            nameText.text = product.name
            priceText.text = "\(String(product.price))"
            descriptionText.text = product.description
        }
    }
    
    func backToPreviousPage(){
        navigationController?.popViewController(animated: true)
    }
    
    /**
     Hide keyboard when user touches around
     */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
