import UIKit

// Static Keyword
// Example 1
class Vehicle {
    static var numberOfWheels = 4  // Static property belonging to the type
    var num = 23                   // Instance property belonging to each instance
}

// Accessing static property using the class name
print(Vehicle.numberOfWheels) // Outputs: 4

// Creating an instance of Vehicle and accessing an instance property
print(Vehicle().num) // Outputs: 23


// Example 2
class Counter {
    static var totalCount = 0  // Static property: Shared among all instances
    var count = 0              // Instance property: Unique to each instance

    func increment() {
        count += 1
        Counter.totalCount += 1
    }
}

// Create instances of Counter
let counter1 = Counter()
let counter2 = Counter()

// Increment counts
counter1.increment()
counter2.increment()

// Print instance and static properties
print(counter1.count)       // Outputs: 1 (counter1's own count)
print(counter2.count)       // Outputs: 1 (counter2's own count)
print(Counter.totalCount)   // Outputs: 2 (shared across all instances)



// Virtual Keyword

class BaseClass {
    func doSomething() {
        print("BaseClass doing something")
    }
}

class SubClass: BaseClass {
    override func doSomething() {
        print("SubClass doing something")
    }
}

let baseObject = BaseClass()
let subObject = SubClass()

baseObject.doSomething() // Outputs: BaseClass doing something
subObject.doSomething() // Outputs: SubClass doing something


// Final Keyword

final class MyFinalClass {
    func doSomething() {
        print("Doing something")
    }
}

// This will cause a compile-time error:
// class SubClass: MyFinalClass { }

let instance = MyFinalClass()
instance.doSomething() // Outputs: Doing something


// This keyword (Self in Swift)
class Car {
    var color: String

    init(color: String) {
        self.color = color // 'self.color' refers to the instance property, 'color' refers to the parameter
    }

    func describe() {
        print("The car is \(self.color).") // 'self.color' refers to the instance property
    }
}

let myCar = Car(color: "Red")
myCar.describe() // Outputs: The car is Red.



// Super Keyword

// 1. Calling methods from superclass
class Animal {
    func makeSound() {
        print("Some generic animal sound")
    }
}

class Dog: Animal {
    override func makeSound() {
        super.makeSound() // Call the superclass method
        print("Bark")
    }
}

let dog = Dog()
dog.makeSound()
// Outputs:
// Some generic animal sound
// Bark


//2. Accessing Properties
class Shape {
    var color: String = "Red"
}

class Circle: Shape {
    override var color: String {
        didSet {
            print("Circle color changed from \(oldValue) to \(color)")
        }
    }
}

let circle = Circle()
circle.color = "Blue"
// Outputs: Circle color changed from Red to Blue


//3. Calling Initializers
class Vehicle {
    var model: String

    init(model: String) {
        self.model = model
    }
}

class Car: Vehicle {
    var numberOfDoors: Int

    init(model: String, numberOfDoors: Int) {
        self.numberOfDoors = numberOfDoors
        super.init(model: model) // Call the superclass initializer
    }
}

let myCar = Car(model: "Toyota", numberOfDoors: 4)
print(myCar.model) // Outputs: Toyota
print(myCar.numberOfDoors) // Outputs: 4
