import Cocoa


protocol Shape {
    func area() -> Double
    func perimeter() -> Double
}

class Rectangle: Shape {
    var width: Double
    var height: Double

    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }

    func area() -> Double {
        return width * height
    }

    func perimeter() -> Double {
        return 2 * (width + height)
    }
}

class Circle: Shape {
    var radius: Double

    init(radius: Double) {
        self.radius = radius
    }

    func area() -> Double {
        return Double.pi * radius * radius
    }

    func perimeter() -> Double {
        return 2 * Double.pi * radius
    }
}

func printShapeDetails(shape: Shape) {
    print("Area: \(shape.area())")
    print("Perimeter: \(shape.perimeter())")
}

let rectangle = Rectangle(width: 5.0, height: 10.0)
let circle = Circle(radius: 3.0)

printShapeDetails(shape: rectangle)
// Output:
// Area: 50.0
// Perimeter: 30.0

printShapeDetails(shape: circle)
// Output:
// Area: 28.274333882308138
// Perimeter: 18.84955592153876

