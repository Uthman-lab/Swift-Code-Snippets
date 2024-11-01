import Foundation

// Identifier pattern matches and binds the value to a variable.
let value = 10

switch value {
case let x:
    print("Matched value: \(x)") // Will print "Matched value: 10"
}
