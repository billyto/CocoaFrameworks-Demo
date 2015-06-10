//
//  ViewController.swift
//  RentACorgi
//
//  Created by Billy Tobon on 5/22/15.
//  Copyright (c) 2015 Rent the Runway. All rights reserved.
//

import UIKit
import RentKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var rentButton = RENTButton(SKU: "CORGI001", title: "Rent me") { (Bool) -> Void in
            
            var alert = UIAlertController(title: "Woof!", message: "You got Rosco for one hour tomorrow", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            
            
        }
        
        rentButton.backgroundColor = UIColor.clearColor()
        rentButton.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        view.addSubview(rentButton)
        
        let constraintCenterX = NSLayoutConstraint(item: rentButton, attribute: .CenterX, relatedBy: .Equal, toItem: view, attribute: .CenterX, multiplier: 1, constant: 0)
        
        view.addConstraint(constraintCenterX)
        
        let constraintBottom = NSLayoutConstraint(item: rentButton, attribute: .Bottom, relatedBy: .LessThanOrEqual, toItem: view, attribute: .Bottom, multiplier: 1, constant: -40.0)
        
        view.addConstraint(constraintBottom)
        
        let constraintWidth = NSLayoutConstraint(item: rentButton, attribute: .Width, relatedBy: .Equal, toItem:nil, attribute: .Width, multiplier: 1, constant: 150.0)
        
        view.addConstraint(constraintWidth)
        
        let constraintHeight = NSLayoutConstraint(item: rentButton, attribute: .Height, relatedBy: .Equal, toItem:nil, attribute: .Height, multiplier: 1, constant: 40.0)
        
        view.addConstraint(constraintHeight)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

