//
//  SimplePostViewController.swift
//  SwiftAppClient
//
//  Created by Vaith on 16/4/20.
//  Copyright © 2016年 Shenme Studio. All rights reserved.
//

import UIKit
import Alamofire

class SimplePostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func simplePost(sender: AnyObject) {
        Alamofire.request(.POST, "http://192.168.1.66:8080/post").responseJSON { response in
            if (response.result.isSuccess)
            {
                print(response.result.value);
            }
            else
            {
                print("failure");
            }
        }
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
