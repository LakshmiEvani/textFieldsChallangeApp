//
//  dollarValueDelegate.swift
//  textFieldsChallangeApp
//
//  Created by Souji on 3/23/16.
//  Copyright © 2016 Souji. All rights reserved.
//

import Foundation

import UIKit

class dollarValueDelegate: NSObject, UITextFieldDelegate {
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
            let oldText = textField.text as! NSString
            var newText = oldText.stringByReplacingCharactersInRange(range, withString: string) as NSString!
            var newTextString = String(newText)
            
            let digits = NSCharacterSet.decimalDigitCharacterSet()
            var digitText = ""
            for c in newTextString.unicodeScalars {
                if digits.longCharacterIsMember(c.value) {
                    digitText.append(c)
                }
            }
            
            let formatter = NSNumberFormatter()
            formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
            formatter.locale = NSLocale(localeIdentifier: "en_US")
            var numberFromField = (NSString(string: digitText).doubleValue)/100
            newText = formatter.stringFromNumber(numberFromField)
            
            textField.text = newText as String
            
            return false
        }

}