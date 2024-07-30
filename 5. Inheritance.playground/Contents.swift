import Cocoa

// Parent class
//class Animal {
//    func makeSound() {
//        print("Some generic animal sound")
//    }
//}
//
//// Subclass
//class Dog: Animal {
//    override func makeSound() {
//        print("Dog barks")
//    }
//}
//
//let animal = Animal()
//animal.makeSound()  // Output: Some generic animal sound
//
//let dog = Dog()
//dog.makeSound()  // Output: Dog barks

// Superclass
class Animal {
    func makeSound() {
        print("Some generic animal sound")
    }
}

// Subclass
class Dog: Animal {
    override func makeSound() {
        print("Dog barks")
    }
}

let animal = Animal()
animal.makeSound()  // Output: Some generic animal sound

let dog = Dog()
dog.makeSound()  // Output: Dog barks


// Reusability
// Base class (reusable component)
class Vehicle {
    func start() {
        print("Vehicle is starting")
    }
}

// Subclass (extends functionality)
class Car: Vehicle {
    func honk() {
        print("Car is honking")
    }
}

// Subclass (extends functionality)
class Motorcycle: Vehicle {
    func rev() {
        print("Motorcycle is revving")
    }
}

let car = Car()
car.start()  // Output: Vehicle is starting
car.honk()   // Output: Car is honking

let motorcycle = Motorcycle()
motorcycle.start()  // Output: Vehicle is starting
motorcycle.rev()    // Output: Motorcycle is revving


//// Single Inheritance
//class Animal {
//    func eat() {
//        print("Eating")
//    }
//}
//
//class Dog: Animal {
//    func bark() {
//        print("Barking")
//    }
//}


// Multiple Inheritance
protocol Drivable {
    func drive()
}

protocol Flyable {
    func fly()
}

class FlyingCar: Drivable, Flyable {
    func drive() {
        print("Driving")
    }

    func fly() {
        print("Flying")
    }
}


////Hierarchical Inheritance
//class Animal {
//    func eat() {
//        print("Eating")
//    }
//}
//
//class Dog: Animal {
//    func bark() {
//        print("Barking")
//    }
//}
//
//class Cat: Animal {
//    func meow() {
//        print("Meowing")
//    }
//}
//
//
//// Multilevel Inheritance
//class Vehicle {
//    func start() {
//        print("Starting")
//    }
//}
//
//class Car: Vehicle {
//    func drive() {
//        print("Driving")
//    }
//}
//
//class ElectricCar: Car {
//    func charge() {
//        print("Charging")
//    }
//}


//// Hybrid Inheritance
//protocol Drivable {
//    func drive()
//}
//
//protocol Flyable {
//    func fly()
//}
//
//class FlyingCar: Drivable, Flyable {
//    func drive() {
//        print("Driving")
//    }
//
//    func fly() {
//        print("Flying")
//    }
//}

// Virtual Inheritance
//class Base {
//    // ...
//};
//
//class Derived1 : virtual public Base {
//    // ...
//};
//
//class Derived2 : virtual public Base {
//    // ...
//};
//
//class Final : public Derived1, public Derived2 {
//    // ...
//};


//// Sealed Modifier
//final class Vehicle {
//    func start() {
//        print("Vehicle starting")
//    }
//}

// This will cause a compile-time error
// class Car: Vehicle {
//     // ...
// }


