import UIKit

// MARK: - Defining a Class Hierarchy for Type Casting

class Animal {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Mammal: Animal {
    var isWarmBlooded = true
}

class Bird: Animal {
    var canFly = true
}

class Dog: Mammal {
    var breed: String
    init(name: String, breed: String) {
        self.breed = breed
        super.init(name: name)
    }
}

// MARK: - Checking Type

/// You can use the [is] operator to check the type of an instance
///
/// The [is] operator checks the types of an instance but does not cast it
/// It returns a boolean value
func checkType(animal: Animal) {
    if animal is Dog {
        print("\(animal.name) is a Dog.")
    } else if animal is Mammal {
        print("\(animal.name) is a Mammal.")
    }
}

// MARK: - Downcasting

/// You can use as? or as! for downcasting to a subclass.
///
/// [as?] is the conditional form of casting and returns nil if the casting fails
/// [as!] is the forced form of casting and it triggers a runtime error if casting fails
func castAnimals(animal: Animal) {
    if let dog = animal as? Dog {
        print("This is a dog named \(dog.name) of breed \(dog.breed).")
    } else if let mammal = animal as? Mammal {
        print("\(mammal.name) is a Mammal.")
    } else {
        print("\(animal.name) is an Animal.")
    }
}

// MARK: - Type Casting for Any and AnyObject

/// Any can represent any type, while AnyObject can represent any class type.
///
func castAnyType(object: Any) {
    switch object {
    case let string as String:
        print("Found a String: \(string)")
    case let number as Int:
        print("Found an Int: \(number)")
    case let double as Double:
        print("Found a Double: \(double)")
    case let dog as Dog:
        print("Found a Dog named \(dog.name) of breed \(dog.breed)")
    default:
        print("Unknown type")
    }
}

// MARK: - Usage

let dog = Dog(name: "Johny", breed: "Bull")
let mammal = Mammal(name: "Lion")
let object = "Object"

/// Type checking
checkType(animal: dog)
checkType(animal: mammal)

/// casting class types
castAnimals(animal: dog)
castAnimals(animal: mammal)

/// casting any types
castAnyType(object: dog)
castAnyType(object: mammal)
castAnyType(object: object)

