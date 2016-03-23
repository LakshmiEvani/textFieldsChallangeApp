//
//  zipCodeDelegate.swift
//  textFieldsChallangeApp
//
//  Created by Souji on 3/22/16.
//  Copyright © 2016 Souji. All rights reserved.
//

import Foundation


import UIKit

class zipCodeDelegate: NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
      
        var newText: NSString = textField.text!
        
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        return newText.length <= 5
    }
        
    
}

