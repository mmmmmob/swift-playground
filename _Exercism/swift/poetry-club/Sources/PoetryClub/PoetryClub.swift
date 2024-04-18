import Foundation

// split a string into individual lines
func splitOnNewlines(_ poem: String) -> [String] {
  let split = poem.components(separatedBy: "\n")
  return split
}

// get the first letter of sentence
func firstLetter(_ line: String) -> Character {
  let firstLetter = line.first
  return firstLetter ?? "_"
}

// capitalize a word
func capitalize(_ phrase: String) -> String {
  let firstLetter = phrase.first
  let capsFirstLetter = firstLetter?.uppercased()
  let remainingLetters = phrase.dropFirst()

  var capsRemainingLetters = ""

  for letter in remainingLetters {
    capsRemainingLetters.append(letter.lowercased())
  }

  return capsFirstLetter! + capsRemainingLetters
}

// trim a sentence
func trimSentence(_ line: String) -> String {
  var trimmed = ""
  for letter in line {
    if letter == " " {
      continue
    }
    trimmed.append(letter)
  }
  return trimmed
}

// get the last letter of a sentence
func lastLetter(_ line: String) -> Character {
  let lastLetter = line.last
  return lastLetter ?? "_"
}

// be polite with ', please' insertion after a word
func backDoorPassword(_ phrase: String) -> String {
  return capitalize(phrase) + ", please"
}

// get the i letter of a  sentence
func ithLetter(_ line: String, i: Int) -> Character { 
  if i > line.count {
    return " "
  } else {
    let index = line.index(line.startIndex, offsetBy: i)
    return line[index]
  }
}

// shout the answer with capital letters
func secretRoomPassword(_ phrase: String) -> String {
  return phrase.uppercased() + "!"
}
