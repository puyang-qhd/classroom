//
//  OrgDetailTableViewController.swift
//  classroom
//
//  Created by 李志军 on 2018/7/5.
//  Copyright © 2018年 Old Boy. All rights reserved.
//

import UIKit

class OrgDetailTableViewController: UITableViewController {
    @IBOutlet weak var orgName: UILabel!
    @IBOutlet weak var orgIntroduction: UILabel!
    @IBOutlet weak var orgSubcompuses: UILabel!
    @IBOutlet weak var orgTeacherIntro: UILabel!
    
    var orgInfo : OrgInformation!
    override func viewDidLoad() {
        super.viewDidLoad()
        orgName.text = orgInfo.orgName
        orgIntroduction.text = orgInfo.orgInroduction
        var subCampustxt = ""
        for subCampus in orgInfo.subCampuses {
            subCampustxt = subCampustxt + subCampus.subCampusName + "    " + subCampus.subCampusAddress
        }
        orgSubcompuses.text = subCampustxt
        orgTeacherIntro.text = orgInfo.orgInroduction
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

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "orgInfoContainerView" {
            let dest = segue.destination as! HeroViewViewController
            dest.contents = orgInfo.orgImage
            dest.numPages = orgInfo.orgImage.count
        }
    }


}
