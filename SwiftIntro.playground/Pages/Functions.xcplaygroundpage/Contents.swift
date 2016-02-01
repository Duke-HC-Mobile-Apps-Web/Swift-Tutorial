/*:
# Functions
****
A self-contained chunk of code to perform a specific task
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/

//:Declare a function with the `func` token.

func sayHello(){
    print("hello")
}

//:Call it by following its name with a list of arguments.  In this case there are none.
sayHello()

//:Add arguments with the `variableName` : `Type` pattern

func sayHello(name: String){
    print("Hello \(name)")
}

sayHello("World")

//:Functions can return values

func buildHelloString(name : String) -> String{
    return "Hello \(name)"
}

let returnedValue = buildHelloString("World")

/*:
## Function Signatures
****
Every function has a unique `signature` or `type`, meaning they can be overloaded
*/


func sameName() -> String{
    //this function signature is () -> String
    return "1st called"
}

func sameName(name: String) -> String{
    //this function signature is (String) -> String
    return "2nd called"
}

//: Which function gets called depends on which parameters are used

sameName()

sameName("a string")

/*:
When calling functions with multiple parameters, parameter names beyond the first are externalized by default.

This convention is enforced as of Swift 2.0
*/

func say(s: String, times: Int){
    for _ in 0..<times{
        print(s)
    }
}

say("woof", times: 4)
//uncomment to see enforcement
say("woof", times: 4)


/*:
Try it: write a method that takes an array of artists represented as dictionaries and prints their names
*/

//using artists from before

let jayZ = ["name":"Jay-Z", "nominations":64]
let beyonce = ["name":"Beyoncè", "nominations":53]
let kanye = ["name":"Kanye West", "nominations":53]
let u2 = ["name":"U2", "nominations":47]
let bruce = ["name":"Bruce Springsteen", "nominations":46]

let array = [jayZ, beyonce,kanye,u2,bruce]

for artist in array{
    print(artist["name"]!)
}

/*:
****
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/
