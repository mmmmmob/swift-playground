var input: String = "The quick brown fox jump over a lazy dog"
var output: String = ""

for char in input {
  let lowerChar: String = char.lowercased()
  switch lowerChar {
  case "a", "i", "o":
    output += lowerChar.uppercased()
  case "e":
    output += "EE"
  case "u":
    output += "UU"
  default:
    continue
  }
}

print(output)
