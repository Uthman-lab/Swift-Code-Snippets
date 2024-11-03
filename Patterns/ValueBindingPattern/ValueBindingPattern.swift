import Foundation

// Value binding pattern with optional value
let optionalValue: Int? = 20

switch optionalValue {
case let value?:
    print("Unwrapped value: \(value)") // Will print "Unwrapped value: 20"
case nil:
    print("Value is nil")
}
