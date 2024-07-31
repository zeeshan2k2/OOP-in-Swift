import Cocoa


// Dynamic Binding
class Animal {
    func makeSound() {
        print("Some generic animal sound")
    }
}

class Dog: Animal {
    override func makeSound() {
        print("Bark")
    }
}

class Cat: Animal {
    override func makeSound() {
        print("Meow")
    }
}

func printAnimalSound(animal: Animal) {
    animal.makeSound() // message passing
}

let myDog = Dog()
let myCat = Cat()

printAnimalSound(animal: myDog)  // Output: Bark
printAnimalSound(animal: myCat)  // Output: Meow



// object cloning
// shallow copy
class Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let originalPerson = Person(name: "Alice", age: 30)
let shallowCopyPerson = originalPerson // Reference copy, both refer to the same object
shallowCopyPerson.name = "Bob"

print(originalPerson.name) // Output: Bob
print(shallowCopyPerson.name) // Output: Bob



//// deep copy
//class Person {
//    var name: String
//    var age: Int
//
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//
//    // Deep Copy Method
//    func deepCopy() -> Person {
//        return Person(name: self.name, age: self.age)
//    }
//}
//
//let originalPerson = Person(name: "Alice", age: 30)
//let deepCopyPerson = originalPerson.deepCopy() // Creates a new instance with copied values
//deepCopyPerson.name = "Bob"
//
//print(originalPerson.name) // Output: Alice
//print(deepCopyPerson.name) // Output: Bob


