/*
  Your task is to convert a number into its corresponding raindrop sounds.

  If a given number:
    is divisible by 3, add "Pling" to the result.
    is divisible by 5, add "Plang" to the result.
    is divisible by 7, add "Plong" to the result.
    is not divisible by 3, 5, or 7, the result should be the number as a string.

  Examples
    28 is divisible by 7, but not 3 or 5, so the result would be "Plong".
    30 is divisible by 3 and 5, but not 7, so the result would be "PlingPlang".
    34 is not divisible by 3, 5, or 7, so the result would be "34".
*/

func raindrops(_ number: Int) -> String {
  // Write your code for the 'Raindrops' exercise in this file.
}

print(raindrops(3)) // "Pling"
print(raindrops(35)) // "PlangPlong"
print(raindrops(52)) // "52"
print(raindrops(15)) // "PlingPlang"
print(raindrops(105)) // "PlingPlongPlang"