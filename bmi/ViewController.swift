//
//  ViewController.swift
//  bmi
//
//  Created by Артем on 12/11/18.
//  Copyright © 2018 Артем. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var etHeight: UITextField!
    @IBOutlet weak var etWeight: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var buttonResult: UIButton!
    
    let tupButton = TupButton()
    
    
    
    override func viewDidLoad() {
        etWeight.keyboardType = .decimalPad
        etWeight.keyboardAppearance = .dark
        etWeight.placeholder = "50.00"
        etHeight.keyboardType = .decimalPad
        result.numberOfLines = 2
        result.isHidden = true
        
    }
    
    
    @IBAction func generateBmi(_ sender: UIButton) {
        sender.pulsate()
        tupButton.tup()
    }
    

}

