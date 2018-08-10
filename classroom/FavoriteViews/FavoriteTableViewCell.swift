//
//  FavoriteTableViewCell.swift
//  classroom
//
//  Created by 李志军 on 2018/7/5.
//  Copyright © 2018年 Old Boy. All rights reserved.
//

import UIKit

class FavoriteTableViewCell: UITableViewCell {
    @IBOutlet weak var orgLogoImage: UIImageView!
    @IBOutlet weak var orgNameLabel: UILabel!
    @IBOutlet weak var markTimeLabel: UILabel!
    @IBOutlet weak var subjectName: UILabel!
    @IBOutlet weak var subjectBrief: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
