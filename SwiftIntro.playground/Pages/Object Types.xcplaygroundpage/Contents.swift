/*:
# Object Types
****
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/

/*:
## Enumeration
****
An `enum` defines a common type for a group of related values and enables you to work with those values in a type-safe way.  In C, enums assign names to a set of integer values.  In Swift there is no associated value, each name is its own type.
*/

enum Dogs {
    case Golden
    case Collie
    case Boxer
}

let myDog = Dogs.Golden

switch myDog{
    case Dogs.Golden:
        print("My dog is a golden.")
    case Dogs.Collie:
        print("My dog is a collie.")
    case Dogs.Boxer:
        print("My dog is a boxer.")
}

//: We can optionally provide a raw value (Int, Character, String) for each `enum` member

enum DogsWithVals: String {
    case Golden = "Golden"
    case Collie = "Collie"
    case Boxer = "Boxer"
}

let myDogWithVal = DogsWithVals.Golden

print("My dog is a \(myDogWithVal.rawValue).")


/*:
## Classes
****
*/

import Foundation

class Dog {
//:These are class properties, they're declared at the top level.  They are the constants and variables associated with the class
    var name: String
    var age: Int
    
//:Lets use enums to represent the state of our dog
    enum dogState{
        case Laying
        case Sitting
        case Standing
    }
    var currentState = dogState.Standing
    
//:This is the `init` method, it is called when objects are instantiated.  In this case we require the dog name and age to be passed in.
    init(name: String, age: Int) {
//:Uh oh, we have a naming conflict here.  The variables getting passed in are the same as our property names.  The implicit `self` property refers to the class instance, we can use it to set our properties.
        self.name = name
        self.age = age
    }
    
//:Methods give our class behavior
    func greet() -> String {
        return "Hello human, my name is \(name)"
    }
    
    func sit() {
        currentState = dogState.Sitting
    }
    
    
}

//:We call the init method of the `Dog` class and instantiate it
var myDogObject = Dog(name: "Rufus", age: 12)
myDogObject.greet()

//:We can have multiple instances of the same class
var otherDog = Dog(name: "Rolf", age: 10)
otherDog.greet()
otherDog.sit()

//: [Next](@next)
