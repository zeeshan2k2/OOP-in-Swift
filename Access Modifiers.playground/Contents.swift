import UIKit


// Public Access Modifier
public class MyClass {
    public var publicProperty: Int
    private var privateProperty: String
    
    public init(publicProperty: Int, privateProperty: String) {
        self.publicProperty = publicProperty
        self.privateProperty = privateProperty
    }
    
    public func publicMethod() {
        print("This is a public method.")
    }
    
    private func privateMethod() {
        print("This is a private method.")
    }
}


var a = MyClass(publicProperty: 21, privateProperty: "Hello")
print(a.publicProperty)
a.publicMethod()

                
print()
// Private Access Modifier

class MyClass1 {
    private var privateProperty: Int
    
    init(privateProperty: Int) {
        self.privateProperty = privateProperty
    }
    
    private func privateMethod() {
        print("This is a private method.")
    }
    
    
    func publicMethod() {
        // Inside a method of the same class, private members can be accessed.
        privateProperty = 10
        privateMethod()
    }
}

// Outside the class, private members cannot be accessed.
let myObject = MyClass1(privateProperty: 5)
myObject.publicMethod()


print()

//File Private

fileprivate var filePrivateVariable = 10

fileprivate func filePrivateFunction() {
    print("This is a fileprivate function.")
}

class MyClass3 {
    fileprivate var privateProperty: Int = 0
    
    fileprivate func privateMethod() {
        print("This is a fileprivate method.")
    }
    
    func doSomething() {
        // Within the same file, we can access fileprivate variables and functions
        filePrivateVariable = 20
        filePrivateFunction()
        
        // We can also access fileprivate members of the same class
        privateProperty = 30
        privateMethod()
    }
}

let obj = MyClass3()
obj.privateMethod()

// In another Swift file

// We cannot access fileprivate variables, functions, or members from another file
// filePrivateVariable = 30 // This would cause an error
// filePrivateFunction()    // This would cause an error

// We can't access fileprivate members of MyClass from another file either
// obj.privateProperty = 40 // This would cause an error
// obj.privateMethod()      // This would cause an error

print()

// Open Access Modifier
open class OpenClass {
    open var openProperty: Int = 0
    
    open func openMethod() {
        print("This is an open method.")
    }
}

var openMethodFunc = OpenClass()
openMethodFunc.openMethod()

print()

// Internal Access Modifier

// This class is accessible within the same module (Module A)
internal class InternalClass {
    internal var internalProperty: Int = 0
    
    internal func internalMethod() {
        print("This is an internal method.")
    }
}

var n = InternalClass()
n.internalMethod()

