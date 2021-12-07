//
//  ViewController.swift
//  Prework
//
//  Created by Miro on 12/6/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        //get bill amount from text field
        
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //calculate tip
        
        let tipPercentages = [0.15, 0.18, 0.2]
        
        //get segmented control bar data + calculate tip
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        //calculate bill total
        
        let total = bill + tip
        
        //update tip amount label
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        //update total label
        
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
}

