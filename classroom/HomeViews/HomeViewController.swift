//
//  HomeViewController.swift
//  classroom
//
//  Created by 李志军 on 2018/6/25.
//  Copyright © 2018年 Old Boy. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
  @IBOutlet weak var scrollView: UIScrollView!
  @IBOutlet weak var popularOrgCollectionView: UICollectionView!
  @IBOutlet weak var popularArtCollectionView: UICollectionView!
  @IBOutlet weak var popularEarlyEducationCollectionView: UICollectionView!
  @IBOutlet weak var popularSchoolSubjectsCollectionView: UICollectionView!
  @IBOutlet weak var popularSportsCollectionView: UICollectionView!
  @IBOutlet weak var popularButton0: UIButton!
  @IBOutlet weak var popularButton1: UIButton!
  @IBOutlet weak var popularButton2: UIButton!
  @IBOutlet weak var popularButton3: UIButton!
  @IBOutlet weak var popularButton4: UIButton!
  
  
  
  var category = ""
  var mainCategory : MainCategory?
  var classInfo : ClassInfomation?
  var orgInfo : OrgInformation?
  
  override func viewWillAppear(_ animated: Bool) {
    self.navigationController?.setNavigationBarHidden(true, animated: false)
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    scrollView.delegate = self

  }
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "homeToClassDetail" {
      let dest = segue.destination as! ClassDetailTableViewController
      //            toViewController.text1 = "aaa"
      //            toViewController.category = category
      dest.classInfo = classInfo
      
    }
    if segue.identifier == "homeToOrgDetail" {
      let dest = segue.destination as! OrgDetailTableViewController
      dest.orgInfo = orgInfo
      
    }
    
    if segue.identifier == "homeToCategoryDetail" {
      let dest = segue.destination as! CategoryDetailViewController
      dest.mainCategory = mainCategory
    }
  }
  @IBAction func sortDetailButtonTapped(_ sender: UIButton) {
    switch sender.tag {
    case 1:
      mainCategory = MainCategory.arts
      performSegue(withIdentifier: "homeToCategoryDetail", sender: UIButton.self)
      break
    case 2:
      mainCategory = MainCategory.earlyEducation
      performSegue(withIdentifier: "homeToCategoryDetail", sender: UIButton.self)
      break
    case 3:
      mainCategory = MainCategory.schoolSubjects
      performSegue(withIdentifier: "homeToCategoryDetail", sender: UIButton.self)
      break
    case 4:
      mainCategory = MainCategory.sports
      performSegue(withIdentifier: "homeToCategoryDetail", sender: UIButton.self)
      break
    default:
      break
    }
  }
  
  
}

extension HomeViewController:UICollectionViewDelegate,UICollectionViewDataSource {
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    switch collectionView {
    case popularOrgCollectionView: return orgInfomations.count
    case popularArtCollectionView:
      var classes : Array<ClassInfomation> = []
      for info in classInfomations {
        if info.classMainCategory == MainCategory.arts {
          classes.append(info)
        }
      }
      return classes.count
    case popularEarlyEducationCollectionView:
      var classes : Array<ClassInfomation> = []
      for info in classInfomations {
        if info.classMainCategory == MainCategory.earlyEducation {
          classes.append(info)
        }
      }
      return classes.count
    case popularSchoolSubjectsCollectionView:
      var classes : Array<ClassInfomation> = []
      for info in classInfomations {
        if info.classMainCategory == MainCategory.schoolSubjects {
          classes.append(info)
        }
      }
      return classes.count
    default:
      var classes : Array<ClassInfomation> = []
      for info in classInfomations {
        if info.classMainCategory == MainCategory.sports {
          classes.append(info)
        }
      }
      return classes.count
      
    }
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    switch collectionView {
    case popularOrgCollectionView:
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "popularOrgCell", for: indexPath) as! ClassBriefCollectionViewCell
      let orgInfo = orgInfomations[indexPath.row]
      
      cell.configurCell(cellImage: orgInfo.orgImage[0], cellTitleLabel: orgInfo.orgName, cellIntroLabel: orgInfo.orgInroduction)

