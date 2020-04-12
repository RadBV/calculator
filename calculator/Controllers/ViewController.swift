//
//  ViewController.swift
//  calculator
//
//  Created by Radharani Ribas-Valongo on 4/12/20.
//  Copyright © 2020 Radharani Ribas-Valongo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpConstraints()
        setUpButtonStyles()
        answerLabel.textAlignment = .right
        // Do any additional setup after loading the view.
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
        Styling.styleOperationButtons(button: multiplyButton, symbol: "X")
        Styling.styleOperationButtons(button: minusButton, symbol: "-")
        Styling.styleOperationButtons(button: plusButton, symbol: "+")
        Styling.styleOperationButtons(button: equalsButton, symbol: "=")
    
    }
    
    
    
    


}

