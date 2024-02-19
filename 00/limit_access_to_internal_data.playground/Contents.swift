import UIKit

/*
 Swift provides us with several options, but when you’re learning you’ll only need a handful:

 Use private for “don’t let anything outside the struct use this.”
 Use fileprivate for “don’t let anything outside the current file use this.”
 Use public for “let anyone, anywhere use this.”
 Another Option:
 Use private(set). This means “let anyone read this property, but only let my methods write it.”
 */

struct  BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amout: Int) -> Bool {
        if funds > amout {
            funds -= amout
            return (true)
        } else {
            return (false)
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)

let success = account.withdraw(amout: 200)
if success {
    print("Withdraw Money Successfully✅")
} else {
    print("Failed to get the Money ❌")
}
