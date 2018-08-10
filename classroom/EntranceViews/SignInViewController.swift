//
//  SignInViewController.swift
//  classroom
//
//  Created by 李志军 on 2018/6/25.
//  Copyright © 2018年 Old Boy. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet weak var userAccountTF: UITextField!
    @IBOutlet weak var userPasswordTF: UITextField!
    @IBOutlet weak var userCategorySwitch: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    @IBAction func signInBtnTapped(_ sender: UIButton) {
        switch userCategorySwitch.selectedSegmentIndex {
        case 0:
            userCategory = UserCategory.user
        case 1:
            userCategory = UserCategory.orgnization
        case 2:
            userCategory = UserCategory.administrator
        default:
            userCategory = UserCategory.user
        }
        if let userAccount = userAccountTF.text {
            if let userPassword = userPasswordTF.text {
                var accountCorrect = false
                switch userCategory {
                case .user? :
                    for userInfo in userInfomations {
                        if userInfo.userAccount == userAccount && userInfo.userPassword == userPassword {
                            userCurrent = userInfo
                            accountCorrect = true
                            performSegue(withIdentifier: "signInToHome", sender: Any?.self)
                        }
                    }
        
                case UserCategory.orgnization? :
                    for orgInfo in orgInfomations {
                        if orgInfo.account == userAccount && orgInfo.password == userPassword {
                            orgCurrent = orgInfo
                            accountCorrect = true
                            performSegue(withIdentifier: "signInToHome", sender: Any?.self)
                        }
                    }
                case UserCategory.administrator? :
                    for adminInfo in administrators {
                        if adminInfo.account == userAccount && adminInfo.password == userPassword {
                            adminCurrent = adminInfo
                            accountCorrect = true
                            performSegue(withIdentifier: "signInToHome", sender: Any?.self)
                        }
                    }
                
                case .none:
                    break

                }
                if accountCorrect == false {
                    let alert = UIAlertController(title: "错误的用户名或密码", message: nil, preferredStyle: .alert)
                    let action = UIAlertAction(title: "确定", style: .default, handler: nil)
                    alert.addAction(action)
                    self.present(alert, animated: true)
                }
            }
        }
        
        
    }
    

}
