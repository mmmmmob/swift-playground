// Create a loop that iterates from 1 to 10 that prints out whether the current number in the iteration is even or odd.
for num: Int in 1...10 {
  if num % 2 == 0 {
    print("\(num) is even")
  } else {
    print("\(num) is odd")
  }
}

print("\n")

// Loop through a string and count how many characters are in it. 

let phrase = "The quick brown fox jump over the lazy dog"
var numOfChar = 0

for char in phrase {
  if char == " " {
    continue
  } else {
      numOfChar += 1
  }
}

print("Phrase has \(numOfChar) characters")

print("\n")

// Create stars in stair pattern using loops:

var stars: String = ""
var charStars: Int = 1

while charStars < 5 {
  stars += "*"
  charStars += 1
  print(stars)
}