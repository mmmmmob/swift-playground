struct SwiftBank {
  private let password: String
  
  init(password: String, initiaDeposit: Double) {
    self.password = password
    makeDeposit(ofAmount: initiaDeposit)
  }

  // helper method to check password from user's input
  private func isValid(_ enteredPassword: String) -> Bool {
    if enteredPassword == password {
      return true
    } else { return false }
  }

  private var balance: Double = 0

  // type property
  static let depositBonusRate = 0.01

  private func finalDepositWithBonus(fromInitialDeposit deposit: Double) -> Double {
    return deposit += deposit * SwiftBank.depositBonusRate
  }

  // main method mutate var balance
  mutating func makeDeposit(ofAmount depositAmount: Double) {
    let depositWithBonus = finalDepositWithBonus(fromInitialDeposit: depositAmount)
    print("Making a deposit of $\(depositAmount) with a bonus rate of \(SwiftBank.depositBonusRate). The final amount deposited is $\(depositWithBonus)")
    balance += depositWithBonus
  }

  // login method
  func displayBalance(usingPassword password: String) {
    if isValid(password) {
      print("Your current balance is $\(balance)")
    } else {
      print("Error: Invalid password. Cannot retrieve balance.")
      return
    }
  }
}
