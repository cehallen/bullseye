//
//  ViewController.swift
//  BullsEye
//
//  Created by Christopher Allen on 2/4/16.
//  Copyright © 2016 Razeware. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Hello Woild!", message: "Foist app heah", preferredStyle: .Alert)
        
        
        let action = UIAlertAction(title: "Awesome!", style: .Default, handler: nil)
        
        alert.addAction(action)
        
        presentViewController(alert, animated: true, completion: nil)
    }
}

