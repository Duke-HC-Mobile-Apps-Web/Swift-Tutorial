/*:
# Types
****
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/

import Foundation

/*:
## Bool
****
*/

var myBool = true
var myNotBool = !myBool                 //reverse logic with the ! operator
var andLogic = myBool && myNotBool      //&& is true if both operands are true
var orLogic = myBool || myNotBool       //|| is true if either operand is true

/*:
## Int
****
*/

var myNum = 30                          //easy enough
var minNum = Int.min
var maxNum = Int.max

var howBigAreInts = pow(2.0, 64.0) / 2  //So an Int is 64-bit signed.  Swift picked this automatically since we are targeting 64-bit devices.

var my32Bit = Int32.max                 //32-bit, 16-bit, 8-bit offered for compatability

/*:
## Double
****
A `Double` represents a floating point number to a precision of about 15 decimal places.
*/

var myDouble = M_PI                     //Sidenote, most Math shortcuts are found by typing 'M_' (foundation.framework must be imported)

//: We can go back and forth from Ints to Doubles as needed

var myInt = Int(myDouble)

//: But precision is lost

var backToDouble = Double(myInt)

/*:
Try it: Using knowledge of operators and types, only print out the statement below if `aNum` is even and between 500 and 1000.
*/

var aNum = 550

if (aNum >= 500 && aNum <= 1000 && aNum % 2 == 0){
    print(aNum)
}


/*:
****
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/
