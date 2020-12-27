//
//  ViewController.swift
//  Tipper
//
//  Created by Ravin Anderson on 12/26/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var customTextField: UITextField!
    @IBOutlet weak var customSwitch: UISwitch!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get initial bill amount and calculate tips
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        //Calculate tip and total
        var tip = 0.0
        if(customSwitch.isOn) {
            let tipP = Double(customTextField.text!) ?? 0
            tip = bill * tipP/100
        }
        else {
            tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        }
        let total = bill + tip
        
        //Update the tip and total labels
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

