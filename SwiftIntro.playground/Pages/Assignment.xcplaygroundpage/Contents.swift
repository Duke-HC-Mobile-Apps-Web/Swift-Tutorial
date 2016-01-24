/*:
# Assignment
****
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/

import Foundation
import UIKit

//: Your assignment is to sort this array of student objects by name

var students = buildRoster()

students = students.sort { (studentA: Student, studentB: Student) -> Bool in
    return studentA.name > studentB.name
}

let view = UITableView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
view.backgroundColor = UIColor.orangeColor()


//: [Next](@next)
