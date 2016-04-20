//
//  ViewController.swift
//  SwiftAppClient
//
//  Created by Vaith on 16/4/20.
//  Copyright © 2016年 Shenme Studio. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var data:NSArray = ["SimpleGet"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count;
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init();
        cell.textLabel?.text = data[indexPath.row] as? String;
        return cell;
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier((data[indexPath.row] as? String)!, sender: nil);
    }
    


}

