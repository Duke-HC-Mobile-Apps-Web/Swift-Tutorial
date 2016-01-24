import Foundation

public class Student: Hashable {
    public var name: String = ""
    public var favoriteLanguage: String = ""
    
    subscript(key: String) -> String? {
        get {
            if key == "name" {
                return name
            } else if key == "favoriteLanguage" {
                return favoriteLanguage
            }
            return nil
        }
        set {
            if key == "name" {
                name = newValue!
            } else if key == "favoriteLanguage" {
                favoriteLanguage = newValue!
            }
        }
    }
    
    public var hashValue: Int{
        return name.hashValue ^ favoriteLanguage.hashValue
    }
    
}

public func ==(lhs: Student, rhs: Student) -> Bool {
    return lhs.name == rhs.name && lhs.favoriteLanguage == rhs.favoriteLanguage
}

public func computeHash(roster: [Student]) -> Double{
    var hash = 0.0
    for student in roster{
        hash += Double(student.hashValue)
    }
    return hash
}