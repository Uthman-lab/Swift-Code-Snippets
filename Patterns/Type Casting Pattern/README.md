## Type Casting Patterns

Type casting patterns are a powerful feature in Swift that allows you to match values based on their runtime type. This is particularly useful when dealing with dynamic types and polymorphism. There are two main type casting patterns: `is` and `as`.

### `is` Pattern

* **Syntax:** `is <#type#>`
* **Purpose:** Checks whether the type of a value at runtime matches the specified type.
* **Behavior:** Similar to the `is` operator, performs a type check but does not cast the value.
* **Usage:** Primarily used in `switch` statement case labels.

**Example:**

```swift
let value: Any = "Hello"

switch value {
case is String:
    print("Value is a String")
case is Int:
    print("Value is an Int")
default:
    print("Value is of unknown type")
}
```

This `switch` statement checks the type of `value` using the `is` pattern. If it's a `String`, the first `case` matches. If it's an `Int`, the second `case` matches. Otherwise, the `default` case is executed.

### `as` Pattern

* **Syntax:** `<#pattern#> as <#type#>`
* **Purpose:** Checks whether the type of a value at runtime matches the specified type and performs a cast if successful.
* **Behavior:** Performs a type check and casts the value to the specified type if the check succeeds.
* **Usage:** Used in `switch` statement case labels and other contexts.

**Example:**

```swift
let value: Any = 100

switch value {
case let number as Int:
    print("Integer value: \(number)")
case let string as String:
    print("String value: \(string)")
default:
    print("Value is of unknown type")
}
```

This `switch` statement uses the `as` pattern to check the type of `value` and cast it accordingly. If the value is an `Int`, it's cast to `number` and used. If it's a `String`, it's cast to `string`.

### Conclusion

Type casting patterns are a valuable tool for working with dynamic types in Swift. The `is` pattern provides a way to check the type of a value without casting, while the `as` pattern combines type checking with casting, allowing you to safely extract values from polymorphic data. Use these patterns wisely to write clear, concise, and type-safe Swift code. 


