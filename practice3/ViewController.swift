//
//  ViewController.swift
//  practice3
//
//  Created by 竹辻篤志 on 2021/04/24.
//

import UIKit

class ViewController: UIViewController {
    // SwiftLintでは警告が出ますが、個人的にスペースを分けた方がわかりやすいと思うのですが、いかがでしょうか？
    // 元々Apple側で登録されているDelegateに警告がたくさん出るのですが、そういう時はどう対応すれば良いでしょうか？

    @IBOutlet  private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!

    @IBOutlet private weak var switch1: UISwitch!
    @IBOutlet private weak var switch2: UISwitch!
    
    @IBOutlet private weak var label1: UILabel!
    @IBOutlet private weak var label2: UILabel!
    @IBOutlet private weak var sumLabel: UILabel!
    
    var number1 = 0
    var number2 = 0

    @IBAction func sumButton(_ sender: Any) {
        
        number1 = Int(String(textField1.text ?? "")) ?? 0
        number2 = Int(String(textField2.text ?? "")) ?? 0

        if switch1.isOn == true {
            number1 = -number1
        } else {
            number1 = +number1
        }
        label1.text = String(number1)

       
        if switch2.isOn == true {
            number2 = -number2
        } else {
            number2 = +number2
        }
        label2.text = String(number2)
        
        sumLabel.text = String(number1 + number2)
    }
}

