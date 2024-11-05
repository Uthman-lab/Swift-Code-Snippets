# Generics

`Generics` in Swift are a powerful feature that allow you to write flexible, reusable code by enabling functions, types, and data structures to work with any type. They provide a way to write code that is type-safe but can operate on a variety of data types without duplicating code.

## Problems Generics solve

Generics solve several core programming problems, especially around code reusability, type safety, and flexibility. Here’s a closer look at the key problems generics address:

1. Code Duplication
Without generics, you often need to write the same function or data structure multiple times to handle different types. For example, you might need separate Int, String, and Double versions of the same function. Generics let you write a single, reusable function or type that works with any specified type, cutting down on redundant code.

Without Generics:
```swift
func printIntArray(_ array: [Int]) { /* implementation */ }
func printStringArray(_ array: [String]) { /* implementation */ }
```
With Generics:
```swift
func printArray<T>(_ array: [T]) { /* implementation */ }
```
Generics reduce redundancy by allowing T to stand for any type, which helps keep code maintainable and concise.

2. Type Safety
Generics enable compile-time type checking, ensuring only compatible types are used in generic code. This means more errors are caught at compile time, preventing type-related runtime crashes and making the code more robust.

Example:

```swift
func add<T>(_ a: T, _ b: T) -> T where T: Numeric {
    return a + b
}
```
Here, add can only be called with types that conform to the Numeric protocol, such as Int or Double, ensuring that incompatible types (like String) cause compile-time errors.

3. Improving Flexibility and Abstraction
Generics make it easier to write flexible code that can work with multiple types and still be type-safe. This enables developers to build robust abstractions that adapt to different needs without compromising type safety.

Example: The Swift standard library’s Array type is generic, allowing you to create Array<Int>, Array<String>, or even Array<CustomType>, all with the same functionality.

swift
Copy code
let intArray: Array<Int> = [1, 2, 3]
let stringArray: Array<String> = ["Hello", "World"]
Both intArray and stringArray are arrays, but they enforce type consistency without needing separate implementations for each type.

## Topics covered:
- ### [Generic Functions]()
  - [Type Constraints on Generic functions](#associated-type)
  - [Where cluase on Generic Functions]()
- ### [Generic Types]()
  - [Type Constraints on Generic Types]()
  - [where cluase on Generic Types]()
- ### [Associated type]()
