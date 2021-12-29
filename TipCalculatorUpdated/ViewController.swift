//
//  ViewController.swift
//  TipCalculatorUpdated
//
//  Created by Manasa Gadepalli on 12/28/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var PartySizeAmount: UITextField!
    @IBOutlet weak var TipControl: UISegmentedControl!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var Total: UILabel!
    @IBOutlet weak var CostPerPerson: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billAmountTextField.text!) ?? 0
        let size = Double(PartySizeAmount.text!) ?? 0
        
        let tipPercentages = [0.15, 0.20, 0.25]
        let tip = bill * tipPercentages[TipControl.selectedSegmentIndex]
        
        let total = (bill + tip) * size
        let costPerson = Double(total / size)
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        Total.text = String(format: "$%.2f", total)
        CostPerPerson.text = String(format: "$%.2f", costPerson)
        
    }
    
}

