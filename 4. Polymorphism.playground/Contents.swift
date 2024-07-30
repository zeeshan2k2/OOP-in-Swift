import Cocoa

// Polymorphism

// method overloading
class MathOperation {
    // Method overloading
    func add(a: Int, b: Int) -> Int {
        return a + b
    }

    func add(a: Double, b: Double) -> Double {
        return a + b
    }
}

let operation = MathOperation()
print(operation.add(a: 5, b: 10))     // Calls the Int version
print(operation.add(a: 5.5, b: 10.5)) // Calls the Double version
print(operation.add(a: 10.2, b: 11.23))


//Operator Overloading
struct Point {
    var x: Int
    var y: Int

    // Operator overloading
    static func + (lhs: Point, rhs: Point) -> Point {
        return Point(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
    }
}

let point1 = Point(x: 1, y: 2)
let point2 = Point(x: 3, y: 4)
let result = point1 + point2
print("Resulting point: (\(result.x), \(result.y))") // Resulting point: (4, 6)


// Method Overriding
class Animal1 {
    func makeSound() {
        print("Animal makes a sound")
    }
}

class Dog1: Animal1 {
    override func makeSound() {
        print("Dog barks")
    }
}

let myAnimal1: Animal1 = Dog1()  // Upcasting
myAnimal1.makeSound()         // Calls Dog's makeSound method


// Protocol Polymorphism
protocol Drawable {
    func draw()
}

class Circle: Drawable {
    func draw() {
        print("Drawing a circle")
    }
}

class Square: Drawable {
    func draw() {
        print("Drawing a square")
    }
}

func renderShape(shape: Drawable) {
    shape.draw()
}

let circle = Circle()
let square = Square()

renderShape(shape: circle) // Drawing a circle
renderShape(shape: square) // Drawing a square




//Abstract Class
class Vehicle {
    func start() {
        fatalError("This method must be overridden by a subclass")
    }
}

class Car: Vehicle {
    override func start() {
        print("Car starts with a roar")
    }
}

class Bike: Vehicle {
    override func start() {
        print("Bike starts with a rumble")
    }
}

Bike().start()
Car().start()

//Instanceof operator equivalent in Swift
class Animal {
    // Base class
}

class Dog: Animal {
    // Subclass of Animal
}

protocol Pet {
    // Protocol
}

class Cat: Animal, Pet {
    // Subclass of Animal and conforms to Pet protocol
}

let dog = Dog()
let cat = Cat()

if dog is Animal {
    print("dog is an instance of Animal")
}

if cat is Pet {
    print("cat conforms to Pet protocol")
}


