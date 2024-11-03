import Foundation

// Tuple pattern matches values in a tuple.
let point = (x: 10, y: 20)

switch point {
case (let x, let y):
    print("Point coordinates: (\(x), \(y))") // Will print "Point coordinates: (10, 20)"
}
