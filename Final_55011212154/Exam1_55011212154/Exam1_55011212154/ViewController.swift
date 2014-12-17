//
//  ViewController.swift
//  Exam1_55011212154
//
//  Created by student on 12/17/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController,UITableViewDataSource {
    var items = [NSManagedObject]()
  
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func addItem(sender: AnyObject) {
        var alert = UIAlertController(title: "New Stock", message: "Add Stock", preferredStyle: .Alert)
        
        let saveAction = UIAlertAction(title: "Save", style: .Default){
            (action:UIAlertAction!) -> Void in
            
                let textField = alert.textFields![0] as UITextField
                let textField1 = alert.textFields![1] as UITextField
                let textField2 = alert.textFields![2] as UITextField
                self.saveName(textField.text)
                self.saveAmount(textField1.tag)
                self.savePrice(textField2.tag)
                self.tableView.reloadData()
        }
        let cancelAction = UIAlertAction(title: "calcel", style: .Default){
            (action:UIAlertAction!) -> Void in
        }
        alert.addTextFieldWithConfigurationHandler{
            (textField: UITextField!) -> Void in
        }
        alert.addTextFieldWithConfigurationHandler{
            (textField1: UITextField!) -> Void in
        }
        alert.addTextFieldWithConfigurationHandler{
            (textField2: UITextField!) -> Void in
        }
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        presentViewController(alert, animated: true, completion: nil)
    }
    
    
    
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
        let item = items[indexPath.row]
        cell.textLabel!.text = item.valueForKey("Name") as String?
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\"Your Stocks\""
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    override func viewWillAppear(animated: Bool) {
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        let managedContext = appDelegate.managedObjectContext!
        let fetchRequest = NSFetchRequest(entityName: "Stocks")
        var error: NSError?
        let fetchedResults = managedContext.executeFetchRequest(fetchRequest, error: &error) as [NSManagedObject]?
        if let results = fetchedResults{
        items = results}
        else{
        println("Could Not Fetch \(error), \(error!.userInfo)")
        }
        
        
    }
    func saveName(name: String){
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        let managedContext = appDelegate.managedObjectContext!
        let entity = NSEntityDescription.entityForName("Stocks", inManagedObjectContext: managedContext)
        let item = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
        item.setValue(name, forKey: "name")
        var error: NSError?
        if !managedContext.save(&error){
        println("Cloud Not Save\(error), \(error?.userInfo)")
        }
        items.append(item)
        
    }
    func saveAmount(amount: Int){
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        let managedContext1 = appDelegate.managedObjectContext!
        let entity = NSEntityDescription.entityForName("Stocks", inManagedObjectContext: managedContext1)
        let item1 = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext1)
        item1.setValue(amount, forKey: "amount")
        var error: NSError?
        if !managedContext1.save(&error){
            println("Cloud Not Save\(error), \(error?.userInfo)")
        }
        items.append(item1)
        
    }
    func savePrice(price: Int){
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        let managedContext1 = appDelegate.managedObjectContext!
        let entity = NSEntityDescription.entityForName("Stocks", inManagedObjectContext: managedContext1)
        let item2 = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext1)
        item2.setValue(price, forKey: "price")
        var error: NSError?
        if !managedContext1.save(&error){
            println("Cloud Not Save\(error), \(error?.userInfo)")
        }
        items.append(item2)
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        self.tableView.reloadData()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

