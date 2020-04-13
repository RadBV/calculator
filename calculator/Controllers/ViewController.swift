//
//  ViewController.swift
//  calculator
//
//  Created by Radharani Ribas-Valongo on 4/12/20.
//  Copyright © 2020 Radharani Ribas-Valongo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: IBOUTLETs
    @IBOutlet weak var terminalView: UIView!
    @IBOutlet weak var answerLabel: UILabel!
    
    
    @IBOutlet weak var acButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var percentButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var decimalButton: UIButton!
    @IBOutlet weak var equalsButton: UIButton!
    
    
    //MARK: Properties
    var operation: Operations = .none
    var currentNumber = 0
    var prevNumber = 0
    
    //MARK: View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpConstraints()
        setUpButtonStyles()
        setUpSenders()
        setUpFunctions()
        answerLabel.textAlignment = .right
        
    }
    
    //MARK: Functions
    
    func setUpFunctions() {
        zeroButton.addTarget(self, action: #selector(numberPadPressed(_:)), for: .touchUpInside)
        oneButton.addTarget(self, action: #selector(numberPadPressed(_:)), for: .touchUpInside)
        twoButton.addTarget(self, action: #selector(numberPadPressed(_:)), for: .touchUpInside)
        threeButton.addTarget(self, action: #selector(numberPadPressed(_:)), for: .touchUpInside)
        fourButton.addTarget(self, action: #selector(numberPadPressed(_:)), for: .touchUpInside)
        fiveButton.addTarget(self, action: #selector(numberPadPressed(_:)), for: .touchUpInside)
        sixButton.addTarget(self, action: #selector(numberPadPressed(_:)), for: .touchUpInside)
        sevenButton.addTarget(self, action: #selector(numberPadPressed(_:)), for: .touchUpInside)
        eightButton.addTarget(self, action: #selector(numberPadPressed(_:)), for: .touchUpInside)
        nineButton.addTarget(self, action: #selector(numberPadPressed(_:)), for: .touchUpInside)
        
        plusButton.addTarget(self, action: #selector(operationsPressed(_:)), for: .touchUpInside)
        minusButton.addTarget(self, action: #selector(operationsPressed(_:)), for: .touchUpInside)
        divideButton.addTarget(self, action: #selector(operationsPressed(_:)), for: .touchUpInside)
        multiplyButton.addTarget(self, action: #selector(operationsPressed(_:)), for: .touchUpInside)
        percentButton.addTarget(self, action: #selector(operationsPressed(_:)), for: .touchUpInside)
        
        equalsButton.addTarget(self, action: #selector(equalsButtonPressed), for: .touchUpInside)
        acButton.addTarget(self, action: #selector(acPressed), for: .touchUpInside)
    }
    
    func setUpSenders() {
        zeroButton.tag = 0
        oneButton.tag = 1
        twoButton.tag = 2
        threeButton.tag = 3
        fourButton.tag = 4
        fiveButton.tag = 5
        sixButton.tag = 6
        sevenButton.tag = 7
        eightButton.tag = 8
        nineButton.tag = 9
    }
    
    func setUpButtonStyles() {
        Styling.styleNumberButton(button: sevenButton, symbol: "7")
        Styling.styleNumberButton(button: eightButton, symbol: "8")
        Styling.styleNumberButton(button: nineButton, symbol: "9")
        Styling.styleNumberButton(button: fourButton, symbol: "4")
        Styling.styleNumberButton(button: fiveButton, symbol: "5")
        Styling.styleNumberButton(button: sixButton, symbol: "6")
        Styling.styleNumberButton(button: oneButton, symbol: "1")
        Styling.styleNumberButton(button: twoButton, symbol: "2")
        Styling.styleNumberButton(button: threeButton, symbol: "3")
        Styling.styleNumberButton(button: zeroButton, symbol: "0")
        Styling.styleNumberButton(button: decimalButton, symbol: ".")
        
        
        Styling.styleNumberButton(button: acButton, symbol: "ac")
        Styling.styleNumberButton(button: backButton, symbol: "<-")
        Styling.styleNumberButton(button: percentButton, symbol: "%")
        acButton.backgroundColor = .lightGray
        backButton.backgroundColor = .lightGray
        percentButton.backgroundColor = .lightGray
        
        
        Styling.styleOperationButtons(button: divideButton, symbol: "÷")
        Styling.styleOperationButtons(button: multiplyButton, symbol: "x")
        Styling.styleOperationButtons(button: minusButton, symbol: "-")
        Styling.styleOperationButtons(button: plusButton, symbol: "+")
        Styling.styleOperationButtons(button: equalsButton, symbol: "=")
    
    }
    
    func calculate() {
        let arr = answerLabel.text!.components(separatedBy: " ")
        var newArr: [Any] = []
        var answer = 0
        
        for i in arr {
            guard let num = Int(i) else {
                newArr.append(i)
                continue
            }
            newArr.append(num)
        }
        print(newArr)
        
        for i in newArr {
            
            if let stringI = i as? String  {
                if stringI == "+" {
                    operation = .add
                } else if stringI == "-" {
                    operation = .subtract
                } else if stringI == "x" {
                    operation = .multiply
                } else if stringI == "÷" {
                    operation = .divide
                } else if stringI == "%" {
                    operation = .percent
                }
            }
            
            if let intI = i as? Int {
                if operation == .none {
                    answer = intI
                } else if operation == .add {
                    answer = answer + intI
                } else if operation == .subtract {
                    answer = answer - intI
                } else if operation == .divide {
                    answer = answer / intI
                } else if operation == .multiply {
                    answer = answer * intI
                } else if operation == .percent {
                    answer = answer % intI
                }
            }
            
            
        }
        
        answerLabel.text = String(answer)
        operation = .none
        
    }
    
    //MARK: OBJC Functions
    
    @objc func numberPadPressed(_ sender: UIButton) {
            answerLabel.text = answerLabel.text! + String(sender.tag)
        
    }
    
    @objc func operationsPressed(_ sender: UIButton) {
        if sender.title(for: .normal) == "+" {
            answerLabel.text = "\(answerLabel.text!) + "
        } else if sender.title(for: .normal) == "-" {
            answerLabel.text = "\(answerLabel.text!) - "
        } else if sender.title(for: .normal) == "÷" {
            answerLabel.text = "\(answerLabel.text!) ÷ "
        } else if sender.title(for: .normal) == "x" {
            answerLabel.text = "\(answerLabel.text!) x "
        } else if sender.title(for: .normal) == "%" {
            answerLabel.text = "\(answerLabel.text!) % "
        }
    }
    
    @objc func equalsButtonPressed() {
        calculate()
    }
    
    @objc func acPressed() {
        answerLabel.text = ""
    }
    
    
    
    
    
    
    


}

