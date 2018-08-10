//
//  ClassDetailTableViewController.swift
//  classroom
//
//  Created by 李志军 on 2018/7/5.
//  Copyright © 2018年 Old Boy. All rights reserved.
//

import UIKit

class ClassDetailTableViewController: UITableViewController {
    @IBOutlet weak var classTitleImage: UIView!
    @IBOutlet weak var classTitleName: UILabel!
    @IBOutlet weak var classPrice: UILabel!
    @IBOutlet weak var classIntroduction: UILabel!
    @IBOutlet weak var classTime: UILabel!
    @IBOutlet weak var classTeachingAddress: UILabel!
    @IBOutlet weak var subCampusName: UILabel!
    @IBOutlet weak var classTeacherIntroduction: UILabel!
    @IBOutlet weak var orgTitleImage: UIView!
    @IBOutlet weak var orgNameLabel: UILabel!
    @IBOutlet weak var orgIntroductionLabel: UILabel!
    @IBOutlet weak var orgSubcampuses: UILabel!
    @IBOutlet weak var orgTeachers: UILabel!
    
    var classInfo : ClassInfomation!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var subCampus : SubCampus!
        var orgInfomation : OrgInformation!
        for subCampusInfo in subCampuses {
            if subCampusInfo.subCampusId == classInfo.classSubCampusId {
                subCampus = subCampusInfo
            }
        }
        for orgInfo in orgInfomations {
            if orgInfo.orgId == classInfo.classOrgId {
                orgInfomation = orgInfo
            }
        }
        
        classTitleName.text = classInfo.classTitle
        classPrice.text = classInfo.classPrice
        classIntroduction.text = classInfo.classIntroduction
        classTime.text = String("\(classInfo.classBeginDate)至\(classInfo.classEndDate)")

        classTeachingAddress.text = subCampus.subCampusAddress
        subCampusName.text = subCampus.subCampusName
        classTeacherIntroduction.text = classInfo.classBrief
        orgNameLabel.text = orgInfomation.orgName
        orgIntroductionLabel.text = orgInfomation.orgInroduction
        var campusName = ""
        for orgSubcampus in orgInfomation.subCampuses {
            campusName = orgSubcampus.subCampusName + "    " + campusName
        }
        orgSubcampuses.text = campusName
        orgTeachers.text = campusName
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source



    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "classDetailContainerView" {
            let dest = segue.destination as! HeroViewViewController
            dest.contents = classInfo.classImage
            dest.numPages = classInfo.classImage.count
        }
        if segue.identifier == "classDetailOrgInfoContainerView" {
            let dest = segue.destination as! HeroViewViewController
            var classDetailOrg : OrgInformation?
            for orgInfo in orgInfomations {
                if orgInfo.orgId == classInfo.classOrgId {
                    classDetailOrg = orgInfo
                }
            }
            if classDetailOrg != nil {
            dest.contents = classDetailOrg?.orgImage
            dest.numPages = classDetailOrg?.orgImage.count
            }
        }
    }


}
