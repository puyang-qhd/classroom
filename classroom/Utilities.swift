import Foundation

//MARK:关于时间日期的转换

class TimeTransitions {
    func convertNowToString() -> String {
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd hh-mm-ss"
        let convertedDate = dateFormatter.string(from: now)
        
        return convertedDate
    }
    func convertTodayToString() -> String {
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let convertedDate = dateFormatter.string(from: now)
        
        return convertedDate
    }
    func convertDateToString(date:Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd hh-mm-ss"
        let convertedDate = dateFormatter.string(from: date)
        
        return convertedDate
    }
    func convertStringToDate(date:String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let convertedDateFromString = dateFormatter.date(from: date)
        
        return convertedDateFromString!
    }
    func convertDateToWeekdayAndAm(date:Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE a"
        let convertedWeek = dateFormatter.string(from: date)
        
        return convertedWeek
    }
    func convertDateAmStringToDate(dateAmString:String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd a"
        let convertedDate = dateFormatter.date(from: dateAmString)
        
        return convertedDate!
    }
    func convertTodayToWeekday() -> String {
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE a"
        let convertedWeek = dateFormatter.string(from: now)
        
        return convertedWeek
    }
}
