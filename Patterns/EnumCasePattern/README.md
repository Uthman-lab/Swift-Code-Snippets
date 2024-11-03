## Enumeration Pattern Matching

Enumeration (enum) pattern matching is a powerful feature in Swift that allows you to elegantly handle and extract values from enums within `switch` statements. This makes your code more readable, safe, and expressive when dealing with enums.

### Understanding Enum Patterns

An enum pattern matches against the specific cases defined within an enumeration. It allows you to check which case a particular enum value represents and access any associated values associated with that case.

### Example: Matching Enum Cases

Let's consider an enum representing the different traffic light states:

```swift
enum TrafficLight {
    case red, yellow, green
}

let currentLight: TrafficLight = .yellow

switch currentLight {
case .red:
    print("Stop!")
case .yellow:
    print("Prepare to stop.")
case .green:
    print("Go!")
}
// Output: Prepare to stop.
```

Here, the `switch` statement checks the value of `currentLight` against the different cases of the `TrafficLight` enum. Each `case` label matches a specific enum case, and the corresponding code block is executed.

### Matching with Associated Values

Enums can have associated values, allowing you to store additional data along with each case. You can access these associated values within a `switch` statement using enum patterns:

```swift
enum WeatherCondition {
    case sunny
    case cloudy
    case rainy(temperature: Int, intensity: String) // Associated values: temperature, intensity
}

let currentWeather: WeatherCondition = .rainy(temperature: 15, intensity: "light")

switch currentWeather {
case .sunny:
    print("Enjoy the sunshine!")
case .cloudy:
    print("It's a bit overcast.")
case let .rainy(temperature, intensity): // Pattern matching associated values
    print("It's raining with a temperature of \(temperature) degrees and \(intensity) intensity.")
}
// Output: It's raining with a temperature of 15 degrees and light intensity.
```

In this example, the `.rainy` case of the `WeatherCondition` enum has two associated values: `temperature` and `intensity`. The `switch` statement matches the `.rainy` case and uses `let .rainy(temperature, intensity)` to extract the associated values and use them within the corresponding code block.

### Advantages of Enum Pattern Matching

* **Readability:** Enum patterns make your code more readable by clearly expressing the logic of handling different enum cases.
* **Safety:** They ensure that your code correctly handles all possible enum cases, preventing unexpected behavior or runtime errors.
* **Expressiveness:** Enum patterns allow you to elegantly access associated values associated with each enum case, making your code more concise and expressive.

### Conclusion

Enumeration pattern matching is a powerful tool for working with enums in Swift. It provides a safe, expressive, and readable way to handle different enum cases and access associated values. By leveraging enum patterns, you can write cleaner and more maintainable code that handles enum values effectively. 

* back to [Pattern](../README.md)
* Go to [Type Casting Pattern](../TypeCastingPattern/README.md)
