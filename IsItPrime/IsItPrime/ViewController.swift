//
//  ViewController.swift
//  IsItPrime
//
//  Created by Igor Silva on 21/11/17.
//  Copyright © 2017 Igor Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var responseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func checkButton(_ sender: UIButton) {
        
        if let potentialPrime = numberField.text {
            if let potentialPrimeNumber = Int(potentialPrime){
                if isPrime(num: potentialPrimeNumber){
                    responseLabel.text = "The number \(potentialPrimeNumber) is prime!"
                } else {
                    responseLabel.text = "The number \(potentialPrimeNumber) is not prime!"
                }
            } else {
                responseLabel.text = "Oops! Try again"
            }
        } else {
            responseLabel.text = "Oops! Try again"
        }
        
    }
    
    func isPrime(num: Int) -> Bool{
        
        if(num <= 1){
            return false
        }
        
        if(num <= 3){
            return true
        }
        
        for i in 2...num - 1 {
            if num % i == 0 {
                return false
            }
        }
        
        return true
        
    }
}

