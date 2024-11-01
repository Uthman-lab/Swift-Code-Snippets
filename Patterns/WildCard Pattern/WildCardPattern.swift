import Foundation

// Wildcard pattern (_) ignores the value being matched.
let values = [1, 2, 3, 4, 5]

for value in values {
    switch value {
    case _:
        print("Value: \(value)") // Will print each value
    }
}
