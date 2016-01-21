/*:
# Closures
****
Self-contained blocks of code that can be passed around and used in code.  Similar to blocks in Objective-C and lambdas in other programming languages.
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/
import UIKit

/*:
## Sort
****
`sort` is an array method which uses closures to allow for custom sorting of elements.
*/

//:Here is a long winded way of representing a closure.  We pass our `sortingFunction` into the sort method

var unorderedStrings = ["A","D","B","C"]

func sortingFunction(s1: String, s2: String) -> Bool{
    return s1 < s2
}

unorderedStrings.sort(sortingFunction)

//:Here is how this is usually seen, note that the sorting closure, or `sortingFunction` from before is inline using closure expression syntax.  This time we'll reverse sort the list

unorderedStrings.sort({ (a : String, b : String) -> Bool in
    return b < a
})

/*:
## Map
****
`map` is an array method which transforms array elements using a function.

[x1, x2, ... , xn].map(f) -> [f(x1), f(x2), ... , f(xn)]
*/

let moneyAmounts = [4,2,1,4,5]

//: We can act on each element with `map`, where each element is represented by `$0`.  Remember the interpolation shortcut from [Strings](Strings).

moneyAmounts.map {
    "$\($0)"
}

//:Let's do something a little more interesting using `float` and formatted strings

let moneyAmountFloats = [4.5,2,1.25,5.5]

moneyAmountFloats.map {
    String(format: "$%.2f", $0)
}


/*:
## Asynchronous methods
****
A method that is called and sends a value after some period of time while the program continues executing.

Closures will be seen often when we make an asynchronous method call.  The closure is called when the method completes its task.
*/

//: In this example we have a method which does some task in the background, waiting until completion to call the completion function.  Note `the -> Void` which states that the completion function returns nothing, this is required for the compiler to know we are dealing with a function.
func performAsyncTask(completion: (result: String) -> Void){
    //this should have some kind of delay, like a web call, but that is difficult to show in the Playground
    completion(result: "Task finished")
}

//:We then call the method with an inline closure.  The code inside of the closure is not executed until the task completes.

performAsyncTask { (result: String) -> Void in
    let message = result
}


//: [Next](@next)
