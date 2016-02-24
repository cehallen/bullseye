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
    var targetValue: Int = 0
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
        updateLabels()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        var difference: Int
//        if currentValue > targetValue {
//            difference = currentValue - targetValue
//        } else if targetValue > currentValue {
//            difference = targetValue - currentValue
//        } else {
//            difference = 0
//        }
        difference = currentValue - targetValue
        if difference < 0 {
            difference = -1 * difference
        }
        
        let message = "The value of the slider is: \(currentValue)"
                        + "\nThe value of the target value is: \(targetValue)"
                        + "\nThe difference is \(difference)"
        
        let alert = UIAlertController(title: "Hello World!", message: message, preferredStyle: .Alert)
        
        
        let action = UIAlertAction(title: "OK!", style: .Default, handler: nil)
        
        alert.addAction(action)
        
        presentViewController(alert, animated: true, completion: nil)
        
        startNewRound()
        updateLabels()
    }
    
    @IBAction func sliderMoved(slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
    
    func startNewRound() {
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
    }
}






















