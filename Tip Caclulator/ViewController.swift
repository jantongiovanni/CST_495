//
//  ViewController.swift
//  Tip Caclulator
//
//  Created by Joseph Antongiovanni on 1/22/18.
//  Copyright © 2018 Joseph Antongiovanni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        let bill = Double(billField.text!) ?? 0
        let tip = bill * 0.2
        let total = bill + tip
        //let is a variable i'm not going to change the name of later, taking the value inside of textfield and putting into bill
        // ?? 0 handles non numeric values and returns default value 0
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        // \(variable) anything within the parenthesis thats a variable change it into whatever its value is
    }
}

