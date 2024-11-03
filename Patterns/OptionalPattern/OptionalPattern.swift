import Foundation

// Optional pattern checks for nil or a value.
let optionalValue: String? = "Hello"

switch optionalValue {
case .some(let unwrappedValue):
    print("Unwrapped value: \(unwrappedValue)") // Will print "Unwrapped value: Hello"
case .none:
    print("Value is nil")
}
