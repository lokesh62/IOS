//
//  ResultViewController.swift
//  DiscountMVC
//
//  Created by Pentyala,Lokesh on 3/22/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var EnterAmountOutlet: UILabel!
    
    
    @IBOutlet weak var EnterDiscountOutlet: UILabel!
    

    @IBOutlet weak var PriceAfterDiscountOutlet: UILabel!
    
    var amount = ""
    var discRAte = ""
    var priceafterDiscount = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        EnterAmountOutlet.text = EnterAmountOutlet.text! + amount
        EnterDiscountOutlet.text = EnterDiscountOutlet.text! + discRAte
        PriceAfterDiscountOutlet.text = PriceAfterDiscountOutlet.text! + priceafterDiscount
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
