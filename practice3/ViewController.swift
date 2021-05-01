//
//  ViewController.swift
//  practice3
//
//  Created by 竹辻篤志 on 2021/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!

    @IBOutlet private weak var switch1: UISwitch!
    @IBOutlet private weak var switch2: UISwitch!

    @IBOutlet private weak var label1: UILabel!
    @IBOutlet private weak var label2: UILabel!
    @IBOutlet private weak var sumLabel: UILabel!

    @IBAction func sumButton(_ sender: Any) {

        let number1 = Int(String(textField1.text ?? "")) ?? 0
        let number2 = Int(String(textField2.text ?? "")) ?? 0

        let signedNumber1: Int
        if switch1.isOn {
            signedNumber1 = -number1
        } else {
            signedNumber1 = number1
        }
        label1.text = String(signedNumber1)

        let signedNumber2: Int
        if switch2.isOn {
            signedNumber2 = -number2
        } else {
            signedNumber2 = number2
        }
        label2.text = String(signedNumber2)

        sumLabel.text = String(signedNumber1 + signedNumber2)
    }
}
