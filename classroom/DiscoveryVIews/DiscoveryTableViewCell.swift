//
//  DiscoveryTableViewCell.swift
//  classroom
//
//  Created by 李志军 on 2018/7/4.
//  Copyright © 2018年 Old Boy. All rights reserved.
//

import UIKit

class DiscoveryTableViewCell: UITableViewCell {
    @IBOutlet weak var orgLogoImage: UIImageView!
    @IBOutlet weak var orgNameBtn: UIButton!
    @IBOutlet weak var presentTimeLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var contentImageCollectionView: UICollectionView!
    @IBOutlet weak var contentLabelBottomConstraint: NSLayoutConstraint!
    
    var images : Array<String> = []
    var indexNum = 0

    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentImageCollectionView.delegate = self
        contentImageCollectionView.dataSource = self

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func reloadData(images : [String]) {
        self.images = images
        if images.count == 0 {
            contentLabelBottomConstraint.constant = -16
        } else {
            contentLabelBottomConstraint.constant = -118
            
        }
    }

    
    
    
}
extension DiscoveryTableViewCell:UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCellInTable", for: indexPath) as! DiscoveryContentCollectionViewCell
        cell.contentImageView.image = UIImage(named: images[indexPath.row])
        return cell
    }
    


}

