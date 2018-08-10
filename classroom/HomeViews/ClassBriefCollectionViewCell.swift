//
//  classBriefCollectionViewCell.swift
//  classroom
//
//  Created by 李志军 on 2018/6/26.
//  Copyright © 2018年 Old Boy. All rights reserved.
//

import UIKit

class ClassBriefCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellTitleLabel: UILabel!
    @IBOutlet weak var cellIntroLabel: UILabel!
  
  func configurCell(cellImage: String,cellTitleLabel:String ,cellIntroLabel: String) {
    self.cellImage.image = UIImage(named: cellImage)
    self.cellTitleLabel.text = cellTitleLabel
    self.cellIntroLabel.text = cellIntroLabel
  }
  
  func getClassInfomations(classCategory: MainCategory) -> [ClassInfomation] {
    var classes : Array<ClassInfomation> = []
    for info in classInfomations {
      if info.classMainCategory == classCategory {
        classes.insert(info, at: 0)
      }
    }
    
    return classes
  }
}
