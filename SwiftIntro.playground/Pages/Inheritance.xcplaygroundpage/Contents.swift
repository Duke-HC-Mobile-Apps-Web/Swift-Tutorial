/*:
# Inheritance
****
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/

//:Inheritance is a powerful concept in programming which involves building off of and extending classes

class Animal {
    var numLegs: Int
    var name: String
    
    init(numLegs: Int, name: String){
        self.numLegs = numLegs
        self.name = name
    }
    
    func greet() -> String{
        return "Hello human, I am some animal named \(name)"
    }
}

class Dog : Animal {
    init(){
        super.init(numLegs: 4, name: "Rufus")
    }
    
    override func greet() -> String {
        return "Hello human, I am a dog named \(name)"
    }
}

Animal(numLegs: 4, name: "Symba").greet()

Dog().greet()

//: [Next](@next)
