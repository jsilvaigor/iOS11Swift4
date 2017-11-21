//
//  ViewController.swift
//  CatYears
//
//  Created by Igor Silva on 20/11/17.
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

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) //This will hide the keyboard
    }
    
    @IBAction func getAgeButton(_ sender: UIButton) {
        
        if let age = ageField.text {
            if let ageNumber = Int(age) {
                let catYears = ageNumber * 7
                resultLabel.text = "Your cat is \(catYears) in cat years"
            } else {
                resultLabel.text = "Error while calculating cat years"
            }
        } else {
            resultLabel.text = "Type a number to calculate cat years"
        }
        
    }

}

