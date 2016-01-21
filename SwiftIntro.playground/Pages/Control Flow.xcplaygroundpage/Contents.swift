/*:
# Control Flow
****
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/

/*:
## For-in
****
Used for iterating over a collection of items.
*/

let array = ["One","Two","Three"]
for item in array{
    print(item)
}

/*:
## For
****
Perform a set of statements until a condition is met.

Similarly to C and Java, contains a condition and an incrementer
*/

for (var i = 0; i < 5; ++i){            //repeat while i < 5, incrementing i by 1 each run
    print(i*3)
}

//: We can do the same using a for-in loop

for index in 0..<5{
    print(index*3)
}

//: The counter can be replaced by a '-' if not needed

for _ in 0..<5{
    print("loop")
}

/*:
## If Statement
****
Execute if true, otherwise else executes
*/

if (12 < 5){
    print("Huh?")                       //we even get a nice warning noting our stupidity
}
else{
    print("All is well")
}

var condition = false
if (condition){                         //using a variable condition makes the warning go away
    //do something
}

/*:
## Switch/case
****
Consider a value and compare it across possible values
*/

let choice = 1;

switch choice{
    case 0:
        print("Option 0")
    case 1:
        print("Option 1")
    case 2:
        print("Option 2")
    case 3:
        print("Option 3")
    default:
        print("Default option.")
}

/*:
****
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/
