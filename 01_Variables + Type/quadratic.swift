let a: Double = 2
let b: Double = 5
let c: Double = 3

var root1: Double = (b*b) - 4*a*c
root1 = root1.squareRoot()
root1 = (-1 * b) + root1
root1 = root1 / (2*a)
print("Root 1 is \(root1)")

var root2: Double = (b*b) - 4*a*c
root2 = root2.squareRoot()
root2 = (-1 * b) - root2
root2 = root2 / (2*a)
print("Root 2 is \(root2)")
