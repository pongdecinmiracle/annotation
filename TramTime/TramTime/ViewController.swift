//
//  ViewController.swift
//  TramTime
//
//  Created by Pongdec><MacBook on 12/17/17.
//  Copyright © 2017 Pongdec><MacBook. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var textFieldRed: UITextField!
    @IBOutlet weak var textGreen: UITextField!
    @IBOutlet weak var textBlue: UITextField!
    @IBOutlet weak var textYellow: UITextField!
    
    var numberRed = 0
    var numberGreen = 0
    var numberBlue = 0
    var numberYellow = 0
    var num:String!
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Add Btn
    
    @IBAction func addBtnRed(_ sender: Any) {
        numberRed = numberRed + 1
        textFieldRed.text = String(numberRed)
        ref.child("users").child("Red").observe(DataEventType.value, with: { (snapshot) in
            let dataNumber = ["Time":self.numberRed]
            let pushData = ["/users/Red/Time/": dataNumber]
            self.ref.updateChildValues(pushData)
            print("Save data successfully")
        })
        
    }
    @IBAction func addBtnGreen(_ sender: Any) {
        numberGreen = numberGreen + 2
        textGreen.text = String(numberGreen)
        ref.child("users").child("Green").observe(DataEventType.value, with: { (snapshot) in
            let dataNumber = ["Time":self.numberGreen]
            let pushData = ["/users/Green/Time/": dataNumber]
            self.ref.updateChildValues(pushData)
            print("Save data successfully")
            
        })
    }
    @IBAction func addBtnBlue(_ sender: Any) {
        numberBlue = numberBlue + 3
        textBlue.text = String(numberBlue)
        ref.child("users").child("Blue").observe(DataEventType.value, with: { (snapshot) in
            let dataNumber = ["Time":self.numberBlue]
            let pushData = ["/users/Blue/Time/": dataNumber]
            self.ref.updateChildValues(pushData)
            print("Save data successfully")
            
        })
    }
    @IBAction func addBtnYellow(_ sender: Any) {
        numberYellow = numberYellow + 1
        textYellow.text = String(numberYellow)
        ref.child("users").child("Yellow").observe(DataEventType.value, with: { (snapshot) in
            let dataNumber = ["Time":self.numberYellow]
            let pushData = ["/users/Yellow/Time/": dataNumber]
            self.ref.updateChildValues(pushData)
            print("Save data successfully")
            
        })
    }
    
    //Clear Btn
    
    @IBAction func clearBtnRed(_ sender: Any) {
        numberRed = 0
        textFieldRed.text = String(numberRed)
        ref.child("users").child("Red").observe(DataEventType.value, with: { (snapshot) in
            let dataNumber = ["Time":self.numberRed]
            let pushData = ["/users/Red/Time/": dataNumber]
            self.ref.updateChildValues(pushData)
            print("Save data successfully")
        })
    }
    @IBAction func clearBtnGreen(_ sender: Any) {
        numberGreen = 0
        textGreen.text = String(numberGreen)
        ref.child("users").child("Green").observe(DataEventType.value, with: { (snapshot) in
            let dataNumber = ["Time":self.numberGreen]
            let pushData = ["/users/Green/Time/": dataNumber]
            self.ref.updateChildValues(pushData)
            print("Save data successfully")
        })
    }
    @IBAction func clearBtnBlue(_ sender: Any) {
        numberBlue = 0
        textBlue.text = String(numberBlue)
        ref.child("users").child("Blue").observe(DataEventType.value, with: { (snapshot) in
            let dataNumber = ["Time":self.numberBlue]
            let pushData = ["/users/Blue/Time/": dataNumber]
            self.ref.updateChildValues(pushData)
            print("Save data successfully")
        })
    }
    @IBAction func clearBtnYellow(_ sender: Any) {
        numberYellow = 0
        textYellow.text = String(numberYellow)
        ref.child("users").child("Yellow").observe(DataEventType.value, with: { (snapshot) in
            let dataNumber = ["Time":self.numberYellow]
            let pushData = ["/users/Yellow/Time/": dataNumber]
            self.ref.updateChildValues(pushData)
            print("Save data successfully")
        })
    }
    
}

