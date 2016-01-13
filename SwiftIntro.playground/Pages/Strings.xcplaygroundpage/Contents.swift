/*:
# Strings

A `String` is an ordered collection of `Character` types
****
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/

let str = "Hello, playground"

visualize(str)

//: A `Character` includes special characters and emojis

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

let message = hello + ", " + greeting       //concatenate and assign to a new variable

hello += ", " + greeting                    //concatenate and assign back to hello variable

//:Concatenation can also be done with the `appendContentsOf` method.  This gets assigned back to the `hello` variable in this case.
hello.appendContentsOf(" I think it is.")


/*:
****
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/
