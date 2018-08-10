//
//  UserBackgroundViewController.swift
//  classroom
//
//  Created by 李志军 on 2018/7/17.
//  Copyright © 2018年 Old Boy. All rights reserved.
//

import UIKit

class UserBackgroundViewController: UIViewController {
    @IBOutlet weak var UserImage: UIImageView!
    @IBOutlet weak var UserName: UILabel!
    @IBOutlet weak var UserBalance: UILabel!
    @IBOutlet weak var UserInviteNumberlabel: UILabel!
    @IBOutlet weak var studentInfoTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentInfoTableView.delegate = self
        studentInfoTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

}
extension UserBackgroundViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentInfoCell") as! UserBackgroundStudentInfoTableViewCell
        let student = userCurrent?.student[indexPath.row]
        cell.studentNameLabel.text = student?.studentName
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }


}
