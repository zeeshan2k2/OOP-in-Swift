import Cocoa

// Initializer
class Person {
    var name: String
    var age: Int

    // Initializer
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

// Usage
let person = Person(name: "Alice", age: 30)
print(person.name)
print(person.age)


// Deinitializer
class Person1 {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    deinit {
        print("\(name) is being deinitialized")
    }
}

// Usage
var person1: Person1? = Person1(name: "rehna", age: 25)
person1 = Person1(name: "liaf", age: 12)
person1 = nil // This triggers the deinitializer

print(person1?.name, person1?.age)
