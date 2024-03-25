let isPalindromeText: String = "madam"

// create an array with Array() result in Charater type inference
var text = Array(isPalindromeText)
var reversed: [Character] = []

var counter: Int = text.count - 1

// while loop
/*
while counter >= 0 {
  reversed.append(text[counter])
  counter -= 1
}
*/

// for-in with stride() loop
for _ in stride(from: counter, through: 0, by: -1) {
  reversed.append(text[counter])
  counter -= 1
}

print("Text is \(text)")
print("Reversed is \(reversed)\n")


if text == reversed {
  print("'\(isPalindromeText)' is a palindrome!")
} else {
  print("'\(isPalindromeText)' isn't a palindrome.")
}