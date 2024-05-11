/*
  Calculate the number of grains of wheat on a chessboard given that the number on each square doubles.

  There once was a wise servant who saved the life of a prince. The king promised to pay whatever the servant could dream up. Knowing that the king loved chess, the servant told the king he would like to have grains of wheat. One grain on the first square of a chess board, with the number of grains doubling on each successive square.

  There are 64 squares on a chessboard (where square 1 has one grain, square 2 has two grains, and so on).

  Write code that shows:
    - how many grains were on a given square, and
    - the total number of grains on the chessboard
*/

import Foundation

// declare Error enum for throwing function
enum GrainsError: Error {
    case inputTooHigh
    case inputTooLow
  }
struct Grains {
  static func square(_ num: Int) throws -> UInt64 {
    // error handling with throw
    if num < 1 {
      throw GrainsError.inputTooLow
    } else if num > 64 {
      throw GrainsError.inputTooHigh
    }

    let result = UInt64(pow(2, Double(num - 1)))

    return result
  }

  static var total: UInt64 {
    var sum: UInt64 = 0
    for i in 1...64 {
      sum += try! Grains.square(i) // use try! because we know for the fact that there can't be error throws at us on runtime
    }
    return UInt64(sum)
  }
}

// use try every usage of throwing function
print(try(Grains.square(32))) // 2_147_483_648
print(try(Grains.square(4))) // 8
print(try(Grains.square(3))) // 4
print(try(Grains.square(16))) // 32768
//print(try(Grains.square(-1))) // error: GrainsError.inputTooLow
//print(try(Grains.square(66))) // error: GrainsError.inputTooHigh
print(Grains.total) // 18_446_744_073_709_551_615