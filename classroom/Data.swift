//
//  Data.swift
//  classroom
//
//  Created by 李志军 on 2018/6/24.
//  Copyright © 2018年 Old Boy. All rights reserved.
//

import Foundation

var userCurrent : UserInfomation?
var orgCurrent : OrgInformation?
var adminCurrent : Administrator?
var userCategory : UserCategory?

var introduceText = [["1.1","1.2","1.3"],
                     ["2.1","2.2","2.3"],
                     ["3.1","3.2","3.3"]
    ]
var cellImage = ["cell1","cell2","cell3"]
var cellTitleLabel = ["1111.1111","1111.2222","1111.3333"]
var cellIntroLabel = ["2222.1111","2222.2222qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq","2222.3333"]
var cellInfo = ["cellImage":cellImage,"cellTitleLabel":cellTitleLabel,"cellIntroLabel":cellIntroLabel]



var mainSortsImage = ["cell1","cell2","cell3","cell1","cell2","cell3"]
let mainCategories : Array<MainCategory> = [MainCategory.arts, MainCategory.schoolSubjects, MainCategory.earlyEducation, MainCategory.sports, MainCategory.outwardBound, MainCategory.others]
let allCategories : Dictionary<MainCategory,Array<FurtherCategory>> = [
        MainCategory.arts:[FurtherCategory.instruments,FurtherCategory.vocalMusic,FurtherCategory.host,FurtherCategory.painting, FurtherCategory.dance, FurtherCategory.otherArts],
        MainCategory.schoolSubjects:[FurtherCategory.chinese,FurtherCategory.english,FurtherCategory.english,FurtherCategory.physics,FurtherCategory.chemistry,FurtherCategory.otherSchoolSubjects],
        MainCategory.earlyEducation:[FurtherCategory.musicKids,FurtherCategory.paintingKids,FurtherCategory.cognitiveEducationKids,FurtherCategory.sensitiveEducationKids,FurtherCategory.otherEarlyEducation],
        MainCategory.sports:[FurtherCategory.football,FurtherCategory.basketball,FurtherCategory.swim,FurtherCategory.badminton,FurtherCategory.tableTennis,FurtherCategory.taekwondo,FurtherCategory.karate,FurtherCategory.martialArts,FurtherCategory.otherSports],
        MainCategory.outwardBound:[FurtherCategory.holidayActivities,FurtherCategory.studyTour,FurtherCategory.sensitiveEducationOutward,FurtherCategory.otherOutwardBound],
        MainCategory.others:
            [FurtherCategory.others]
]

//MARK:orgInfomation

var orgInfomation1 = OrgInformation(orgId: "024110001", account: "600080", password: "600080", orgName: "秦皇岛海星艺校", orgLogo: nil, address: "秦皇岛市海港区迎宾路1号图书大厦（新华书店）四楼", orgScale: OrgScale.middiumOrg, orgCategory: OrgCategory.arts, orgPhoneNumber: "0335-3809799 13103358222", orgWechatAccount: "haixingyixiao3809799", otherContactInfomation: "", orgInroduction: "秦皇岛海星艺校是中国教育示范基地、北京舞蹈学院中国舞考级秦皇岛地区教学、考级承办单位，负责秦皇岛地区舞蹈师资培训和学生舞蹈考级，是河北省文化厅通过考级备案的一所综合性艺术学校。", orgImage: ["haixing1","haixing2","haixing3","haixing4"], subCampuses: [subCampus1])

var orgInfomation2 = OrgInformation(orgId: "023410002",  account: "600081", password: "600081", orgName: "秦皇岛足冀俱乐部", orgLogo: nil, address: "秦皇岛市海港区天山北路1-1号开发区天山球馆", orgScale: OrgScale.smallOrg, orgCategory: OrgCategory.sports, orgPhoneNumber: "13513343121 13930373445", orgWechatAccount: "13513343121", otherContactInfomation: "", orgInroduction: "足冀足球俱乐部是河北华夏幸福足球俱乐部秦皇岛首家合作青训俱乐部。燕山大学高素质毕业生经营教育团队，对接当地校园足球发展，言传身教，寓教于乐，专注于培养孩子足球兴趣爱好", orgImage: ["zuji1","zuji2","zuji3"], subCampuses: [subCampus2])
var orgInfomation3 = OrgInformation(orgId: "024310003",  account: "600082", password: "600082", orgName: "秦皇岛学乐儿童英语", orgLogo: nil, address: "河北大街中段466号玉龙湾正门东侧商铺3F", orgScale: OrgScale.chainOrg, orgCategory: OrgCategory.schoolSubjects, orgPhoneNumber: "0335-3356668 3356669", orgWechatAccount: "xueleqhd", otherContactInfomation: "", orgInroduction: "美国学乐英语集团成立于1920年，拥有90多年儿童英语教育历史。为3-12岁亚洲儿童量身定制，以阅读、词汇、自然拼读、口语、书写五大板块相结合的课程，专业培养孩子英文自主阅读能力，让孩子爱上英语学习，自信自然说一口地道英语。", orgImage: ["xuele1","xuele2","xuele3"], subCampuses: [subCampus3])

