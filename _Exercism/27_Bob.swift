/*
  Your task is to determine what Bob will reply to someone when they say something to him or ask him a question.
  Bob only ever answers one of five things:
    - "Sure." This is his response if you ask him a question, such as "How are you?" The convention used for questions is that it ends with a question mark.
    - "Whoa, chill out!" This is his answer if you YELL AT HIM. The convention used for yelling is ALL CAPITAL LETTERS.
    - "Calm down, I know what I'm doing!" This is what he says if you yell a question at him.
    - "Fine. Be that way!" This is how he responds to silence. The convention used for silence is nothing, or various combinations of whitespace characters.
    - "Whatever." This is what he answers to anything else.
*/
import Foundation

class Bob {
  static func response(_ message: String) -> String {
    // filter out whitespaces and symbols for next steps
    let truncateAllSpace: String = message.filter{!$0.isWhitespace}
    let truncateSymbol: String = truncateAllSpace.filter{!$0.isPunctuation}.filter{!$0.isSymbol}.filter{!$0.isNumber}

    // check if all character is uppercase or not with filter method
    let checkUppercased: String = truncateSymbol.filter{$0.isUppercase}
    var isUppercase: Bool = false

    if checkUppercased == truncateSymbol {
      isUppercase = true
    }

    // return string by each case
    if truncateAllSpace.count == 0 { return "Fine. Be that way!"}
    else if isUppercase && checkUppercased.count != 0 && truncateAllSpace.last == "?" { return "Calm down, I know what I'm doing!" }
    else if truncateAllSpace.last == "?" { return "Sure."} 
    else if isUppercase && checkUppercased.count != 0 { return "Whoa, chill out!" }
    else { return "Whatever." }
  }
}

print(Bob.response("WATCH OUT!")) // Whoa, chill out!
print(Bob.response("WHAT'S GOING ON?")) // Calm down, I know what I'm doing.
print(Bob.response("1, 2, 3 GO!")) // Whoa, chill out!
print(Bob.response("ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!")) // Whoa, chill out!
print(Bob.response("          ")) // Fine. Be that way!
print(Bob.response("Okay if like my  spacebar  quite a bit?   ")) // Sure.
print(Bob.response("It's OK if you don't want to go work for NASA.")) // Whatever.
print(Bob.response("Wait! Hang on. Are you going to be OK?")) // Sure.
print(Bob.response(":) ?")) // Sure.
