/*
A leap year (in the Gregorian calendar) occurs:
    - In every year that is evenly divisible by 4.
    - Unless the year is evenly divisible by 100, in which case it's only a leap year if the year is also evenly divisible by 400.
Some examples:
    - 1997 was not a leap year as it's not divisible by 4.
    - 1900 was not a leap year as it's not divisible by 400.
    - 2000 was a leap year!
Your task is to determine whether a given year is a leap year.
*/

class Year {
  var year: Int

  init(calendarYear: Int) {
    self.year = calendarYear
  }

  var isLeapYear: Bool {
    var answer: Bool

    if self.year % 100 == 0 {
      switch self.year % 400 {
      case 0:
        answer = true
        break
      default:
        answer = false
        break
      }
    } else {
      if self.year % 4 == 0 {
        answer = true
      } else { answer = false }
    } 

    return answer
  }
}

let year = Year(calendarYear: 2100)
print(year.isLeapYear)
