/*
  Your task is to convert a number into its corresponding raindrop sounds.

  If a given number:
    is divisible by 3, add "Pling" to the result.
    is divisible by 5, add "Plang" to the result.
    is divisible by 7, add "Plong" to the result.
    is not divisible by 3, 5, or 7, the result should be the number as a string.
*/

func raindrops(_ number: Int) -> String {
    var result = ""

    if number.isMultiple(of: 3) {
        result += "Pling"
    }
    if number.isMultiple(of: 5) {
        result += "Plang"
    }
    if number.isMultiple(of: 7) {
        result += "Plong"
    }

    return result.isEmpty ? String(number) : result
}

print(raindrops(3)) // "Pling"
print(raindrops(35)) // "PlangPlong"
print(raindrops(52)) // "52"
print(raindrops(15)) // "PlingPlang"
print(raindrops(105)) // "PlingPlongPlang"