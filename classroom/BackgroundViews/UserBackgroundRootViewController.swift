//
//  UserBackgroundRootViewController.swift
//  classroom
//
//  Created by 李志军 on 2018/7/16.
//  Copyright © 2018年 Old Boy. All rights reserved.
//

import UIKit

class UserBackgroundRootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        if userCategory == UserCategory.user {
            performSegue(withIdentifier: "rootToUserBackground", sender: Any?.self)
        } else if userCategory == UserCategory.orgnization {
            performSegue(withIdentifier: "rootToOrgBackground", sender: Any?.self)
        } else if userCategory == UserCategory.administrator {
            performSegue(withIdentifier: "rootToAdminBackground", sender: Any?.self)
        } else {
            let alert = UIAlertController(title: "请重新登录", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "确定", style: .default,handler:nil)
            alert.addAction(action)
            self.present(alert, animated: true)
            
        }
        
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
