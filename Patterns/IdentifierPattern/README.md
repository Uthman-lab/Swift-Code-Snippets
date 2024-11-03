
# Identifier Pattern

The **Identifier Pattern** is the simplest type of pattern in Swift. It matches any value and binds that value to a constant or variable name, allowing access to the value through that name.

### Basic Usage

An identifier pattern is commonly used in variable or constant declarations, where it assigns a value to a name.

Example:

```swift
let someValue = 42
```
In this example:

 - `someValue` is an identifier pattern that matches the integer `42`.
 - When the match succeeds, the value `42` is bound to `someValue`, allowing us to access the value by referencing `someValue`.
### Key Points
 - Identifier Pattern as a Subpattern: In Swift, when you declare a variable or constant, you often use an identifier pattern to match and bind a value to a name. In this context, the identifier pattern is considered a subpattern of a broader concept known as a value-binding pattern. This means that while the identifier pattern serves a specific role (binding a value to a name), it operates within the framework of value-binding patterns, which are more general and include any patterns that bind values..
 - Used in Multiple Contexts: Although commonly seen in declarations, the identifier pattern is also used in other contexts, such as switch statements, function parameters, and closures, to match and bind values dynamically.
 ### Examples
 #### Example 1: Variable Declaration (Simple Assignment)
In variable declarations, the identifier pattern matches any value and binds it directly:

```swift
let number = 100
var name = "Swift"
```
Here, number and name are identifier patterns that match and bind the values 100 and "Swift" respectively.

#### Example 2: Identifier Pattern in a switch Statement
In switch statements, the identifier pattern can be used to match any case and bind the value:
```swift
let value = 42

switch value {
case let x:
    print("Matched and bound to \(x)") // Output: Matched and bound to 42
}
```

 #### Explanation:

 - case let x: uses the identifier pattern to match the value 42 and bind it to x.
 - This approach allows us to use the value 42 within the case block by referring to x.

### Difference Between Identifier Pattern and Assignment
While the identifier pattern is commonly used in assignment statements, it is important to understand the distinction between the two concepts:

- Identifier Pattern:

  * It is a type of pattern used in Swift's pattern-matching system.
  * It matches any value and binds it to a name.
  * It can be used in various contexts, such as switch statements, function parameters, and closures.

- Assignment:

  * Assignment is an operation that stores a value in a variable or constant.
  * It involves using the = operator to assign a value to a name.
  * It specifically pertains to variable and constant declarations.

 ### Summary
The identifier pattern:

 - Matches any value and binds it to a specified name.
 - Is commonly used in assignments, where it’s implicitly part of a value-binding pattern.
 - Can be used in switch cases, function parameters, and closures, enabling flexible matching and binding in various contexts.

 * back to [Pattern](../README.md)
 * Go to [Value Binding Pattern](../ValueBindingPattern/README.md)