var orgInfomations = [orgInfomation1,orgInfomation2,orgInfomation3]

//MARK: subCampus

var subCampus1 = SubCampus(subCampusId: "02411000101", subCampusName: "秦皇岛海星艺校主校区", subCampusAddress: "秦皇岛市海港区迎宾路1号图书大厦（新华书店）四楼", subCampusPhoneNumber: "0335-3809799 13103358222", subCampusIntroduction: "秦皇岛海星艺校是中国教育示范基地、北京舞蹈学院中国舞考级秦皇岛地区教学、考级承办单位，负责秦皇岛地区舞蹈师资培训和学生舞蹈考级，是河北省文化厅通过考级备案的一所综合性艺术学校。", subCampusImage:["haixing1","haixing2","haixing3","haixing4"], subCampusClassesId: ["024110001010001"], subCampusDiscoveryInfomationId: ["02411000100001"], inviteNumber: "02411000101")


var subCampus2 = SubCampus(subCampusId: "02341000201", subCampusName: "秦皇岛足冀俱乐部主校区", subCampusAddress: "秦皇岛市海港区天山北路1-1号开发区天山球馆", subCampusPhoneNumber: "13513343121 13930373445", subCampusIntroduction: "足冀足球俱乐部是河北华夏幸福足球俱乐部秦皇岛首家合作青训俱乐部。燕山大学高素质毕业生经营教育团队，对接当地校园足球发展，言传身教，寓教于乐，专注于培养孩子足球兴趣爱好", subCampusImage: ["zuji1","zuji2","zuji3"], subCampusClassesId: ["023410002010001"], subCampusDiscoveryInfomationId: ["0234100020100001"], inviteNumber: "02341000201")


var subCampus3 = SubCampus(subCampusId: "02431000301", subCampusName: "秦皇岛学乐儿童英语一校区", subCampusAddress: "河北大街中段466号玉龙湾正门东侧商铺3F", subCampusPhoneNumber: "0335-3356668 3356669", subCampusIntroduction: "美国学乐英语集团成立于1920年，拥有90多年儿童英语教育历史。为3-12岁亚洲儿童量身定制，以阅读、词汇、自然拼读、口语、书写五大板块相结合的课程，专业培养孩子英文自主阅读能力，让孩子爱上英语学习，自信自然说一口地道英语。", subCampusImage: ["xuele1","xuele2","xuele3"], subCampusClassesId: ["024310003010001"], subCampusDiscoveryInfomationId: ["0243100030100001"], inviteNumber: "02431000301")

var subCampuses = [subCampus1,subCampus2,subCampus3]

//MARK: userInfomation
var userInfomation1 = UserInfomation(userId:"u0000001", userAccount: "00001", userPassword: "00001", userName: "王1", userBalance: 0, favoriteClasses: [], inviteNumber: "u0000001", inviterId: "02411000101", student: [studentInfomation1,studentInfomation2], notifyTime: [:])

var userInfomation2 = UserInfomation(userId: "u0000002", userAccount: "00002", userPassword: "00002", userName: "李2", userBalance: 0, favoriteClasses: [], inviteNumber: "u0000002", inviterId: "02341000201", student: [studentInfomation3], notifyTime: [:])
var userInfomation3 = UserInfomation(userId: "u0000003", userAccount: "00003", userPassword: "00003", userName: "张3", userBalance: 10000, favoriteClasses: [], inviteNumber: "u0000003", inviterId: "02431000301", student: [studentInfomation4], notifyTime: [:])
var userInfomation4 = UserInfomation(userId: "u0000004", userAccount: "1234", userPassword: "1234", userName: "张3", userBalance: 10000, favoriteClasses: [], inviteNumber: "u0000003", inviterId: "02431000301", student: [studentInfomation4], notifyTime: [:])
var userInfomations = [userInfomation1,userInfomation2,userInfomation3,userInfomation4]


//MARK:studentInfomation
var studentInfomation1 = StudentInfomation(studentId: "u000000101", studentName: "王小1", gender: Gender.male, birthday: "2009-01-12", grade: Grade.grade4, purchasedClassesId: [])
var studentInfomation2 = StudentInfomation(studentId: "u000000102", studentName: "王小2", gender: Gender.female, birthday: "2010-08-10", grade: Grade.grade3, purchasedClassesId: [])
var studentInfomation3 = StudentInfomation(studentId: "u000000201", studentName: "李小1", gender: Gender.male, birthday: "2006-05-25", grade: Grade.grade7, purchasedClassesId: [])
var studentInfomation4 = StudentInfomation(studentId: "u000000301", studentName: "张小1", gender: Gender.female, birthday: "2014-10-10", grade: Grade.kindergarten, purchasedClassesId: [])

