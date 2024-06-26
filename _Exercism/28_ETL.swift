/*
  Your task is to change the data format of letters and their point values in the game.
  Currently, letters are stored in groups based on their score, in a one-to-many mapping.
    1 point: "A", "E", "I", "O", "U", "L", "N", "R", "S", "T",
    2 points: "D", "G",
    3 points: "B", "C", "M", "P",
    4 points: "F", "H", "V", "W", "Y",
    5 points: "K",
    8 points: "J", "X",
    10 points: "Q", "Z",
  This needs to be changed to store each individual letter with its score in a one-to-one mapping.
    "a" is worth 1 point.
    "b" is worth 3 points.
    "c" is worth 3 points.
    "d" is worth 2 points.
    etc.
  As part of this change, the team has also decided to change the letters to be lower-case rather than upper-case.
*/

class ETL {
  static func transform(_ old: [String: [String]]) -> [String: Int] {
    var result: [String: Int] = [:]
    
    for (score, alphabet) in old {
      let newScore = Int(score)
      for each in alphabet {
        let newAlphabet = each.lowercased()
        result.updateValue(newScore!, forKey: newAlphabet)
      }
    }

    return result
  }
}

print(ETL.transform(["1": ["A", "E"], "2": ["D", "G"]])) // ["a": 1, "d": 2, "e": 1, "g": 2]
print(ETL.transform(["1": ["A", "E", "I", "O", "U"]])) // ["a": 1, "e": 1, "i": 1, "o": 1, "u": 1]
print(ETL.transform(["1": ["A"]])) // ["a": 1]