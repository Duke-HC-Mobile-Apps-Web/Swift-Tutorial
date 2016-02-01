/*:
# The Basics
****
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/

//Created by Davis Gossage on 1/7/16.
//Portions from https://developer.apple.com/swift/resources/

/*:
## Comments
****
*/

// a '//' signals a comment.  nothing on this line is executed as code

/*
here is a multi-line comment
nothing between the /* and */ is executed as code
*/

/*:
## Constants
****
Constants are declared with the let token.  They are immutable, meaning they can't be modified after decleration.
*/

let myString = "Hello playground";          //semicolons at the end of lines are optional

/*:
We can't change the value of `string` since it was declared as a constant with let

Uncomment to see the error
*/

//myString = "Hello world"

/*:
## Variables
****
Variables are declared with the var token.  They are mutable, allowing for modification after decleration.
*/

var varString = "Hello playground"

varString = "Hello world"

/*:
Swift is strongly typed, the compiler must always know the type of every variable that is declared

Strongly typed languages require conversions between types, leading to less undefined behavior

Uncomment to see type errors
*/

//varString = 4
//"some text" + 4
//[] + []

//:Typing can be implicit

var implicitString = "I'm implying that this is a string"

//:Or explicit

var explicitString: String = "This is definitely a string"

//:We can't implicitly type without an initial value.  Uncomment to see the error

//var isThisAString: String

//:So any variable that we are going to be setting later needs an explicit type

var thisIsAString: String

/*:
## Objects
****
In Swift, everything is an object.  Messages are passed to objects with dot notation.
*/

let x = 2.successor()            //since Ints are objects, this is valid

/*:
Try it: Using the documentation for `String`, figure out how to pass a message to the string to test whether the `String` ends with the word dog.
*/

var stringTest = "this string ends with the word dog"

stringTest.hasSuffix("dog")

/*:
****
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/
