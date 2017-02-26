//
//  ViewController.swift
//  Calculator Application
//
//  Created by Maxwell Frederickson on 2/26/17.
//  Copyright © 2017 MaxwellFrederickson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumText: UITextField!

    @IBOutlet weak var secondNumText: UITextField!
    
    @IBOutlet weak var resultText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Addition(_ sender: Any) {
        operateWithNumbers(operation: "add")
    }
    
    @IBAction func Subtraction(_ sender: Any) {
        operateWithNumbers(operation: "subtract")
    }
    
    @IBAction func Multiplication(_ sender: Any) {
        operateWithNumbers(operation: "multiply")
    }
    
    @IBAction func Division(_ sender: Any) {
        operateWithNumbers(operation: "divide")
    }
    
    func operateWithNumbers(operation: String){
        
        if Double(firstNumText.text!) != nil && Double(secondNumText.text!) != nil {
            let num1 = Double(firstNumText.text!)
            let num2 = Double(secondNumText.text!)
            
            var sum = Double()
            
            switch operation {
            case "add":
                sum = num1! + num2!
            case "subtract":
                sum = num1! - num2!
            case "multiply":
                sum = num1! * num2!
            case "divide":
                sum = num1! / num2!
            default:
                break
            }
        resultText.text = "\(sum)"
            
            
        } else {
            resultText.text = "Please enter numbers in both text fields"
        }
        
        firstNumText.text = ""
        secondNumText.text = ""
    
    }
    
    
    
}

