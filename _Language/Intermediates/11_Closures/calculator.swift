struct Calculator {
  // reduce method
  func reduce(nums: [Int], using nextPartialResult: (Int, Int) -> Int, startingAt initialResult: Int) -> Int {
    var total = initialResult
    for num in nums {
      total = nextPartialResult(total, num)
    }
    return total
  }

  // filter method
  func filter(nums: [Int], using isIncluded: (Int) -> Bool) -> [Int] {
    var filteredNum = [Int]()
    for num in nums {
      if isIncluded(num) { 
        filteredNum.append(num)
      }
    }
    return filteredNum
  }

  // map method
  func map(nums: [Int], using transform: (Int) -> Int) -> [Int] {
    var mappedNums = [Int]()
    for num in nums {
      mappedNums.append(transform(num))
    }
    return mappedNums
  }
}

// create an instance from Calculator struct
let calc = Calculator()

// create a closure to use in reduce method [see below] (same in-out pattern checked)
let addition: (Int, Int) -> Int = { (num1, num2) in num1 + num2 }
let nums = [1,2,3,4,5]
let sum = calc.reduce(nums: nums, using: addition, startingAt: 0)
print(sum)

// another closure to use in filter method
let nums2 = [0,2,4,5,6,7]
let filter = calc.filter(nums: nums2, using: { num in num != 0 })
print(filter)

// closure with $ as argument placeholder
let nums3 = [3,5,7,9,11]
let map = calc.map(nums: nums3, using: {$0 + 30})
print(map)
