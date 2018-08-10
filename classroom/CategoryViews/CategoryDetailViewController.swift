//
//  SortDetailViewController.swift
//  classroom
//
//  Created by 李志军 on 2018/6/29.
//  Copyright © 2018年 Old Boy. All rights reserved.
//

import UIKit

class CategoryDetailViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!

    
    var mainCategory : MainCategory!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }

    
    
    
}

extension CategoryDetailViewController:UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allCategories[mainCategory]!.count
    }
    

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sortsName", for: indexPath) as! CategoryCollectionViewCell
        
        cell.sortsCellImage.image = UIImage(named: mainSortsImage[indexPath.row % 3])
        let furtherCategory = allCategories[mainCategory]!
        cell.sortsNameLabel.text = furtherCategory[indexPath.row].rawValue
        
        return cell
    }
    

    
    
}
