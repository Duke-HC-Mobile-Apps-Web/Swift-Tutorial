/*:
# Collections
****
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/
import Foundation
/*:
## Arrays
****
An ordered collection of items.
*/

var myArray = ["One","Two","Three"]

//: We access array elements using methods, properties, or subscripts ([index])

let firstItemWay1 = myArray[0]
let firstItemWay2 = myArray.first

let numElements = myArray.count

myArray.removeLast()

print(myArray)

myArray.removeFirst()

print(myArray)

myArray.removeAtIndex(0)

print(myArray)

let arrayEmpty = myArray.isEmpty

/*: 
Arrays need to know what type they store.

When creating an empty array, the type should be specified.
*/

//uncomment to see warning
//var ambiguousArray = ()
var intArray = [Int]()

intArray.insert(2, atIndex: 0)
intArray.insert(4, atIndex: 1)
intArray.insert(1, atIndex: 0)
intArray.insert(3, atIndex: 2)


//:Arrays can be iterated over using a for-in loop

for num in intArray{
    print(num)
}

/*:
## Dictionaries
****
An unordered collection of key value pairs.  Same as a `Map` in Java
*/

var myDog = ["name":"Winston","species":"golden retriever","age":"twelve"]

//:Retrieve values with subscripts ([key])
let dogName = myDog["name"]

myDog.removeValueForKey("age")

//:Update values with subscripts ([key]) or the `updateValue` method

myDog["age"] = "thirteen"

myDog.updateValue("fourteen", forKey: "age")            //Note that this returns the old value

myDog

//: Dictionaries entries can be iterated over using a for-in loop.  Each entry is a 2 item collection (key, value).

for pair in myDog{
    print(pair)                 //print the pair
    print(pair.1)               //only print the value
}
/*:
****
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/
