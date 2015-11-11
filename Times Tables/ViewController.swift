//
//  ViewController.swift
//  Times Tables
//
//  Created by Ale Ramírez Fernández on 11/11/15.
//  Copyright © 2015 AleFernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var mTable: UITableView!
    
    @IBOutlet weak var mSliderValue: UISlider!
    
    @IBAction func sliderMoved(sender: AnyObject) {
        
        mTable.reloadData()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20
        
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        let mTimesTable = Int(mSliderValue.value * 20)
        
        cell.textLabel?.text = String(mTimesTable * (indexPath.row + 1))
        
        return cell
        
    }


}