//MARK:discoveryInfomation

var discoveryInfomation1 = DiscoveryInfomation(infomationId: "0241100010100001", infomationTime: "2018-05-25 11:20:35", infomationContent: "秦皇岛海星艺校是中国教育示范基地、北京舞蹈学院中国舞考级秦皇岛地区教学、考级承办单位，负责秦皇岛地区舞蹈师资培训和学生舞蹈考级，是河北省文化厅通过考级备案的一所综合性艺术学校。", infomationSubCampusId: "02411000101", infomationOrgId: "024110001",infomationSubCampusName:"秦皇岛海星艺校主校区", infomationSubCampusLogo: "haixing1", infomationImage: ["haixing1","haixing2","haixing3","haixing4"])
var discoveryInfomation2 = DiscoveryInfomation(infomationId: "0234100020100001", infomationTime: "2018-05-26 14:15:05", infomationContent: "足冀足球俱乐部是河北华夏幸福足球俱乐部秦皇岛首家合作青训俱乐部。燕山大学高素质毕业生经营教育团队，对接当地校园足球发展，言传身教，寓教于乐，专注于培养孩子足球兴趣爱好", infomationSubCampusId: "02341000201", infomationOrgId: "023410002", infomationSubCampusName: "秦皇岛足冀俱乐部主校区", infomationSubCampusLogo: "zuji1", infomationImage: ["zuji1","zuji2","zuji3"])
var discoveryInfomation3 = DiscoveryInfomation(infomationId: "0243100030100001", infomationTime: "2018-05-26 14:18:05", infomationContent: "美国学乐英语集团成立于1920年，拥有90多年儿童英语教育历史。为3-12岁亚洲儿童量身定制，以阅读、词汇、自然拼读、口语、书写五大板块相结合的课程，专业培养孩子英文自主阅读能力，让孩子爱上英语学习，自信自然说一口地道英语。", infomationSubCampusId: "02431000301", infomationOrgId: "024310003", infomationSubCampusName: "秦皇岛学乐儿童英语一校区", infomationSubCampusLogo: "xuele1", infomationImage: ["xuele1","xuele2","xuele3"])
var discoveryInfomations = [discoveryInfomation1,discoveryInfomation2,discoveryInfomation3]

//MARK:classInfomation

var classInfomation1 = ClassInfomation(classId: "024110001010001", classPrice: "2650", classStudetType: [Grade.grade1,.grade2,.grade3,.grade4,.grade5,.grade6], classTitle: "少儿舞蹈暑期班", classBrief: "小学生暑期舞蹈学习首选", classIntroduction: "针对小学一至六年级小朋友的舞蹈班", classSubCampusId: "02411000101", classMainCategory: MainCategory.arts, classFurtherCategory: .dance, classSignUpDeadline: "2018-08-01", classBeginDate: "2018-08-01", classEndDate: "2018-08-30", classImage: ["haixing1","haixing2","haixing3","haixing4"], classOrgId: "024110001")
var classInfomation2 = ClassInfomation(classId: "023410002010001", classPrice: "1800", classStudetType: [Grade.grade1,.grade2,.grade3,.grade4,.grade5,.grade6], classTitle: "青少年足球暑期班", classBrief: "小学生暑期足球学习首选", classIntroduction: "针对小学一至六年级小朋友的足球训练班", classSubCampusId: "02341000201", classMainCategory: MainCategory.sports, classFurtherCategory: .football, classSignUpDeadline: "2018-07-20", classBeginDate: "2018-07-21", classEndDate: "2018-08-30", classImage: ["zuji1","zuji2","zuji3"], classOrgId: "023410002")
var classInfomation3 = ClassInfomation(classId: "024310003010001", classPrice: "600", classStudetType: [.grade4,.grade5,.grade6], classTitle: "小学英语暑期提高班", classBrief: "小学英语暑期提高班", classIntroduction: "针对小学四至六年级小朋友的英语提高班", classSubCampusId: "02431000301", classMainCategory: MainCategory.schoolSubjects, classFurtherCategory: .english, classSignUpDeadline: "2018-07-20", classBeginDate: "2018-07-21", classEndDate: "2018-08-30", classImage: ["xuele1","xuele2","xuele3"], classOrgId: "024310003")
var classInfomations = [classInfomation1,classInfomation2,classInfomation3]
let admin : Administrator = Administrator.init(account: "10111", password: "10111")
var administrators = [admin]
