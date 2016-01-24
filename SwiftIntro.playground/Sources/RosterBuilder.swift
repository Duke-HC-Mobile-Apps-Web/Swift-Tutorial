import Foundation

public func buildRoster() -> Array<Student>{
    let path = NSBundle.mainBundle().pathForResource("Roster", ofType:"plist")
    let array = NSArray(contentsOfFile:path!)
    
    var allStudents = [Student]()
    for dict: NSDictionary in array as! [NSDictionary]{
        let rosterItem = Student()
        for pair in dict{
            let key = pair.key as! String
            let value = pair.value as! String
            rosterItem[key] = value
        }
        allStudents.append(rosterItem)
    }
    
    return allStudents
}
