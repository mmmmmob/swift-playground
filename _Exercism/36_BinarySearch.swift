/*
  Your task is to implement a binary search algorithm.

  A binary search algorithm finds an item in a list by repeatedly splitting it in half, only keeping the half which contains the item we're looking for.

  Here's an example:
  - Let's say we're looking for the number 23 in the following sorted list: [4, 8, 12, 16, 23, 28, 32].
  - We start by comparing 23 with the middle element, 16.
  - Since 23 is greater than 16, we can eliminate the left half of the list, leaving us with [23, 28, 32].
  - We then compare 23 with the new middle element, 28.
  - Since 23 is less than 28, we can eliminate the right half of the list: [23].
We've found our item.
*/

enum BinarySearchError: Error {
  case valueNotFound
}

class BinarySearch {

  var arrayOfInt: [Int]

  init(_ arrayOfInt: [Int]) {
    self.arrayOfInt = arrayOfInt
  }

  func searchFor(_ number: Int) throws ->  Int {

  }
}

// Make Class References //
let binarySearch1 = BinarySearch([1, 3, 4, 6, 8, 9, 11])
let binarySearch2 = BinarySearch([1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377])
let binarySearch3 = BinarySearch([1, 3, 4, 6, 8, 9, 11])

// Check Result //
// ------------ //
// try? ->  throw return in Optional value or nil
print(try? binarySearch1.searchFor(6)) // Optional(3)

// try! ->  force return value or crash if cannot return
print(try! binarySearch2.searchFor(21)) // 5

// try ->  use with do-catch conditional
do {
    let result = try binarySearch3.searchFor(7)
    print(result)
} catch {
    print(\(error))
}
