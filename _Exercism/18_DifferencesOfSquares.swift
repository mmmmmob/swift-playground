/*
  Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.
  
  The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)² = 55² = 3025.
  The sum of the squares of the first ten natural numbers is 1² + 2² + ... + 10² = 385.

  Hence the difference between the square of the sum of the first ten natural numbers and the sum of the squares of the first ten natural numbers is 3025 - 385 = 2640.
*/

import Foundation

class Squares {
  var num: Int

  init(_ num: Int) {
    self.num = num
  }

  var squareOfSum: Int {
    var sum = 0
    for each in 1...self.num {
      sum += each
    }
    let result = Int(pow(Double(sum), 2))
    return result
  }

  var sumOfSquares: Int {
    var sum = 0
    for each in 1...self.num {
      sum += Int(pow(Double(each), 2))
    }
    return sum
  }

  var differenceOfSquares: Int {
    return self.squareOfSum - self.sumOfSquares
  }
}

let x = Squares(10)
print(x.squareOfSum)
print(x.sumOfSquares)
print(x.differenceOfSquares)