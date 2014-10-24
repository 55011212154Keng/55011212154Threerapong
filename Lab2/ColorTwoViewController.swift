//
//  ColorTwoViewController.swift
//  Lab2
//
//  Created by student on 10/24/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit
protocol ColorTwoViewControllerDelegate{
    func myVCDidFinish(controller:ColorTwoViewController,text:String)
}
class ColorTwoViewController: UIViewController {
    var delegate:ColorTwoViewControllerDelegate? = nil
    var colorString = ""

    @IBAction func colorSelectionButton(sender: UIButton) {
        colorLabel.text = sender.titleLabel!.text!
        if(sender.titleLabel!.text!=="Red")
        {colorLabel.backgroundColor = UIColor.redColor()}
        else if(sender.titleLabel!.text!=="Blue")
        {colorLabel.backgroundColor = UIColor.blueColor()}
        else if(sender.titleLabel!.text!=="Green")
        {colorLabel.backgroundColor = UIColor.greenColor()}
        
    }
    @IBAction func saveColor(sender: UIBarButtonItem) {
        if(delegate != nil){
            delegate!.myVCDidFinish(self, text: colorLabel!.text!)
        }
        
        
    }
    @IBOutlet weak var colorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        colorLabel.text = colorString
    }
}
