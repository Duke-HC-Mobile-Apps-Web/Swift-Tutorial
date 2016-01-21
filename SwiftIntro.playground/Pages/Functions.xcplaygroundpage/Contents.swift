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

func sayHello(personName : String){
    print("hello, \(personName)")
}

sayHello("Davis")

//:Functions can return values

func buildHelloString(personName : String) -> String{
    return "hello, \(personName)"
}

print(buildHelloString("Davis"))

/*:
When calling functions with multiple parameters, parameter names beyond the first must be specified.

This convention is enforced as of Swift 2.0
*/

func say(s: String, times: Int){
    for _ in 0..<times{
        print(s)
    }
}

say("woof", times: 4)
//uncomment to see enforcement
//say("woof", 4)


/*:
****
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/
