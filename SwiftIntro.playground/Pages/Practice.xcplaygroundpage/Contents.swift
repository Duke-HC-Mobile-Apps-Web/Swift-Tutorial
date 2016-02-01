/*:
# Practice
****
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/

import Foundation
import UIKit

//: Given this array of student objects:

var students = buildRoster()

//: 1. Display only the names of each student as an array

for student in students{
    print(student.name)
}

//: 2. Sort `students` by first name

students = students.sort { (s1: Student, s2: Student) -> Bool in
    return s1.name < s2.name
}

//: 3. Sort `students` by programming language, with first name breaking the tie

students = students.sort { (s1: Student, s2: Student) -> Bool in
    if (s1.favoriteLanguage == s2.favoriteLanguage){
        return s1.name < s2.name
    }
    else{
        return s1.favoriteLanguage < s2.favoriteLanguage
    }
}

//: 4. Sort `students` by last name.  Hint: dive into the documentation for `String`.

students = students.sort { (s1: Student, s2: Student) -> Bool in
    //we split the string wherever a space occurs
    let lastName1 = s1.name.componentsSeparatedByString(" ")
    let lastName2 = s2.name.componentsSeparatedByString(" ")
    //then compare the last element
    return lastName1.last < lastName2.last
}

//: 5. Subclass the Students class to include additional properties and/or behavior.  Then instantiate yourself as this new object.

public class ExtendedStudent : Student {
    var grade: String
    var favoriteSport: String
    
    init(name: String, favoriteLanguage: String, grade: String, favoriteSport: String) {
        //set additional properties for our ExtendedStudent
        self.grade = grade
        self.favoriteSport = favoriteSport
        //then initialize the inherited properties from Student
        super.init(name: name, favoriteLanguage: favoriteLanguage)
    }
}

ExtendedStudent(name: "Davis", favoriteLanguage: "Swift", grade: "Senior", favoriteSport: "Baseball")


//: [Next](@next)
