## Expression Pattern Matching

Expression pattern matching is a powerful feature in Swift that allows you to compare a value against the result of an expression, enabling you to perform more complex checks within `switch` statements. 

### Understanding Expression Patterns

An expression pattern represents the value of an expression, and it's primarily used in the `case` labels of a `switch` statement. The core concept is that the value being matched in the `switch` is compared against the result of the expression pattern using the pattern-matching operator `~=`.

### Example 1: Basic Usage
```swift
let dayOfWeek = 3

switch dayOfWeek {
case 1:
    print("It's Monday!")
case 2:
    print("It's Tuesday!")
case 3:
    print("It's Wednesday!")
case 4:
    print("It's Thursday!")
case 5:
    print("It's Friday!")
case 6:
    print("It's Saturday!")
case 7:
    print("It's Sunday!")
default:
    print("Invalid day of the week!")
}
// Output: It's Wednesday!
```

In this example:

* We use a `switch` statement to determine the day of the week based on the `dayOfWeek` value.
* Each `case` directly matches the `dayOfWeek` value with a specific integer representing the day.
* The `default` case handles any invalid input values that don't correspond to a valid day of the week.

This demonstrates how expression patterns can be used to match a single value against specific values without relying on ranges. You can use this approach for scenarios where you have a set of discrete values to check against. 


### Example 2: Basic Usage with Ranges

One common use case for expression patterns is to compare a value against a range of values. Swift's built-in `~=` operator already handles comparisons with ranges:

```swift
let temperature = 25

switch temperature {
case 0..<10:
    print("It's freezing!")
case 10..<20:
    print("It's chilly.")
case 20..<30:
    print("It's a pleasant temperature.")
default:
    print("It's hot!")
} 
// Output: It's a pleasant temperature.
```

In this example:

* We use a `switch` statement to categorize the `temperature` value.
* Each `case` uses a range expression pattern (`0..<10`, `10..<20`, etc.) to check if the `temperature` falls within that range.
* The `default` case handles any temperature value that doesn't match the previous cases.

This illustrates how expression patterns using ranges can be used to match a single value against various conditions within a `switch` statement. 


### Custom Expression Matching

You can customize the behavior of the `~=` operator by overloading it. This allows you to create custom expression matching logic:

### Example 3: Custom usage
```swift
// Overload the ~= operator to match a string with an integer.
func ~= (pattern: String, value: Int) -> Bool {
    return pattern == "\(value)"
}

let point = (1, 2)

switch point {
case ("0", "0"):
    print("(0, 0) is at the origin.")
default:
    print("The point is at (\(point.0), \(point.1)).")
}
// Output: "The point is at (1, 2)."
```

Here, we've defined a custom `~=` operator that compares a `String` pattern with an `Int` value, checking if the string representation of the integer matches the pattern. This allows us to match points based on their string representations in the `switch` statement.

### Advantages of Expression Pattern Matching

* **Flexibility:** Allows for complex comparisons beyond simple equality checks.
* **Customizable Logic:** Provides the ability to define custom matching behavior through operator overloading.
* **Code Clarity:**  Improves the readability and maintainability of your code by expressing complex matching logic within `switch` statements.

### Conclusion

Expression pattern matching is a powerful tool in Swift that extends the capabilities of `switch` statements. It provides a flexible way to compare values against more intricate expressions, enhancing the expressiveness and power of your code.

* back to [Pattern](../README.md)
* Go to [Identifier Pattern](../IdentifierPattern/README.md)