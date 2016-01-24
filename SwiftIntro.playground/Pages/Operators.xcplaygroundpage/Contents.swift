/*:
# Operators
****
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/

/*:
## Arithmetic
****
Arithmetic operators in Swift are similar to those used in most other programming languages
*/

let a = 1 + 2       //addition
let b = 5 - 3       //subtraction
let c = 2 * 3       //multiplication
let d = 10.0 / 2.5  //division

let e = 9 % 4       //modulo (remainder)

/*:
More advanced operations and values lie within the Foundation framework.

By convention these import statements appear at the top of .swift files.
*/

import Foundation

let p = pow(2.0, 4.0)

/*:
Note how the operators are defined for the operations above using Quick Help

Say we wanted to define a new operator ^^ to call the pow function above.
*/

infix operator ^^ { }
func ^^ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}

let po = 2 ^^ 4


/*:
## Incrementing and Decrementing
****
Incrementing and decrementing looks similar to other languages, with an important difference
*/

var f = 1

++f                 //Increment operation, add 1 to f and assign the result back to f
--f                 //Decrement operation

let g = --f         //This is expected

let h = f--         //This is not, as f was already equal to 0 and we decremented again

print(f)            //When we print the value of f, we see it is -1. What's going on?

let i = f--         //When the increment or decrement operation follows the variable, the value is returned before the operation happens.

/*:
## Unary Minus and Plus
****
*/

var j = 5
j = -j              //A unary `-` is used to toggle the sign
j = +j              //The unary `+` never changes the result, it is used for code symmetry


/*:
## Compound Assignment
****
You'll recognize this from C and Java
*/

var k = 5
k += 3              //Add 3 to k, and assign the result back to k

/*:
## Comparison
****
*/

1 == 1              //Test equality
2 != 1              //Test not equal
2 > 1               //Test greater than
1 < 2               //Test less than
1 >= 1              //Test greater than or equal to
2 <= 1              //Test less than or equal to

//used in an if statement
if (2 < 3){
    print("2 is less than 3")
}


/*:
## Range
****
*/

let m = 1...5       //Take the range 1 to 5 inclusive (closed)
let n = 1..<5       //Take the range 1 to 5 excluding the 5 (half open)

//used in a for loop
for index in m{
    print(index)    //This is called once for each number in range m, where index is the number
    //The box above shows the history of the index variable
}

/*:
Try it:

Call the method `callMeX100` 100 times, passing Ints 0 through 99.
*/

let verifier = OperatorsVerifier()

verifier.callMeX100(0)



/*:
****
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/
