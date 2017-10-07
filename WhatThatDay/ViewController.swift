//
//  ViewController.swift
//  WhatThatDay
//
//  Created by Mostafa on 7/16/17.
//  Copyright © 2017 Mostafa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func DisplayDay(sender: UIButton) {
        let chosenDate = self.datePicker.date
        let formatter = NSDateFormatter()
        formatter.dateFormat = "EEEE"
        let day = formatter.stringFromDate(chosenDate)
        let result = "The Day is \(day)"
        let myAlter = UIAlertController(title: result, message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        myAlter.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(myAlter , animated: true, completion: nil)
    }

}

