//
//  ViewController.swift
//  BMI-Calculator-1
//
//  Created by user136776 on 2/24/18.
//  Copyright © 2018 user136776. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var weightTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func compute(_ sender: UIButton) {
        let h = Double(heightTextField.text!)
        let w = Double(weightTextfield.text!)
        if(h == nil && w == nil) {return }
        let BmiM = BMIModel(height:h!,weight:w!)
        
        resultLabel.text = String(BmiM.calcBMI())
        
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        heightTextField.text = ""
        weightTextfield.text = ""
        resultLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

