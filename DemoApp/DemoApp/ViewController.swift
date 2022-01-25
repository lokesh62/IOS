//
//  ViewController.swift
//  DemoApp
//
//  Created by Pentyala,Lokesh on 1/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DisplayText: UITextField!
    @IBOutlet weak var submit: UIButton!
    @IBOutlet weak var displaylabel: UILabel!
    override func viewDidLoad() {
       
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonClicked(_ sender: Any) {
        
        var name = DisplayText.text!
        name = name.uppercased()
        if(name.contains("A") || name.contains("E") ||
           name.contains("I") || name.contains("O") ||
           name.contains("U")){
            displaylabel.text = "Text has vowels"
            
        }else{
            displaylabel.text = "text does not has vowels"
        }
        
    }
    
}

