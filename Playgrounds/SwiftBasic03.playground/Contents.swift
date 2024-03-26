// If-Else Statement
func loveCalculator() {
    let loveScore = Int.random(in: 0...100)
    if loveScore > 80 {
        print("You love each other like Kanye loves Kanye")
    } else if loveScore >= 40 && loveScore <= 80 {
        print("You go together like Coke and Mentos")
    } else {
        print("You'll be forever alone")
    }
}

loveCalculator()

// The Leap Year Problem
    // The year is exactly divisible by four (with no reminder) then it is a leap year, unless:
    // If the year is also divisible by 100 (years ending in two zeros), then it is not a leap year, except if
    // It is also divisible by 400 (in this case it will be a leap year).

func isLeap(year: Int) {
    var case1 = year % 4
    var case2 = year % 100
    var case3 = year % 400

    if case1 == 0 && case2 != 0 {
        print("YES")
    } else if case2 == 0 && case3 == 0 {
        print("YES")
    } else {
        print("NO")
    }
}

isLeap(year: 1300)

// Switch Statement

func loveCalculatorSwitch() {
    let loveScore = Int.random(in: 0...100)

    switch loveScore {
    case 81...100:
        print("You love each other like Kanye loves Kanye")
    case 40..<81:
        print("You go together like Coke and Mentos")
    case ...40:
        print("You'll be forever alone")
    default:
        print("There's some error in loveScore")
    }
}

loveCalculatorSwitch()

// Switch for the Day
func dayOfTheWeek(day: Int) {
    switch day {
    case 1:
        print("Monday")
    case 2:
        print("Tuesday")
    case 3:
        print("Wednesday")
    case 4:
        print("Thursday")
    case 5:
        print("Friday")
    case 6:
        print("Saturday")
    case 7:
        print("Sunday")
    default:
        print("Error")
    }
}

dayOfTheWeek(day: 3)
