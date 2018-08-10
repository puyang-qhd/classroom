//
//  BackgroundRootViewController.swift
//  classroom
//
//  Created by 李志军 on 2018/7/15.
//  Copyright © 2018年 Old Boy. All rights reserved.
//

import UIKit

class BackgroundRootViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch userCategory {
        case UserCategory.user? :
            performSegue(withIdentifier: "rootToUser", sender: Any?.self)
        case UserCategory.orgnization? :
            performSegue(withIdentifier: "rootToOrg", sender: Any?.self)
        case UserCategory.administrator? :
            performSegue(withIdentifier: "rootToAdmin", sender: Any?.self)
        default:
            break
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
