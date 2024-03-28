struct SwiftBank {
  private let password: String
  
  // initiator with password setup
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

  private var balance: Double = 0 {
    willSet(newBalance) { // property observer on var balance
      if newBalance < 100 {
        displayLowBalanceMessage()
      }
    }
  }

  private func displayLowBalanceMessage() {
    print("Alert: Your balance is under $100")
  }

  // type property
  static let depositBonusRate: Double = 0.05
  private var alreadyGotABonus: Bool = false

  mutating private func isFinalDepositWithBonus(fromInitialDeposit deposit: Double) -> Double {
    if deposit >= 1000 && !alreadyGotABonus {
      let bonus: Double = deposit * SwiftBank.depositBonusRate
      print("Congratulations! You got $\(bonus) deposit bonus at \(SwiftBank.depositBonusRate * 100)% rate")
      alreadyGotABonus = true
      return deposit + bonus
    } else {
      return deposit
    }
  }
}

// ------ main method ------ //
extension SwiftBank {
  // deposit method (mutate var balance)
  mutating func makeDeposit(ofAmount depositAmount: Double) {
    let depositWithBonus = isFinalDepositWithBonus(fromInitialDeposit: depositAmount)
    print("Making a deposit of $\(depositWithBonus).\n") 
    balance += depositWithBonus
  }

  // show balance method
  func displayBalance(usingPassword password: String) {
    if isValid(password) {
      print("Your current balance is $\(balance)\n")
    } else {
      print("Error: Invalid password. Cannot retrieve balance.\n")
      return
    }
  }

  // withdrawal method (mutate var balance)
  mutating func makeWithdrawal(ofAmount withdrawalAmount: Double, usingPassword password: String) {
    if isValid(password) {
      balance -= withdrawalAmount
      print("Making a $\(withdrawalAmount) withdrawal.\n")
    } else {
      print("Error: Invalid password. Cannot make withdrawal.\n")
      return
    }
  }
}

var myAccount = SwiftBank(password: "1234pass", initiaDeposit: 500)
myAccount.makeDeposit(ofAmount: 50)
myAccount.makeWithdrawal(ofAmount: 100, usingPassword: "1234pass")
myAccount.displayBalance(usingPassword: "1234pass")
myAccount.makeDeposit(ofAmount: 1000)
myAccount.makeDeposit(ofAmount: 1000)
myAccount.displayBalance(usingPassword: "1234pass")
