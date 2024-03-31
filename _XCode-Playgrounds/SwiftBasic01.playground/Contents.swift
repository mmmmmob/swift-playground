// String with calculation (Interpolation) [use \(___) to insert code snippets]
print("The result of 2+3 is \(2+3)!")

// Variable declaration
var testVar = 25
print(testVar)
    // Swift is a strictly type language
    // testVar = "Hello" is ❌ bc it was an int at declared time
testVar = 30
print(testVar)

    // Exercise
var a = 5
var b = 8

var c = a
a = b
b = c

print("a: \(a)")
print("b: \(b)")

// Array declaration
var nums = [45, 73, 195, 53]
var computedNumbers = [nums[0]*nums[1], nums[1]*nums[2], nums[2]*nums[3]]

print(computedNumbers)

// Constant declaration
let unmutateValue = 5
    // You cannot mutate value of a constant
    // unmutateValue = 9 ❌

// Randomisation
    // .random within x to y
let random = Int.random(in: 1...3)
print(random)
    // .random within x but not over y
let randomLess = Int.random(in: 1..<3)
print(randomLess)
    // use other type of var with random
let floatRandom = Float.random(in: 0..<1)
print(floatRandom)
    // boolean only has 2 choices so just call a function is fine
let boolRandom = Bool.random()
print(boolRandom)
    // use .randomElement on array to return one of array member randomly
let Arr = [3, 4, 5]
print(Arr.randomElement()!)
