//
//  ViewController.swift
//  textFieldsChallangeApp
//
//  Created by Souji on 3/22/16.
//  Copyright © 2016 Souji. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var zipCode: UITextField!
    @IBOutlet weak var cashText: UITextField!
    @IBOutlet weak var locakableText: UITextField!
    
    var ZipCodeDelegate = zipCodeDelegate()
    var dollarCash = dollarValueDelegate()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
         self.zipCode.delegate = ZipCodeDelegate
         self.cashText.delegate = dollarCash
            locakableText.delegate = self
    }
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var newText: NSString = textField.text!
        
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        return true
    }
    
    
    
    @IBAction func lockSwitch(sender: UISwitch) {
        
        if sender.on {
            
            locakableText.enabled = true
            
        } else {
            
            locakableText.enabled = false
        }
        
    }
    
    
}
