/*:
# Optionals
****
An Optional in Swift is a variable that can hold either a value or no value.  Optionals are declared by appending a `?` to the type.
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/

//: Say we have a `String` that we want to test to see if it begins with the word "Hello"

let helloString = "Hello there."

helloString.hasPrefix("Hello")

//: That works fine, but what if our string didn't exist for some reason.  Say it was a value pulled from a database that was never set by the user.

//: First note that an object by itself can never be nil.  Uncomment to see the error

//let ourString: String = nil

//: Instead we can have an optional that can be unwrapped into either a value or nil

let optString: String? = nil

//: The question mark signifies that we only want to call `hasPrefix` if our `optString` exists
optString?.hasPrefix("Hello")

//: The alternative would be an exclamation point, saying that we want to call `hasPrefix` no matter what.  This is called forced optional unwrapping.  Our program breaks if we force unwrap an optional into nil, as you can't call a method on nil.  Uncomment to see the error.

//optString!.hasPrefix("Hello")

//: So in summary, optionals are a powerful tool to avoid unexpected nil values in your programs.  If you must have a value of an object for your program to make sense, use force unwrapping.

//: [Next](@next)
