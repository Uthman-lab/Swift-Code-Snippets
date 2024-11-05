### Generic Types

Generic types in Swift are custom data structures like structs, classes, and enums that can work with any type of data. They provide a blueprint for creating data types that are flexible and reusable, working with different kinds of values without sacrificing type safety.

#### Defining Generic Types

You define a generic type by adding a type parameter within angle brackets (`< >`) after the type name.

**Example: A Generic Stack**

```swift
struct Box<T> {
    var item: T?
}
```

**Explanation:**
* **``struct Box<T>``**: This declares a generic struct named Box with a single type parameter, `T`.
* **Property ``item``**: The item property is `optional (T?)`, so it can hold a value of type T or be nil. This setup allows you to create a Box without needing to initialize item right away.

**Using a Generic Type**

Since item is optional, you can create an empty Box or set item later:

```swift
var intBox = Box<Int>()       // Creates an empty Box of type Int
intBox.item = 42              // Sets item to an Int value

var stringBox = Box<String>() // Creates an empty Box of type String
stringBox.item = "Hello"      // Sets item to a String value

```

#### Type Constraints on Generic Types

Similar to generic functions, you can apply type constraints to generic types. Type constraints restrict the types that can be used with the generic type, ensuring type safety and clarity.

**Example:**

```swift
struct Box<T: Comparable> {
    var item: T?
    
    func isGreaterThan(_ other: T) -> Bool {
        guard let item = item else { return false }
        return item > other
    }
}
```

**Explanation:**

* **``struct Box<T: Comparable>``**: This declaration specifies that `T` must conform to the `Comparable protocol`. This means only comparable types (like `Int, String, Double`, etc.) can be used with `Box`.
* **``isGreaterThan(_ other: T) -> Bool``**: The `isGreaterThan` method compares item with another value of type `T` and returns `true` if item is greater than the provided value. Using `Comparable` allows us to use the `greater-than (>) operator`.

#### `where` Clause on Generic Types

The `where` clause allows you to specify additional constraints on generic types, just like in generic functions. 

**Example:**

```swift
struct Box<T> where T: Equatable, T: Hashable {
    var item: T?
    
    func isEqual(to other: T) -> Bool {
        return item == other
    }
    
    func hashValue() -> Int? {
        return item?.hashValue
    }
}
```

**Explanation:**

* **``struct Box<T> where T: Equatable, T: Hashable``**: This declaration uses a where clause to require that `T` conforms to both the `Equatable` and `Hashable protocols`.
  * **``T: Equatable``**: Ensures that instances of T can be compared using the == operator.
  * **``T: Hashable``**: Ensures that instances of `T` can be hashed, enabling Box to retrieve a hash value of item.

**Key Benefits of Type Constraints and `where` Clauses:**

* **Type Safety:** Prevent unexpected behavior and errors by restricting the types that can be used.
* **Clearer Code:**  Make the intentions of your generic type more explicit, making your code easier to read and understand.
* **Robustness:** Help catch type-related errors earlier in the development process.

## Summary
Generic types, combined with type constraints and the `where` clause, offer a powerful way to create versatile and type-safe data structures in Swift. This flexibility allows you to build reusable components that can work with various data types, making your code more efficient and adaptable. 


* Back [Generics](../README.md)
* Go to [Associate types](../AssociatedTypes/README.md)