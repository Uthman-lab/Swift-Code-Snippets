---
layout: default
title: wild cards
---

## Wildcard Pattern

The wildcard pattern (`_`) is a special pattern in Swift that acts as a placeholder, indicating that you're not interested in the value being matched. It's useful in scenarios where you want to match a value but don't need to use its specific value.

### Usage of the Wildcard Pattern

* **Ignoring Values in `switch` Statements:** The wildcard pattern is particularly useful in `switch` statements when you want to match a certain case but don't need to do anything specific with the value. 

   ```swift
   let number = 5

   switch number {
   case 1...3:
       print("Small number")
   case _:
       print("Other number") // Matches any value not in 1...3
   }
   // Output: Other number
   ```

* **Ignoring Tuple Elements:** You can use the wildcard pattern to ignore specific elements in a tuple pattern. 

   ```swift
   let coordinates = (x: 10, y: 20)

   switch coordinates {
   case (let x, _): // Ignore the y value
       print("x: \(x)")
   default:
       print("Unknown coordinates")
   }
   // Output: x: 10
   ```

* **Ignoring Enum Cases:**  You can use the wildcard pattern to match any case within an enum without specifying specific cases.

   ```swift
   enum TrafficLight {
       case red, yellow, green
   }

   let light: TrafficLight = .yellow

   switch light {
   case .red:
       print("Stop")
   case _: // Match any other case
       print("Proceed with caution")
   }
   // Output: Proceed with caution
   ```

### Advantages of the Wildcard Pattern

* **Conciseness:**  The wildcard pattern allows you to write more concise code by avoiding the need to specify unnecessary case labels.
* **Flexibility:** It provides a convenient way to handle any case that doesn't require specific action.
* **Improved Readability:** By using wildcards, you can focus on the logic that matters and avoid cluttering your `switch` statements with extraneous cases.

### Conclusion

The wildcard pattern is a valuable tool in Swift for pattern matching. It provides a simple yet powerful way to ignore specific values or cases, making your code more readable and concise while still achieving the desired matching behavior.