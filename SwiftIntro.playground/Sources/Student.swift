import Foundation

public class Student {
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
    
    init(){
        //empty init method is necessary for the RosterBuilder class, which builds Student objects from text
    }
    
    init(name: String, favoriteLanguage: String){
        self.name = name
        self.favoriteLanguage = favoriteLanguage
    }
    
}