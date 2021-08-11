//
//  ViewController.swift
//  Kadai３
//
//  Created by 吉田晃崇 on 2021/08/06.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var number1TextField: UITextField!
    @IBOutlet private weak var number2TextField: UITextField!
    @IBOutlet private weak var number1Switch: UISwitch!
    @IBOutlet private weak var number2Switch: UISwitch!
    @IBOutlet private weak var resultLabel: UILabel!
    @IBOutlet private weak var number1TextLabel: UILabel!
    @IBOutlet private weak var number2TextLabel: UILabel!
    var result = Int()
    
    @IBAction func didPressButton(_ sender: Any) {
      
        if number1Switch.isOn{
            let num1 = Int(number1TextField.text ?? "") ?? 0
            let number1TextString = num1 * -1
            number1TextLabel.text = String(number1TextString)
            result += number1TextString
        }else{
            let num2 = Int(number1TextField.text ?? "") ?? 0
            number1TextLabel.text = String(num2)
            result += num2
        }
        if number2Switch.isOn{
            let num3 = Int(number2TextField.text ?? "") ?? 0
            let number2TextString = num3 * -1
            number2TextLabel.text = String(number2TextString)
            result += number2TextString
        }else{
            let num4 = Int(number2TextField.text ?? "") ?? 0
            number2TextLabel.text = String(num4)
            result += num4
        }
        resultLabel.text = String(result)
        result = 0
   
    }
    
}

