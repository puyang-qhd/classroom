//
//  DiscoveryViewController.swift
//  classroom
//
//  Created by 李志军 on 2018/7/2.
//  Copyright © 2018年 Old Boy. All rights reserved.
//

import UIKit

class DiscoveryViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var orgInfoSorted : Dictionary<Int,OrgInformation> = [:]
    var indexNum = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        //设置estimatedRowHeight属性默认值
        self.tableView!.estimatedRowHeight = 44.0
        //rowHeight属性设置为UITableViewAutomaticDimension
        self.tableView!.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func orgNameBtnTapped(_ sender: UIButton) {
        indexNum = sender.tag
        performSegue(withIdentifier: "discoveryToOrgDetail", sender: Any?.self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "discoveryToOrgDetail" {
            let dest = segue.destination as! OrgDetailTableViewController
            
            dest.orgInfo = orgInfoSorted[indexNum]
        }
    }

}

extension DiscoveryViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return discoveryInfomations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstCell") as! DiscoveryTableViewCell
        let discoveryInfo = discoveryInfomations[indexPath.row]
        var orgInfo : OrgInformation?
        cell.orgLogoImage.image = UIImage(named: discoveryInfo.infomationSubCampusLogo)

        cell.orgNameBtn.setTitle(discoveryInfo.infomationSubCampusName, for: .normal)
        cell.orgNameBtn.tag = indexPath.row
        
        cell.presentTimeLabel.text = discoveryInfo.infomationTime
        cell.contentLabel.text = discoveryInfo.infomationContent
        cell.reloadData(images: discoveryInfo.infomationImage)
        for info in orgInfomations {
            if info.orgId == discoveryInfo.infomationOrgId {
                orgInfo = info
            }
        }
        if let orgInfomation = orgInfo {
            self.orgInfoSorted.updateValue(orgInfomation, forKey: indexPath.row)
        }
        
        return cell
    }



}
