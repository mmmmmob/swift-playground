var list = [2, 4, 3, 6, 1, 9]

var sumEven: Int = 0
var productOdd: Int = 1

for num in list {
  if num % 2 == 0 {
    sumEven += num
  } else {
    productOdd *= num
  }
}

print("Sum of even numbers is \(sumEven)")
print("Product of odd numbers is \(productOdd)")
