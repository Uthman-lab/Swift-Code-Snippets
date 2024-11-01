import Foundation

// Expression pattern can match computed values.
let number = 5

switch number {
case let x where x % 2 == 0:
    print("\(x) is even")
case let x where x % 2 != 0:
    print("\(x) is odd") // Will print "5 is odd"
}
