//
//  UserBackgroundStudentInfoTableViewCell.swift
//  classroom
//
//  Created by 李志军 on 2018/7/17.
//  Copyright © 2018年 Old Boy. All rights reserved.
//

import UIKit

class UserBackgroundStudentInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var studentNameLabel: UILabel!
    @IBOutlet weak var studentInfo: UILabel!
    @IBOutlet weak var studentClassesLabel: UILabel!
    @IBOutlet weak var studentClassCalendarBtn: UIButton!
    @IBOutlet weak var studentEditBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
