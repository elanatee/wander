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
            performSegueWithIdentifier("toCompleted", sender: self)
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
            performSegueWithIdentifier("toCompleted", sender: self)
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
            performSegueWithIdentifier("toCompleted", sender: self)
        }
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
