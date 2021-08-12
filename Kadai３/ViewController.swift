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

    @IBAction func didPressButton(_ sender: Any) {

        let num1 = Int(number1TextField.text ?? "") ?? 0
        let num2 = Int(number2TextField.text ?? "") ?? 0

        let signedNum1: Int
        if number1Switch.isOn {
            signedNum1 = -num1
        } else {
            signedNum1 = num1
        }

        let signedNum2: Int
        if number2Switch.isOn {
            signedNum2 = -num2
        } else {
            signedNum2 = num2
        }

        let result = signedNum1 + signedNum2

        number1TextLabel.text = String(signedNum1)
        number2TextLabel.text = String(signedNum2)

        resultLabel.text = String(result)

    }
    
}

