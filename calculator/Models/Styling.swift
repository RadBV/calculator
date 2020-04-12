//
//  Styling.swift
//  calculator
//
//  Created by Radharani Ribas-Valongo on 4/12/20.
//  Copyright © 2020 Radharani Ribas-Valongo. All rights reserved.
//

import UIKit

struct Styling {
    static func styleNumberButton(button: UIButton, symbol: String) {
        button.backgroundColor = .systemGray3
        button.setTitle(symbol, for: .normal)
        button.titleLabel?.font = UIFont(name: "helvetica-light", size: 30)
        button.setTitleColor(.black, for: .normal)
    }
    
    static func styleOperationButtons(button: UIButton, symbol: String) {
        button.backgroundColor = .systemOrange
        button.setTitle(symbol, for: .normal)
        button.titleLabel?.font = UIFont(name: "helvetica-light", size: 30)
        button.setTitleColor(.white, for: .normal)
    }
}
