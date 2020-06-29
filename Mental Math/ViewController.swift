//
//  ViewController.swift
//  Mental Math
//
//  Created by Wesley Dashner on 11/8/18.
//  Copyright © 2018 Wesley Dashner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstNumber: Int = -1
    var secondNumber: Int = -1
    var thirdNumber: Int = -1
    
    var customBlue = UIColor(displayP3Red: 0.0, green: 122.0/255.0, blue: 1.0, alpha: 1.0)

    override func viewDidLoad() {
        super.viewDidLoad()
        randomizeNumbers()
        firstNumberLabel.textColor = customBlue
        secondNumberLabel.textColor = UIColor.white
        thirdNumberLabel.textColor = UIColor.white
    }

    @IBOutlet weak var firstNumberLabel: UILabel!
    @IBOutlet weak var secondNumberLabel: UILabel!
    @IBOutlet weak var thirdNumberLabel: UILabel!
    
    @IBAction func nextButton(_ sender: UIButton) {
        if firstNumberLabel.textColor == customBlue {
            secondNumberLabel.textColor = customBlue
            firstNumberLabel.textColor = UIColor.white
        }
        else if secondNumberLabel.textColor == customBlue {
            secondNumberLabel.textColor = UIColor.white
        }
        else if firstNumberLabel.textColor == UIColor.white && secondNumberLabel.textColor == UIColor.white && thirdNumberLabel.textColor == UIColor.white {
            thirdNumberLabel.textColor = customBlue
        }
        else if thirdNumberLabel.textColor == customBlue {
            randomizeNumbers()
            firstNumberLabel.textColor = customBlue
            thirdNumberLabel.textColor = UIColor.white
        }
    }
    
    func randomizeNumbers() {
        firstNumber = Int.random(in: 100 ... 999)
        secondNumber = Int.random(in: 100 ... 999)
        thirdNumber = firstNumber + secondNumber
        firstNumberLabel.text = String(firstNumber)
        secondNumberLabel.text = String(secondNumber)
        thirdNumberLabel.text = String(thirdNumber)
    }
}
