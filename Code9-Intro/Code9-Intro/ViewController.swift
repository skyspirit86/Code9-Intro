//
//  ViewController.swift
//  Code9-Intro
//
//  Created by Zolt Varga on 5/18/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var maxNumberTextField: UITextField!
    
    var number: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapIncreaseNumber(_ sender: Any) {
        print("tapIncreaseNumber")
        if let counter = maxNumberTextField.text , number < Int(counter)! {
            number += 1
        }
        
        counterLabel.text = String(number)
    }
    
    @IBAction func tapDecreaseNumber(_ sender: Any) {
        print("tapIncreaseNumber")
        
        if number > 0 {
            number -= 1
        }
        
        counterLabel.text = String(number)
    }
}

