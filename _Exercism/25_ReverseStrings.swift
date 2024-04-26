/*
  Your task is to reverse a given string.
  Some examples:
    Turn "stressed" into "desserts".
    Turn "strops" into "sports".
    Turn "racecar" into "racecar".
*/

func reverseString(_ word: String) -> String {
  return String(word.reversed())
}

print(reverseString(""))
print(reverseString("robot"))
print(reverseString("I'm hungry!"))
