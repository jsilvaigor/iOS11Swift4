//
//  ViewController.swift
//  HowManyYears
//
//  Created by Igor Silva on 21/11/17.
//  Copyright © 2017 Igor Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func guessButton(_ sender: UIButton) {
        
        if let age = ageField.text {
            
            if let ageNumber = Int(age) {
                let random = Int(arc4random_uniform(6))
                print(random)
                if ( ageNumber == random ) {
                    resultLabel.text = "You guessed rigth!"
                } else {
                    resultLabel.text = "Wrong! It was a \(random)"
                }
            } else {
                resultLabel.text = "Oops! Try again."
            }
        } else {
            resultLabel.text = "Oops! Try again."
        }
        
    }
    
}

