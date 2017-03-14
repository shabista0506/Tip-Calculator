//
//  ViewController.swift
//  TipCalculator
//
//  Created by Shabista Shabista on 3/13/17.
//  Copyright © 2017 Shabista Shabista. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField:
    UITextField!
    
    
    @IBOutlet weak var tipLabel:
    UILabel!
    
    
    @IBOutlet weak var tipAmount:
    UILabel!
    
    
    @IBOutlet weak var TipControl:
    UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "$0.00"
        tipAmount.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OnEditingChanged(_ sender: Any) {
        
        var tipPercent = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercent[TipControl.selectedSegmentIndex]
        
        
        var billAmount = Double(billField.text!)
        var tip = billAmount! * tipPercentage
        var totalAmount = billAmount! + tip
        
        tipLabel.text = "$\(tip)"
        tipAmount.text = "$\(totalAmount)"
        
        tipLabel.text = String(format : "$%.2f", tip)
        tipAmount.text = String(format : "$%.2f", totalAmount)
        
    }

    @IBAction func OnTap(_ sender: Any) {
        view.endEditing(true)
    }
}

