//
//  ContentAPI.swift
//  classroom
//
//  Created by 李志军 on 2018/7/11.
//  Copyright © 2018年 Old Boy. All rights reserved.
//

import Foundation

class ContentAPI {
    static var shared : ContentAPI = ContentAPI()
    
    lazy var sections : Array<Dictionary<String,String>> = {
        
        guard let path = Bundle.main.path(forResource: "Sections", ofType: "json") else { return [] }
        let url = URL(fileURLWithPath: path)
        
        guard let data = try? Data(contentsOf: url) else { return [] }
        
        do {
            let decoder = JSONDecoder()
            let sections = try decoder.decode(Array<Dictionary<String,String>>.self, from: data)
            
            return sections
        } catch {
            print(error)
        }
        
       return []
    }()
}

enum UserCategory {
    case user
    case orgnization
    case administrator
}

//MARK:课程主分类
enum MainCategory : String {
    case arts = "艺术"
    case schoolSubjects = "学科"
    case earlyEducation = "早教"
    case sports = "运动"
    case outwardBound = "拓展"
    case others = "其他"
}
enum FurtherCategory : String {
    typealias RawValue = String
    
    case instruments = "乐器"
    case vocalMusic = "声乐"
    case host = "主持"
    case painting = "绘画"
    case dance = "舞蹈"
    case otherArts = "其他艺术"
    case chinese = "语文"
    case maths = "数学"
    case english = "英语"
    case physics = "物理"
    case chemistry = "化学"
    case otherSchoolSubjects = "其他学科"
    case musicKids = "幼儿音乐"
    case paintingKids = "幼儿绘画"
    case cognitiveEducationKids = "认知教育"
    case sensitiveEducationKids = "情感教育"
    case otherEarlyEducation = "其他早教"
    case football = "足球"
    case basketball = "篮球"
    case swim = "游泳"
    case badminton = "羽毛球"
    case tableTennis = "乒乓球"
    case taekwondo = "跆拳道"
    case karate = "空手道"
    case martialArts = "武术"
    case otherSports = "其他运动"
    case holidayActivities = "假期活动"
    case studyTour = "游学"
    case sensitiveEducationOutward = "情感拓展"
    case otherOutwardBound = "其他拓展"
    case others = "其他课程"
}

//MARK:机构类型
enum OrgCategory : String {
    case arts = "艺术"
    case schoolSubjects = "学科"
    case earlyEducation = "早教"
    case sports = "运动"
    case outwardBound = "拓展"
    case comprehensive = "综合"
}
//MARK:机构规模
enum OrgScale : String {
    case personalSchool = "个人私教"
    case smallOrg = "小型教育机构"
    case middiumOrg = "中型教育机构"
    case bigOrg = "大型教育机构"
    case chainOrg = "连锁教育机构"
    
}
//性别
enum Gender : String {
    case male = "男生"
    case female = "女生"
}
//年级枚举
enum Grade : String {
    
    case kindergarten = "幼儿园"
    case grade1 = "小学一年级"
    case grade2 = "小学二年级"
    case grade3 = "小学三年级"
    case grade4 = "小学四年级"
    case grade5 = "小学五年级"
    case grade6 = "小学六年级"
    case grade7 = "初中一年级"
    case grade8 = "初中二年级"
    case grade9 = "初中三年级"
    case grade10 = "高中一年级"
    case grade11 = "高中二年级"
    case grade12 = "高中三年级"
    
}

//MARK:上课时间
enum StudyTimeCycle : String {
    
    
    case week1_am = "Monday AM"
    case week1_pm = "Monday PM"
    case week2_am = "Tuesday AM"
    case week2_pm = "Tuesday PM"
    case week3_am = "Wednesday AM"
    case week3_pm = "Wednesday PM"
    case week4_am = "Thursday AM"
    case week4_pm = "Thursday PM"
    case week5_am = "Friday AM"
    case week5_pm = "Friday PM"
    case week6_am = "Saturday AM"
    case week6_pm = "Saturday PM"
    case week7_am = "Sunday AM"
    case week7_pm = "Sunday PM"
}
//MARK:机构信息


struct OrgInformation {
    var orgId: String
    var account: String
    var password: String
    var orgName: String
    var orgLogo:Data?
    var address: String
    var orgScale: OrgScale
    var orgCategory: OrgCategory
    var orgPhoneNumber:String
    var orgWechatAccount: String
    var otherContactInfomation: String
    var orgInroduction:String
    var orgImage:[String]
    var subCampuses:[SubCampus]
    
}
//MARK:分校信息
struct SubCampus {
    var subCampusId: String
    var subCampusName: String
    var subCampusAddress: String
    var subCampusPhoneNumber:String
    var subCampusIntroduction:String
    var subCampusImage:[String]
    var subCampusClassesId:[String]
    var subCampusDiscoveryInfomationId:[String]
    var inviteNumber:String
}
//MARK:课程信息
struct ClassInfomation {
    var classId: String
    var classPrice:String
    var classStudetType:[Grade]
    var classTitle: String
    var classBrief:String
    var classIntroduction: String
    var classSubCampusId:String
    var classMainCategory:MainCategory
    var classFurtherCategory: FurtherCategory
    var classSignUpDeadline: String
    var classBeginDate: String
    var classEndDate: String
    var classImage:[String]
    var classOrgId:String
}
//MARK:发现信息
struct DiscoveryInfomation {
    var infomationId:String
    var infomationTime:String
    var infomationContent:String
    var infomationSubCampusId:String
    var infomationOrgId:String
    var infomationSubCampusName: String
    var infomationSubCampusLogo: String
    var infomationImage:[String]
    
    
}
//MARK:用户信息
struct UserInfomation {
    var userId:String
    var userAccount:String
    var userPassword:String
    var userName:String
    var userBalance:Int
    var favoriteClasses:[String]
    var inviteNumber:String
    var inviterId:String
    var student:[StudentInfomation]
    var notifyTime : Dictionary<String,Int>
}
//MARK:学员信息
struct StudentInfomation {
    var studentId:String
    var studentName:String
    var gender:Gender
    var birthday:String
    var grade:Grade
    var purchasedClassesId:[String]
}

struct Administrator {
    var account : String
    var password : String
    
}
