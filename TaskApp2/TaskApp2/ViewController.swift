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
        
        let index = segmentController.selectedSegmentIndex
        
        if index == 0 {
            let answer = number + number2
            answerLabel.text = String(format: "%.1f", answer)
            
        }else if index == 1 {
            let answer = number - number2
            answerLabel.text = String(format: "%.1f", answer)
            
        }else if index == 2 {
            
            let answer = number * number2
            answerLabel.text = String(format: "%.1f", answer)
            
        }else if index == 3 && number == 0 || number2 == 0 {
            
            answerLabel.text = "割る数には0以外を入力して下さい。"
        }else {
            let answer = number / number2
            answerLabel.text = String(format: "%.1f", answer)
            
         }
       }
    }
    



