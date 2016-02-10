//
//  ViewController.swift
//  BullsEye
//
//  Created by Christopher Allen on 2/4/16.
//  Copyright © 2016 Razeware. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 0
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        let message = "The value of the slider is: \(currentValue)"
        
        let alert = UIAlertController(title: "Hello Woild!", message: message, preferredStyle: .Alert)
        
        
        let action = UIAlertAction(title: "OK!", style: .Default, handler: nil)
        
        alert.addAction(action)
        
        presentViewController(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
}

