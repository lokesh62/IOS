//
//  ViewController.swift
//  AnimationApp
//
//  Created by Pentyala,Lokesh on 3/17/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var happy: UIButton!
    
    @IBOutlet weak var sad: UIButton!
    
    @IBOutlet weak var angry: UIButton!
    
    @IBOutlet weak var shakeme: UIButton!
    
    @IBOutlet weak var show: UIButton!
    
    @IBOutlet weak var imageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    override func viewDidAppear(_ animated: Bool) {
        //move all components outside of the screen
        imageview.frame.origin.x = view.frame.width
        happy.frame.origin.x = view.frame.width
        sad.frame.origin.x = view.frame.width
        angry.frame.origin.x = view.frame.width
        shakeme.frame.origin.x = view.frame.width
        


        
    }
    
    @IBAction func happybuttonclicked(_ sender: UIButton) {
        animateImage(_ImageName:"happy")
    }
    
    @IBAction func sadbuttonclicked(_ sender: UIButton) {
        animateImage(_ImageName:"sad")

    }
    
    @IBAction func angrybuttonclicked(_ sender: UIButton) {
        animateImage(_ImageName:"angry")

    }
    
    @IBAction func shakemebuttonclicked(_ sender: UIButton) {
        //rectangle r = new rectangle(x,y,w,h)
        //get current location of the object
        //increase the size of the object(image view)
        var w = imageview.frame.width
        w+=40
        
        var h = imageview.frame.width
        h+=40
        
        var x = imageview.frame.origin.x
        x+=20
        
        var y = imageview.frame.origin.y
        y+=20
        
        var largerFrame = CGRect(x: x, y: y, width: w, height: h)
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.2,initialSpringVelocity: 0, animations: {
            self.imageview.frame = largerFrame
        })
    }
    
    @IBAction func showbuttonclicked(_ sender: UIButton) {
        UIView.animate(withDuration: 1, animations: {
        //bring back the UI components to the center of the screen
            self.imageview.center.x = self.view.center.x
            self.happy.center.x = self.view.center.x
            self.sad.center.x = self.view.center.x
            self.angry.center.x = self.view.center.x
            self.shakeme.center.x = self.view.center.x
            self.show.isEnabled = false
        })
        
    }
    
    func animateImage(_ImageName:String){
        //fi alpha is 0 the image ios opaque
        UIView.animate(withDuration: 1,animations:{
            self.imageview.alpha = 0
        })
        
        //if alpha is 1, the object is transparent
        UIView.animate(withDuration: 1, animations: {
            self.imageview.alpha = 1
            self.imageview.image = UIImage(named: _ImageName)
        })
    }
    
    
    


}

