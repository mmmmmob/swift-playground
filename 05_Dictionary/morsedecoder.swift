var englishText = "This is a secret message. How are you!"
var secretMessage = ".... . .-.. .-.. --- .-.-.- / - .... .. ... / .. ... / -.-- --- ..- .-. / -.-. .- .--. - .- .. -. / ... .--. . .- -.- .. -. --. .-.-.-"

// ----Encode normal message into morse code with dictionary---- //
var letterToMorse: [String : String] = [
  "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--..",
  ".": ".-.-.-",
  "?": "..--..",
  ",": "--..--",
  "!": "-.-.--"
]

var morseText: String = ""

for element in englishText.lowercased() {
  if let morseChar = letterToMorse["\(element)"] {
    morseText += "\(morseChar) "
  } else {
    morseText += "   "
  }
}

print(morseText)

// ----Decode morse code into normal phrase----//
// ----Seperate morse code string into indiv. array member---- //

var morseCodeArray: [String] = []
var currMorse: String = ""

for char in secretMessage {
  if char != " " {
    currMorse.append(char)
  } else {
    switch currMorse {
    case "":
      currMorse += " "
    case " ":
      morseCodeArray.append(" ")
      currMorse = ""
    default:
      morseCodeArray.append(currMorse)
      currMorse = ""
    }
  }
}

morseCodeArray.append(currMorse)
print(morseCodeArray)

// -------Decoding a morse message with new Eng -> Morse dictionary-------- //

var decodedMessage: String = ""

var morseToLetter = [String: String]()

for (letter, morseChar) in letterToMorse {
  morseToLetter[morseChar] = letter
}

// ----If - let to decode phrases---- //

for morseValue in morseCodeArray {
  if let letterChar = morseToLetter[morseValue] {
    decodedMessage += letterChar
  }
  else {
    decodedMessage += " "
  }
}

print(decodedMessage)