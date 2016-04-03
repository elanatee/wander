//
//  goalsViewController.swift
//  
//
//  Created by Elana Tee on 4/3/16.
//
//

import UIKit
var isSelected1 = false
var isSelected2 = false
var isSelected3 = false

class goalsViewController: UIViewController {

    @IBOutlet var myView: UIView!
    @IBOutlet weak var box1: UIImageView!
    @IBOutlet weak var box2: UIImageView!
    @IBOutlet weak var box3: UIImageView!
    @IBOutlet weak var trophy: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(isSelected1)
        if (isSelected1 != false) {
            box1.image = UIImage(named: "check")
            //isSelected1 = false
        }
        if (isSelected2 != false) {
            box2.image = UIImage(named: "check")
            //isSelected1 = false
        }
        if (isSelected3 != false) {
            box3.image = UIImage(named: "check")
            //isSelected1 = false
        }
        
        trophy.hidden = true
        
        print("viewDidLoad()")
    }
    
    /*override func viewDidAppear(animated: Bool) {
        print("in viewDidAppear")
        if (isSelected1 != false) {
            box1.image = UIImage(named: "check")
            //isSelected1 = false
        }
    }*/

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onDone1(sender: AnyObject) {
        print("box 1 clicked")
        print(isSelected1)
        if isSelected1 == false {
            box1.image = UIImage(named: "check")
            isSelected1 = true
        } else {
            box1.image = UIImage(named: "white")
            isSelected1 = false
        }
        if(isSelected1 == true && isSelected2 == true && isSelected3 == true){
            trophy.hidden = false
            delay(1, closure: {self.performSegueWithIdentifier("toCompleted", sender: self)})
            //performSegueWithIdentifier("toCompleted", sender: self)
        }
    }

    @IBAction func onDone2(sender: AnyObject) {
        print("box 2 clicked")
        if isSelected2 == false {
            box2.image = UIImage(named: "check")
            isSelected2 = true
        } else {
            box2.image = UIImage(named: "white")
            isSelected2 = false
        }
        if(isSelected1 == true && isSelected2 == true && isSelected3 == true){
            trophy.hidden = false
            delay(1, closure: {self.performSegueWithIdentifier("toCompleted", sender: self)})
            //performSegueWithIdentifier("toCompleted", sender: self)
        }
    }
    
    @IBAction func onDone3(sender: AnyObject) {
        print("box 3 clicked")
        if isSelected3 == false {
            box3.image = UIImage(named: "check")
            isSelected3 = true
        } else {
            box3.image = UIImage(named: "white")
            isSelected3 = false
        }
        if(isSelected1 == true && isSelected2 == true && isSelected3 == true){
            trophy.hidden = false
            delay(1, closure: {self.performSegueWithIdentifier("toCompleted", sender: self)})
            //performSegueWithIdentifier("toCompleted", sender: self)
        }
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
