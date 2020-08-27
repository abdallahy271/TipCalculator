//
//  ViewController.swift
//  tip
//
//  Created by MAC on 8/26/20.
//  Copyright © 2020 Yusuf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        print("hello")
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount
        let bill = Double(billField.text!) ?? 0
        
        let tipPercentages = [ 0.15, 0.18, 0.2]
        //calculate the tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        //update the tip and total labels
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text =  String(format: "$%.2f", total)


    }
}

