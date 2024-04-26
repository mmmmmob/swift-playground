/*
  The player completed level 20 and found two magical items with base values of 3 and 5. To calculate the energy points earned by the player, we need to find all the unique multiples of these base values that are less than level 20.
  
    - Multiples of 3 less than 20 : 
		{3, 6, 9, 12, 15, 18}
    - Multiples of 5 less than 20 : 
    {5, 10, 15}
    - Combine the sets and remove duplicates :
    {3, 5, 6, 9, 10, 12, 15, 18}
    - Sum the unique multiples : 
    3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 = 78

  Therefore, the player earns `78` energy points for completing level `20` and finding the two magical items with `base values of 3 and 5.
*/

func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
    // Create a set for numbers less than x multiple values -> according to the count of inMultiples members (set members can't be duplicate)
    // use guard to detect unsatisfied case
    // Sum all numbers and return values
    var setNumber: Set<Int> = []
    guard !inMultiples.isEmpty else { return 0 }
    for i in 0...inMultiples.count - 1 {
      guard inMultiples[i] <= limit else { continue }
      for j in inMultiples[i]...limit {
        if limit > j && j.isMultiple(of: inMultiples[i]) {
          setNumber.insert(j)
        }
      }
    }
        
    var result = 0
    for num in setNumber {
        result += num
    }
    return result
}

print(toLimit(10_000, inMultiples: [43, 47])) // 2_203_160
print(toLimit(20, inMultiples: [3, 5])) // 78
print(toLimit(10_000, inMultiples: [2, 3, 5, 7, 11])) // 39_614_537
print(toLimit(1, inMultiples: [3, 5])) // 0
print(toLimit(4, inMultiples: [3 ,5])) // 3
print(toLimit(10_000, inMultiples: [])) // 0
