
## Tuple Pattern

Tuple pattern matching is a powerful feature in Swift that allows you to deconstruct tuples and access their individual elements in a concise and expressive way. It's particularly useful for:

* Extracting values from functions that return tuples:**
* Matching multiple values simultaneously:**
* Improving code readability and maintainability:**

### Basic Usage

Here's a simple example of using tuple pattern matching:

```swift
let coordinates = (x: 10, y: 20)

// Matching using a tuple pattern
if case let (x, y) = coordinates {
  print("x: \(x), y: \(y)") // Output: x: 10, y: 20
}
```

In this example, we create a tuple `coordinates` with two elements. The `if case` statement uses a tuple pattern `(x, y)` to match the elements of the tuple. If the pattern matches, the values are assigned to the variables `x` and `y`.

### Matching Multiple Values

Tuple pattern matching allows you to match multiple values simultaneously:

```swift
let point = (x: 10, y: 20, z: 30)

// Matching multiple values
if case let (x, y, _) = point {
  print("x: \(x), y: \(y)") // Output: x: 10, y: 20
}
```

In this example, we use the wildcard character `_` to ignore the `z` value.

### Matching with Named Elements

You can match against named elements of a tuple:

```swift
let user = (name: "John", age: 30, location: "New York")

// Matching named elements
if case let (name: userName, age: userAge, _) = user {
  print("Name: \(userName), Age: \(userAge)") // Output: Name: John, Age: 30
}
```

In this example, we use the `name:` and `age:` labels to match specific elements of the `user` tuple.

### Using Tuple Pattern Matching in `switch` Statements

Tuple pattern matching can also be used in `switch` statements:

```swift
let result = (success: true, message: "Success")

switch result {
case (success: true, message: let msg):
  print("Success message: \(msg)") // Output: Success message: Success
case (success: false, message: let msg):
  print("Error message: \(msg)")
default:
  print("Unknown result")
}
```

This `switch` statement matches the `result` tuple based on the `success` and `message` elements. 

### Conclusion

Tuple pattern matching is a valuable tool for working with tuples in Swift. It helps you write concise, readable, and expressive code. Use it to deconstruct tuples, extract specific values, and match multiple values simultaneously. 

* back to [Pattern](../README.md)
* Go to [Identifier Pattern](../OptionalPattern/OptionalPattern.swift)