      return cell
      
    case popularArtCollectionView:
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "popularArtCell", for: indexPath) as! ClassBriefCollectionViewCell
      
      let classes = cell.getClassInfomations(classCategory: MainCategory.arts)
      let classInfo = classes[indexPath.row]
      
      cell.configurCell(cellImage: classInfo.classImage[0], cellTitleLabel: classInfo.classTitle, cellIntroLabel: classInfo.classBrief)

      return cell
    case popularEarlyEducationCollectionView:
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "popularEarlyEducationCell", for: indexPath) as! ClassBriefCollectionViewCell
      
      let classes = cell.getClassInfomations(classCategory: MainCategory.earlyEducation)
      let classInfo = classes[indexPath.row]
      
      cell.configurCell(cellImage: classInfo.classImage[0], cellTitleLabel: classInfo.classTitle, cellIntroLabel: classInfo.classBrief)
      
      return cell
 
    case popularSchoolSubjectsCollectionView:
      
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "popularSchoolSubjectsCell", for: indexPath) as! ClassBriefCollectionViewCell
      
      let classes = cell.getClassInfomations(classCategory: MainCategory.schoolSubjects)
      let classInfo = classes[indexPath.row]
      
      cell.configurCell(cellImage: classInfo.classImage[0], cellTitleLabel: classInfo.classTitle, cellIntroLabel: classInfo.classBrief)
      
      return cell
    default:
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "popularSportsCell", for: indexPath) as! ClassBriefCollectionViewCell
      
      let classes = cell.getClassInfomations(classCategory: MainCategory.sports)
      let classInfo = classes[indexPath.row]
      
      cell.configurCell(cellImage: classInfo.classImage[0], cellTitleLabel: classInfo.classTitle, cellIntroLabel: classInfo.classBrief)
      
      return cell
    }
  }
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    switch collectionView {
    case popularOrgCollectionView:
      var orgs : Array<OrgInformation> = []
      for info in orgInfomations {
        orgs.append(info)
      }
      let orgInfo = orgs[indexPath.row]
      self.orgInfo = orgInfo
      performSegue(withIdentifier: "homeToOrgDetail", sender: indexPath)
      break
    case popularArtCollectionView:
      var classes : Array<ClassInfomation> = []
      for info in classInfomations {
        if info.classMainCategory == MainCategory.arts {
          classes.append(info)
        }
      }
      let classInfo = classes[indexPath.row]
      self.classInfo = classInfo
      performSegue(withIdentifier: "homeToClassDetail", sender: indexPath)
      break
    case popularEarlyEducationCollectionView:
      var classes : Array<ClassInfomation> = []
      for info in classInfomations {
        if info.classMainCategory == MainCategory.earlyEducation {
          classes.append(info)
        }
      }
      let classInfo = classes[indexPath.row]
      self.classInfo = classInfo
      performSegue(withIdentifier: "homeToClassDetail", sender: indexPath)
      break
    case popularSchoolSubjectsCollectionView:
      var classes : Array<ClassInfomation> = []
      for info in classInfomations {
        if info.classMainCategory == MainCategory.schoolSubjects {
          classes.append(info)
        }
      }
      let classInfo = classes[indexPath.row]
      self.classInfo = classInfo
      performSegue(withIdentifier: "homeToClassDetail", sender: indexPath)
      break
    case popularSportsCollectionView:
      var classes : Array<ClassInfomation> = []
      for info in classInfomations {
        if info.classMainCategory == MainCategory.sports {
          classes.append(info)
        }
      }
      let classInfo = classes[indexPath.row]
      self.classInfo = classInfo
      performSegue(withIdentifier: "homeToClassDetail", sender: indexPath)
      break
    default:
      break
    }
  }
}

extension HomeViewController:UIScrollViewDelegate {
  func scrollViewDidScroll(_ scrollView: UIScrollView) {
    if scrollView.contentOffset.y >= 5 {
      self.navigationController?.setNavigationBarHidden(false, animated: true)
      
    } else {
      self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
  }
}


