/*:
# Strings

A `String` is an ordered collection of `Character` types
****
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/

let str = "Hello, playground"

visualize(str)

//: A `Character` may include special characters and emojis

let emoj = "Héllo, 🇺🇸laygr😮und!"

visualize(emoj)

//: We can break this string into its `Character`(s) with a for-in loop

for char in emoj.characters {
    print(char)
//remember that this box shows the history of the value of char
}

/*:
## Concatenation
****
*/

var hello = "Hello"
let greeting = "beautiful day isn't it?"

//:Concatenation can be done with the + or += symbol.  += assigns after concatenating.

let message = hello + ", " + greeting                   //concatenate and assign to a new variable

hello += ", " + greeting                                //concatenate and assign back to hello variable

//:Concatenation can also be done with the `appendContentsOf` method.  This gets assigned back to the `hello` variable in this case.
hello.appendContentsOf(" I think it is.")


/*:
## Interpolation
****
Interpolation allows for the forming of strings from any set of variables or constants.
*/

/*:
The compiler recognizes any variables set off with a backslash and surrounded by parenthesis.  Their value is inserted into the string.
*/
let username = "Davis"
let interpolatedGreeting = "Hi there \(username).  Beautiful day isn't it?"

/*:
We can get the current date by instantiating an `NSDate` class, part of the `Foundation` framework

This is an example of the Swift language and the legacy NS (NeXTSTEP) classes (many of which are still written in Objective-C) working together.
*/
import Foundation

let date = NSDate()

let dateGreeting = "Hi! The current date is \(date)"    //You may notice the date is not printing in the most readable way (at least in the US).  This could be fixed using a class called NSDateFormatter.

/*:
## Formatted Strings
Occasionally it is necessary to use the `format` method of `String` instead of using interpolation.
*/

let myDouble = 2.2

//:We format strings by initializing a `String` and calling the `format` method.  Variables are set off with a '%' and the type ('Int` = d, `Double` = f, `String` = s)

let formattedString = String(format: "My double is : %f", myDouble)

//:Formatted strings become useful if we want to display a certain number of digits

let stringWithDigits = String(format: "My double is : %.2f", myDouble)

/*:
Try it.  Build a string with 15 digits of pi that looks like "The first 15 digits of pi are 3.14..."

Send the string to the `printPi` function to verify your answer
*/

let verifier = StringVerifier()

var initialStatement = "The first 15 digits of pi are"

verifier.printPi(initialStatement)

/*:
****
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/
