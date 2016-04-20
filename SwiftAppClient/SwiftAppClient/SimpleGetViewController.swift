//
//  SimpleGetViewController.swift
//  SwiftAppClient
//
//  Created by Vaith on 16/4/20.
//  Copyright © 2016年 Shenme Studio. All rights reserved.
//

import Alamofire
import UIKit

class SimpleGetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func simpleGet(sender: AnyObject) {
        Alamofire.request(.GET, "http://192.168.1.66:8080/simpleget").responseJSON { response in
            print(response.result.value);
        };
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
