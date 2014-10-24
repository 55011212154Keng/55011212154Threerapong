//
//  ViewController.swift
//  Lab2
//
//  Created by student on 10/24/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ColorTwoViewControllerDelegate {

    @IBOutlet var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func myVCDidFinish(controller: ColorTwoViewController, text: String) {
        colorLabel.text = "Co: " + text
        if(text=="Red")
        {colorLabel.backgroundColor = UIColor.redColor()}
        else if(text=="Blue")
        {colorLabel.backgroundColor = UIColor.blueColor()}
        else if(text=="Green")
        {colorLabel.backgroundColor = UIColor.greenColor()}
        
        controller.navigationController?.popViewControllerAnimated(true)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "mySegue"{
        let vc = segue.destinationViewController as ColorTwoViewController
            vc.colorString = colorLabel.text!
            vc.delegate = self
        }
    
    }
    


}

