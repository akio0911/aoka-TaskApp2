//
//  ViewController.swift
//  TaskApp2
//
//  Created by 光気増井 on 2021/03/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var segmentController: UISegmentedControl!
    
    @IBOutlet private weak var answerLabel: UILabel!
    
    @IBOutlet private weak var textField: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    

    @IBAction func answerButton(_ sender: Any) {
        
        let number = Double(textField.text!) ?? 0
        let number2 = Double(textField2.text!) ?? 0
        
        let answerText: String

        switch segmentController.selectedSegmentIndex {
        case 0:
            answerText = String(format: "%.1f", number + number2)
        case 1:
            answerText = String(format: "%.1f", number - number2)
        case 2:
            answerText = String(format: "%.1f", number * number2)
        case 3 where number2 == 0:
            answerText = "割る数には0以外を入力して下さい。"
        case 3:
            answerText = String(format: "%.1f", number / number2)
        default:
            fatalError("Invalid selectedSegmentIndex")
        }

        answerLabel.text = answerText
    }
}
