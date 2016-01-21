/*:
# Inheritance
****
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/

class Animal {
    var numLegs: Int
    var name: String
    
    init(numLegs: Int, name: String){
        self.numLegs = numLegs
        self.name = name
    }
    
    func greet(){
        print("Hello human, I am some animal named \(name)")
    }
}

class Dog : Animal {
    init(){
        super.init(numLegs: 4, name:"Rufus")
    }
    
    override func greet() {
        print("Hello human, I am a dog named \(name)")
    }
}

Dog().greet()

//: [Next](@next)
