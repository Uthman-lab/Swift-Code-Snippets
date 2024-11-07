import UIKit

// MARK: - Extension Syntax

// Extensions in Swift allow you to add new functionality to an existing
// class, struct, enum, or protocol without modifying the original source code.
// You can add methods, computed properties, initializers, and more.

extension Int {
    func squared() -> Int {
        return self * self
    }
}

// MARK: - Computed Properties

// Computed properties are properties that do not store a value directly.
// Instead, they provide a getter and an optional setter to indirectly
// retrieve and set other properties or values.

extension Double {
    var toKilometers: Double {
        return self * 1.60934
    }
}

// MARK: - Initializers

// Extensions can add new initializers to an existing type,
// allowing you to create instances in a new way.
// Note that extensions cannot add designated initializers to classes.

struct Point {
    var x = 0.0
    var y = 0.0
}

extension Point {
    init(value: Double) {
        self.x = value
        self.y = value
    }
}

// MARK: - Methods and Mutating Instance Methods

// Extensions can add new instance methods and mutating methods to structs and enums.
// A mutating method can modify the properties of the instance it belongs to.

extension String {
    mutating func appendExclamation() {
        self += "!"
    }
}

// MARK: - Subscripts

// Extensions can add subscripts to existing types. Subscripts allow you to access
// elements within a collection, list, or sequence by using square bracket syntax.

extension Array {
    subscript(safe index: Int) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

// MARK: - Nested Types

// Extensions can add nested types within an existing type.
// Nested types are useful for grouping related types together.

struct Vehicle {
    var type = "Car"
}

extension Vehicle {
    enum Category {
        case sedan, suv, truck
    }
}

