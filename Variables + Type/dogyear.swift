func dogAge(currentAge: Int, name: String) {
  let earlyYears = 21 // First two years of dog equal to 21 human years
  let laterYears = (currentAge - 2) * 4 // Each following year counts as 4 human years.
  let humanYears: Int = earlyYears + laterYears

  print("My name is \(name)! I'm \(currentAge) years old and my age is equal to \(humanYears) human years!")
}

dogAge(currentAge: 5, name: "Daniel")
