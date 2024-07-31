import Cocoa

// Encapsulation
class BankAccount {
    private var balance: Double = 0.0  // Private data member

    public var nih: String = "hahah"
    // Public method to deposit money
    public func deposit(amount: Double) {
        if amount > 0 {
            balance += amount
        }
    }

    // Public method to withdraw money
    public func withdraw(amount: Double) -> Bool {
        if amount > 0 && amount <= balance {
            balance -= amount
            return true
        } else {
            return false
        }
    }

    // Public method to get the current balance
    public func getBalance() -> Double {
        return balance
    }
}

let bank = BankAccount()
print(bank.nih)

