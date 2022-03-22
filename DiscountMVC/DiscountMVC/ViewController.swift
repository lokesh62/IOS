//
//  ViewController.swift
//  DiscountMVC
//
//  Created by Pentyala,Lokesh on 3/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var AmountOutlet: UITextField!
    
    @IBOutlet weak var DiscountOutlet: UITextField!
    
    var priceAfterDiscount = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CalcDiscountButtonClicked(_ sender: UIButton) {
        //Read the data and convert into Double
        var amount = Double(AmountOutlet.text!)
        var disRate = Double(DiscountOutlet.text!)
        priceAfterDiscount = amount! - (amount!*disRate!/100)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "ResultSegWay"{
            var destination = segue.destination as!
            ResultViewController
            destination.amount = AmountOutlet.text!
            destination.discRAte = DiscountOutlet.text!
            destination.priceafterDiscount = String (priceAfterDiscount)
        }
    }
    
}

