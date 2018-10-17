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

    @IBAction func DisplayDay(_ sender: UIButton) {
        let chosenDate = self.datePicker.date
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        let day = formatter.string(from: chosenDate)
        let result = "The Day is \(day)"
        let myAlter = UIAlertController(title: result, message: nil, preferredStyle: UIAlertControllerStyle.alert)
        myAlter.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(myAlter , animated: true)
    }

}

