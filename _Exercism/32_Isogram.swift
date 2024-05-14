/*
  Determine if a word or phrase is an isogram.

  An isogram (also known as a "non-pattern word") is a word or phrase without a repeating letter, however spaces and hyphens are allowed to appear multiple times.

  Examples of isograms:
    lumberjacks
    background
    downstream
    six-year-old

  The word isograms, however, is not an isogram, because the s repeats.
*/
import Foundation

func isIsogram(_ string: String) -> Bool {
  var result: Bool = true

  if string.count == 0 {
    return result
  } else {
    for i in 0...string.count - 1 {
      var string = string.lowercased()
      let index = string.index(string.startIndex, offsetBy: i)

      if string[index] == " " || string[index] == "-" { continue }

      let checkString = string.remove(at: index)
      if string.contains(checkString) {
        result = false
      }
    }
  }
  return result
}

print(isIsogram("isograms")) // false
print(isIsogram("thumbscrew-japingly")) // true
print(isIsogram("Emily Jung Schwartzkopf")) // true
print(isIsogram("up-to-date")) // false
print(isIsogram("six-year-old")) // true
