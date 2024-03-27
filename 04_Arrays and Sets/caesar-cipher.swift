let alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

var secretMessage: String = "Cipher"

var message = Array(secretMessage.lowercased())

for i: Int in 0..<message.count {
  for j: Int in 0..<alphabet.count {
    if message[i] == alphabet[j] {
      // just in case the j is > 23
      message[i] = alphabet[(j+3) % 26]
      break
    }
  }
}

print(String(message))