//
//  VC+Constraints.swift
//  calculator
//
//  Created by Radharani Ribas-Valongo on 4/12/20.
//  Copyright © 2020 Radharani Ribas-Valongo. All rights reserved.
//

import UIKit

extension ViewController {
    
    func setUpConstraints() {
        constrainZeroButton()
        constrainDecimalButton()
        constrainEqualsButton()
        constrainOneButton()
        constrainTwoButton()
        constrainThreeButton()
        constrainAddButton()
        constrainFourButton()
        constrainFiveButton()
        constrainSixButton()
        constrainSubtractButton()
        constrainSevenButton()
        constrainEightButton()
        constrainNineButton()
        constrainMultiplyButton()
        constrainAcButton()
        constrainBackButton()
        constrainPercentButton()
        constrainDivideButton()
        constrainTerminalView()
        constrainAnswerLabel()
        
    }
    
    func constrainZeroButton() {
        zeroButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            zeroButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            zeroButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            zeroButton.widthAnchor.constraint(equalToConstant: self.view.frame.width/2),
            zeroButton.heightAnchor.constraint(equalToConstant: self.view.frame.width/4)
            
        ])
    }
    
    func constrainDecimalButton() {
        decimalButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            decimalButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            decimalButton.leadingAnchor.constraint(equalTo: zeroButton.trailingAnchor),
            decimalButton.widthAnchor.constraint(equalToConstant: self.view.frame.width/4),
            decimalButton.heightAnchor.constraint(equalToConstant: self.view.frame.width/4)
            
        ])
    }
    
    func constrainEqualsButton() {
        equalsButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            equalsButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            equalsButton.leadingAnchor.constraint(equalTo: decimalButton.trailingAnchor),
            equalsButton.widthAnchor.constraint(equalToConstant: self.view.frame.width/4),
            equalsButton.heightAnchor.constraint(equalToConstant: self.view.frame.width/4)
            
        ])
    }
    
    
    
    func constrainOneButton() {
        oneButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            oneButton.bottomAnchor.constraint(equalTo: zeroButton.topAnchor),
            oneButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            oneButton.widthAnchor.constraint(equalToConstant: self.view.frame.width/4),
            oneButton.heightAnchor.constraint(equalToConstant: self.view.frame.width/4)
            
        ])
    }
    
    func constrainTwoButton() {
        twoButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            twoButton.bottomAnchor.constraint(equalTo: zeroButton.topAnchor),
            twoButton.leadingAnchor.constraint(equalTo: oneButton.trailingAnchor),
            twoButton.widthAnchor.constraint(equalToConstant: self.view.frame.width/4),
            twoButton.heightAnchor.constraint(equalToConstant: self.view.frame.width/4)
            
        ])
    }
    
    func constrainThreeButton() {
        threeButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            threeButton.bottomAnchor.constraint(equalTo: decimalButton.topAnchor),
            threeButton.leadingAnchor.constraint(equalTo: twoButton.trailingAnchor),
            threeButton.widthAnchor.constraint(equalToConstant: self.view.frame.width/4),
            threeButton.heightAnchor.constraint(equalToConstant: self.view.frame.width/4)
            
        ])
    }
    
    func constrainAddButton() {
        plusButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            plusButton.bottomAnchor.constraint(equalTo: equalsButton.topAnchor),
            plusButton.leadingAnchor.constraint(equalTo: threeButton.trailingAnchor),
            plusButton.widthAnchor.constraint(equalToConstant: self.view.frame.width/4),
            plusButton.heightAnchor.constraint(equalToConstant: self.view.frame.width/4)
            
        ])
    }
    
    
    func constrainFourButton() {
        fourButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            fourButton.bottomAnchor.constraint(equalTo: oneButton.topAnchor),
            fourButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            fourButton.widthAnchor.constraint(equalToConstant: self.view.frame.width/4),
            fourButton.heightAnchor.constraint(equalToConstant: self.view.frame.width/4)
            
        ])
    }
    
    func constrainFiveButton() {
        fiveButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            fiveButton.bottomAnchor.constraint(equalTo: twoButton.topAnchor),
            fiveButton.leadingAnchor.constraint(equalTo: fourButton.trailingAnchor),
            fiveButton.widthAnchor.constraint(equalToConstant: self.view.frame.width/4),
            fiveButton.heightAnchor.constraint(equalToConstant: self.view.frame.width/4)
            
        ])
    }
    
    func constrainSixButton() {
        sixButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            sixButton.bottomAnchor.constraint(equalTo: threeButton.topAnchor),
            sixButton.leadingAnchor.constraint(equalTo: fiveButton.trailingAnchor),
            sixButton.widthAnchor.constraint(equalToConstant: self.view.frame.width/4),
            sixButton.heightAnchor.constraint(equalToConstant: self.view.frame.width/4)
            
        ])
    }
    
    func constrainSubtractButton() {
        minusButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            minusButton.bottomAnchor.constraint(equalTo: plusButton.topAnchor),
            minusButton.leadingAnchor.constraint(equalTo: sixButton.trailingAnchor),
            minusButton.widthAnchor.constraint(equalToConstant: self.view.frame.width/4),
            minusButton.heightAnchor.constraint(equalToConstant: self.view.frame.width/4)
            
        ])
    }
    
    func constrainSevenButton() {
        sevenButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            sevenButton.bottomAnchor.constraint(equalTo: fourButton.topAnchor),
            sevenButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            sevenButton.widthAnchor.constraint(equalToConstant: self.view.frame.width/4),
            sevenButton.heightAnchor.constraint(equalToConstant: self.view.frame.width/4)
            
        ])
    }
    
    func constrainEightButton() {
        eightButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            eightButton.bottomAnchor.constraint(equalTo: fiveButton.topAnchor),
            eightButton.leadingAnchor.constraint(equalTo: sevenButton.trailingAnchor),
            eightButton.widthAnchor.constraint(equalToConstant: self.view.frame.width/4),
            eightButton.heightAnchor.constraint(equalToConstant: self.view.frame.width/4)
            
        ])
    }
    
    
    func constrainNineButton() {
        nineButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nineButton.bottomAnchor.constraint(equalTo: sixButton.topAnchor),
            nineButton.leadingAnchor.constraint(equalTo: eightButton.trailingAnchor),
            nineButton.widthAnchor.constraint(equalToConstant: self.view.frame.width/4),
            nineButton.heightAnchor.constraint(equalToConstant: self.view.frame.width/4)
            
        ])
    }
    
    func constrainMultiplyButton() {
        multiplyButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            multiplyButton.bottomAnchor.constraint(equalTo: minusButton.topAnchor),
            multiplyButton.leadingAnchor.constraint(equalTo: nineButton.trailingAnchor),
            multiplyButton.widthAnchor.constraint(equalToConstant: self.view.frame.width/4),
            multiplyButton.heightAnchor.constraint(equalToConstant: self.view.frame.width/4)
        ])
    }
    
    
    func constrainAcButton() {
        acButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            acButton.bottomAnchor.constraint(equalTo: sevenButton.topAnchor),
            acButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            acButton.widthAnchor.constraint(equalToConstant: self.view.frame.width/4),
            acButton.heightAnchor.constraint(equalToConstant: self.view.frame.width/4)
        ])
    }
    
    func constrainBackButton() {
        backButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backButton.bottomAnchor.constraint(equalTo: eightButton.topAnchor),
            backButton.leadingAnchor.constraint(equalTo: acButton.trailingAnchor),
            backButton.widthAnchor.constraint(equalToConstant: self.view.frame.width/4),
            backButton.heightAnchor.constraint(equalToConstant: self.view.frame.width/4)
        ])
    }
    
    func constrainPercentButton() {
        percentButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            percentButton.bottomAnchor.constraint(equalTo: nineButton.topAnchor),
            percentButton.leadingAnchor.constraint(equalTo: backButton.trailingAnchor),
            percentButton.widthAnchor.constraint(equalToConstant: self.view.frame.width/4),
            percentButton.heightAnchor.constraint(equalToConstant: self.view.frame.width/4)
        ])
    }
    
    func constrainDivideButton() {
        divideButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            divideButton.bottomAnchor.constraint(equalTo: multiplyButton.topAnchor),
            divideButton.leadingAnchor.constraint(equalTo: percentButton.trailingAnchor),
            divideButton.widthAnchor.constraint(equalToConstant: self.view.frame.width/4),
            divideButton.heightAnchor.constraint(equalToConstant: self.view.frame.width/4)
        ])
    }
    
    func constrainTerminalView() {
        terminalView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            terminalView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            terminalView.bottomAnchor.constraint(equalTo: acButton.topAnchor),
            terminalView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            terminalView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        ])
        
    }
    
    func constrainAnswerLabel() {
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            answerLabel.trailingAnchor.constraint(equalTo: terminalView.trailingAnchor, constant: -10),
            answerLabel.leadingAnchor.constraint(equalTo: terminalView.leadingAnchor, constant: 10),
            answerLabel.heightAnchor.constraint(equalToConstant: 50),
            answerLabel.centerYAnchor.constraint(equalTo: terminalView.centerYAnchor)
        
        ])
        
    }
    
    
    
    
}
