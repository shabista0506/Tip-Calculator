//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Shabista Shabista on 3/19/17.
//  Copyright © 2017 Shabista Shabista. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaultTipSegmentControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTouchDone(sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onEditDefaultTip(sender: UISegmentedControl) {
        let defaults = UserDefaults.standard
        
        defaults.set(sender.selectedSegmentIndex, forKey: "default_tip")
        defaults.synchronize()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = UserDefaults.standard
        var defaultTip = defaults.integer(forKey: "default_tip")
        switch defaultTip {
        case 0...2:
            defaultTipSegmentControl.selectedSegmentIndex = defaultTip
        default:
            defaultTipSegmentControl.selectedSegmentIndex = 0
        }
    }
    
    }
