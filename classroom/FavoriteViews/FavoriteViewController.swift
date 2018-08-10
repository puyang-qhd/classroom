//
//  FavoriteViewController.swift
//  classroom
//
//  Created by 李志军 on 2018/7/5.
//  Copyright © 2018年 Old Boy. All rights reserved.
//

import UIKit

class FavoriteViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension FavoriteViewController: UITableViewDelegate,UITableViewDataSource {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favoriteTableViewCell", for: indexPath as IndexPath) as! FavoriteTableViewCell
        cell.orgLogoImage.image = UIImage(named: cellImage[indexPath.row])
        cell.orgNameLabel.text = cellTitleLabel[indexPath.row]
        cell.markTimeLabel.text = cellTitleLabel[indexPath.row]
        cell.subjectName.text = cellTitleLabel[indexPath.row]
        cell.subjectBrief.text = cellIntroLabel[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "favoriteToClassDetail", sender: self)
    }
    
    
}
