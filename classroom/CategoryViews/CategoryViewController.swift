//
//  SortsViewController.swift
//  classroom
//
//  Created by 李志军 on 2018/6/29.
//  Copyright © 2018年 Old Boy. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var mainCategory : MainCategory?

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mainCategoryToCategoryDetail" {
        let dest = segue.destination as! CategoryDetailViewController
            dest.mainCategory = mainCategory
        }
    }


}

extension CategoryViewController: UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allCategories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sortsName", for: indexPath) as! CategoryCollectionViewCell


            
        cell.sortsCellImage.image = UIImage(named: mainSortsImage[indexPath.row])

        
        cell.sortsNameLabel.text = mainCategories[indexPath.row].rawValue
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        mainCategory = mainCategories[indexPath.row]
        performSegue(withIdentifier: "mainCategoryToCategoryDetail", sender: indexPath)
    }
    
    
}
