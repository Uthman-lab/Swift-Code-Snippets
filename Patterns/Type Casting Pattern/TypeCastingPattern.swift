import Foundation

class Animal {}
class Dog: Animal {
    func bark() {
        print("Woof!")
    }
}

let animal: Animal = Dog()

switch animal {
case let dog as Dog:
    dog.bark() // Will print "Woof!"
default:
    print("Not a dog")
}
