//
//  ResultViewController.swift
//  ContactListApp
//
//  Created by Pentyala,Lokesh on 4/21/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var PhoneNumberOutlet: UILabel!
    
    @IBOutlet weak var EmailOutlet: UILabel!
    
    var phoneNum = 0
    var email = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        PhoneNumberOutlet.text = "\(phoneNum)"
        EmailOutlet.text = email
        
        
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
