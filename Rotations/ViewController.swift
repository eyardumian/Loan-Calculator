//
//  ViewController.swift
//  Rotations
//
//  Created by Erika Yardumian on 6/20/20.
//  Copyright © 2020 Erika Yardumian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var numPmts: UITextField!
    @IBOutlet weak var intRate: UITextField!
    @IBOutlet weak var loanAmt: UITextField!
    @IBOutlet weak var payment: UILabel!
    
    var numberPmts: String = "";
    var rate: String = "";
    var loanAmount: String = "";
    var pmt: Double = 0.0;
    var num: Double = 0.0;
    var den: Double = 0.0;
    var floatRate: Double = 0.0;
    
    @IBAction func calcPmt(_ sender: Any) {
        loanAmount = loanAmt.text!
        let loan = (loanAmount as NSString).doubleValue
        numberPmts = numPmts.text!
        let floatPayments = (numberPmts as NSString).doubleValue
        rate = intRate.text!
        let fr = (rate as NSString).doubleValue
        floatRate = fr / 100
        pmt = (loan * (floatRate * (pow(1 + floatRate, floatPayments)))) / (pow(1 + floatRate, floatPayments) - 1 )
        let final = String(format: "%.2f", pmt)
        payment.text! = "$" + final
    }
    
}

