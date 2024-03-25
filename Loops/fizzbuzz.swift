for nums: Int in 1...100 {
  if (nums % 3 == 0 && nums % 5 == 0) {
    print("FizzBuzz") 
  } else if (nums % 3 == 0) {
    print("Fizz")
  } else if (nums % 5 == 0) {
    print("Buzz")
  } else {
    print(nums)
  }
}