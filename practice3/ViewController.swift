//
//  ViewController.swift
//  practice3
//
//  Created by 竹辻篤志 on 2021/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var sumLabel: UILabel!
    
    var number1 = 0
    var number2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func sumButton(_ sender: Any) {
        
        number1 = Int(String(textField1.text ?? "")) ?? 0
        number2 = Int(String(textField2.text ?? "")) ?? 0

        if switch1.isOn == true {
            number1 = -number1
        }else{
            number1 = +number1
        }
        label1.text = String(number1)

       
        if switch2.isOn == true{
            number2 = -number2
        }else{
            number2 = +number2
        }
        label2.text = String(number2)
        
        sumLabel.text = String(number1 + number2)
    }
}

