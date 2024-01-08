//
//  ViewController.swift
//  Calculator
//
//  Created by Milena Korusiewicz on 24/05/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    
    var element1: Double = 0.0
    var element2: Double = 0.0
    var unaryElement: Double = 0.0
    var newValue = true
    
    enum operation {
        case add
        case substract
        case multiply
        case divide
    }
    
    var pressedOperation: operation?
    
    @IBAction func onePress(_ sender: UIButton) {
        if newValue {
            textField.text = "1"
        } else {
            textField.text?.append(contentsOf: "1")
        }
        newValue = false
    }
    
    @IBAction func twoPress(_ sender: UIButton) {
        if newValue {
            textField.text = "2"
        } else {
            textField.text?.append(contentsOf: "2")
        }
        newValue = false
    }
    
    @IBAction func threePress(_ sender: UIButton) {
        if newValue {
            textField.text = "3"
        } else {
            textField.text?.append(contentsOf: "3")
        }
        newValue = false

    }
    
    @IBAction func fourPress(_ sender: UIButton) {
        if newValue {
            textField.text = "4"
        } else {
            textField.text?.append(contentsOf: "4")
        }
        newValue = false

    }
    
    @IBAction func fivePress(_ sender: UIButton) {
        if newValue {
            textField.text = "5"
        } else {
            textField.text?.append(contentsOf: "5")
        }
        newValue = false

    }
    
    @IBAction func sixPress(_ sender: UIButton) {
        if newValue {
            textField.text = "6"
        } else {
            textField.text?.append(contentsOf: "6")
        }
        newValue = false

    }
    
    @IBAction func sevenPress(_ sender: UIButton) {
        if newValue {
            textField.text = "7"
        } else {
            textField.text?.append(contentsOf: "7")
        }
        newValue = false

    }
    
    @IBAction func eightPress(_ sender: UIButton) {
        if newValue {
            textField.text = "8"
        } else {
            textField.text?.append(contentsOf: "8")
        }
        newValue = false

    }
    
    @IBAction func ninePress(_ sender: UIButton) {
        if newValue {
            textField.text = "9"
        } else {
            textField.text?.append(contentsOf: "9")
        }
        newValue = false

    }
    
    @IBAction func zeroPress(_ sender: UIButton) {
        if newValue {
            textField.text = "0"
        } else {
            textField.text?.append(contentsOf: "0")
        }
        newValue = false

    }
    
    @IBAction func pointPress(_ sender: UIButton) {
        if newValue {
            textField.text = "0."
        } else if (textField.text?.contains(".") == false) {
            textField.text?.append(contentsOf: ".")
        }
        newValue = false

    }
    
    @IBAction func addPress(_ sender: UIButton) {
        if pressedOperation != nil && newValue == false {
            element2 = NumberFormatter().number(from: textField.text ?? "0")?.doubleValue ?? 0.0
            
            switch pressedOperation {
            case .add:
                textField.text = "\(element1 + element2)"
            case .divide:
                textField.text = "\(element1 / element2)"
            case .multiply:
                textField.text = "\(element1 * element2)"
            case .substract:
                textField.text = "\(element1 - element2)"
            default:
                textField.text = textField.text
            }
        }
        
        element1 = NumberFormatter().number(from: textField.text ?? "0")?.doubleValue ?? 0.0
        newValue = true
        pressedOperation = operation.add
    }
    
    @IBAction func substractPress(_ sender: UIButton) {
        if pressedOperation != nil && newValue == false {
            element2 = NumberFormatter().number(from: textField.text ?? "0")?.doubleValue ?? 0.0
            
            switch pressedOperation {
            case .add:
                textField.text = "\(element1 + element2)"
            case .divide:
                textField.text = "\(element1 / element2)"
            case .multiply:
                textField.text = "\(element1 * element2)"
            case .substract:
                textField.text = "\(element1 - element2)"
            default:
                textField.text = textField.text
            }
        }
        
        element1 = NumberFormatter().number(from: textField.text ?? "0")?.doubleValue ?? 0.0
        newValue = true
        pressedOperation = operation.substract
    }
    
    @IBAction func dividePress(_ sender: UIButton) {
        if pressedOperation != nil && newValue == false {
            element2 = NumberFormatter().number(from: textField.text ?? "0")?.doubleValue ?? 0.0
            
            switch pressedOperation {
            case .add:
                textField.text = "\(element1 + element2)"
            case .divide:
                textField.text = "\(element1 / element2)"
            case .multiply:
                textField.text = "\(element1 * element2)"
            case .substract:
                textField.text = "\(element1 - element2)"
            default:
                textField.text = textField.text
            }
        }
        
        element1 = NumberFormatter().number(from: textField.text ?? "0")?.doubleValue ?? 0.0
        newValue = true
        pressedOperation = operation.divide
    }
    
    @IBAction func multiplyPress(_ sender: UIButton) {
        if pressedOperation != nil && newValue == false {
            element2 = NumberFormatter().number(from: textField.text ?? "0")?.doubleValue ?? 0.0
            
            switch pressedOperation {
            case .add:
                textField.text = "\(element1 + element2)"
            case .divide:
                textField.text = "\(element1 / element2)"
            case .multiply:
                textField.text = "\(element1 * element2)"
            case .substract:
                textField.text = "\(element1 - element2)"
            default:
                textField.text = textField.text
            }
        }
        
        element1 = NumberFormatter().number(from: textField.text ?? "0")?.doubleValue ?? 0.0
        newValue = true
        pressedOperation = operation.multiply
    }
    
    
    @IBAction func equalPress(_ sender: UIButton) {
        if !newValue {
            element2 = NumberFormatter().number(from: textField.text ?? "0")?.doubleValue ?? 0.0
        }
        switch pressedOperation {
        case .add:
            textField.text = "\(element1 + element2)"
        case .divide:
            textField.text = "\(element1 / element2)"
        case .multiply:
            textField.text = "\(element1 * element2)"
        case .substract:
            textField.text = "\(element1 - element2)"
        default:
            textField.text = textField.text
        }
        element1 = NumberFormatter().number(from: textField.text ?? "0")?.doubleValue ?? 0.0
        newValue = true
        //pressedOperation = nil
        
    }
    
    
    @IBAction func clearPress(_ sender: UIButton) {
        pressedOperation = nil
        newValue = true
        element1 = 0.0
        element2 = 0.0
        textField.text = "0"
        unaryElement = 0.0
    }
    
    
    @IBAction func sqrtPress(_ sender: UIButton) {
        unaryElement = NumberFormatter().number(from: textField.text ?? "0")?.doubleValue ?? 0.0
        textField.text = "\(unaryElement.squareRoot())"
    }
    
    @IBAction func absolutPress(_ sender: UIButton) {
        unaryElement = NumberFormatter().number(from: textField.text ?? "0")?.doubleValue ?? 0.0
        textField.text = "\(abs(unaryElement))"
    }
    
    @IBAction func percentPress(_ sender: UIButton) {
        unaryElement = NumberFormatter().number(from: textField.text ?? "0")?.doubleValue ?? 0.0
        textField.text = "\(unaryElement / 100)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textField.isEnabled = false
    }


}

