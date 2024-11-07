import UIKit

// MARK: - Adopting Common Protocols

// In Swift, adopting common protocols like Equatable, Hashable,
// and Comparable allows types to conform to a standard interface,
// enabling them to participate in operations such as comparisons,
// hashing, and collections (e.g., being keys in dictionaries).

struct Point: Equatable, Hashable {
    var x: Int
    var y: Int
}

// MARK: - Conform Automatically to Equatable and Hashable

// Swift provides automatic conformance to Equatable and
// Hashable for types whose stored properties also conform to
// these protocols. This means that you don't need to write custom
// logic for equality checks or hash value generation.

struct Car: Equatable, Hashable {
    var make: String
    var model: String
    var year: Int
}

// The compiler generates the `==` operator and `hash(into:)` method automatically.
let car1 = Car(make: "Toyota", model: "Corolla", year: 2022)
let car2 = Car(make: "Toyota", model: "Corolla", year: 2022)
print(car1 == car2)  // Output: true

// MARK: - Conform Manually to Equatable and Hashable

// When more control over equality or hashing behavior is needed, you can conform
// manually by providing custom implementations of the == operator and the hash(into:) method.

struct Person: Equatable, Hashable {
    var name: String
    var age: Int
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(age)
    }
}

// MARK: - Use All Significant Properties for Equatable and Hashable

// When conforming to Equatable and Hashable, you should ensure that all
// properties that contribute to the identity of the instance are included
// in your == operator and hash(into:) method to maintain consistency and correctness.

struct Book: Equatable, Hashable {
    var title: String
    var author: String
    var publicationYear: Int
    
    static func == (lhs: Book, rhs: Book) -> Bool {
        return lhs.title == rhs.title && lhs.author == rhs.author && lhs.publicationYear == rhs.publicationYear
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
        hasher.combine(author)
        hasher.combine(publicationYear)
    }
}

// MARK: - Customize NSObject Subclass Behavior

// Classes that inherit from NSObject can override methods like isEqual(_:)
// and hash to customize how equality and hashing work. This is often used when
// bridging with Objective-C or when adding custom behavior to NSObject subclasses.
