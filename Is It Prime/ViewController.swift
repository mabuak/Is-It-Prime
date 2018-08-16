//
//  ViewController.swift
//  Is It Prime
//
//  Created by Fachruzi Ramadhan on 16/08/2018.
//  Copyright © 2018 dhanhost. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    @IBOutlet var numberTextField: UITextField!
    @IBAction func isItPrimeButton(_ sender: Any) {
        
        if let userEnteredString = numberTextField.text {
            let userEnteredInteger =  Int(userEnteredString)
            
            if let number = userEnteredInteger {
                var isPrime = true
                
                if number == 1 {
                    isPrime = false
                }
                
                var i = 2
                
                while i < number {
                    if number % i == 0 {
                        isPrime = false
                    }
                    
                    i += 1
                }
                
                if isPrime {
                    resultLabel.text = "\(number) is prime!"
                } else {
                    resultLabel.text = "\(number) is not prime!"
                }
                
            } else {
                resultLabel.text = "Please ente a positive whole number"
            }
        }

    }
    @IBOutlet var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

