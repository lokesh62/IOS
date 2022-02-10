//
//  ViewController.swift
//  Course Display
//
//  Created by Pentyala,Lokesh on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DisplayImage: UIImageView!
    
    @IBOutlet weak var coursenum: UILabel!
    
    @IBOutlet weak var coursetitle: UILabel!
    
    @IBOutlet weak var semoffer: UILabel!
    
    
    @IBOutlet weak var previousbutton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    let courses = [["img01", "44555", "Network Security","Fall2022"],["img02","44643","IOS","Spring2022"],["img03","44656","Data streaming","Fall2022"]]
    
    var imageNumber = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //The details of the course(image, crsnumber,crstitle,crssem) in 0th position is displayed.
        updateUI(imageNumber)
        //the previous button should be disabled
        previousbutton.isEnabled = false
        

        
    }
    @IBAction func previousbuttonclicked(_ sender: UIButton) {
        imageNumber -= 1
        updateUI(imageNumber)
        nextButton.isEnabled = true
        if(imageNumber == 0){
            previousbutton.isEnabled = false
        }
        
    }
    
    @IBAction func nextbuttonclicked(_ sender: UIButton) {
        imageNumber+=1
        updateUI(imageNumber)
        previousbutton.isEnabled = true
        if(imageNumber == courses.count-1){
            nextButton.isEnabled = false
        }
        
        
    }
    func updateUI(_ imageNum : Int){
    DisplayImage.image = UIImage(named: courses[imageNum][0])
    coursenum.text = courses[imageNum][1]
    coursetitle.text = courses[imageNum][2]
    semoffer.text = courses[imageNum][3]
    }
    

}

