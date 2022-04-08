import UIKit

//Difference between class and struct

//1. Classes are reference types whereas Structs are value types
/*
class Printer{
    var name: String!
    
    init(name: String) {
        self.name = name
    }
}

let firstPrinter = Printer(name: "Canon")

//myPrinter has a memory address like 0x123456
firstPrinter.name = "Sony"

let secondPrinter = Printer(name: "Pano")

//myPrinter has a memory address like 0x123456
secondPrinter.name = "Pano updated"

print(firstPrinter.name)
print(secondPrinter.name)


//Struct

struct Printer{
    var name: String!
    
    init(name: String) {
        self.name = name
    }
}
var firstPrinter = Printer(name: "Canon")

//myPrinter has a memory address like 0x123456
firstPrinter.name = "Sony"

var secondPrinter = firstPrinter

//myPrinter1 has a memory address like 0x123478
secondPrinter.name = "Pano updated"

print(firstPrinter.name)
print(secondPrinter.name)
 */


/*
- When you want to control an identity of an object, like you want to handle the state  at any point of time you want to
 identify or match between these two objects then in that case you need to go with classes
 
- In case you want to share features or communicate between objective-c file and swift file then you have to go with class.

- Always prefer using Struct and only use classes when it is mandatory
 
- Once struct is initialised, you cannot change the value in it.
*/



//--------------------
//Types of Properties-
//--------------------

//1- Stored Properties - This is called stored property, when we assign "Akash" to name then it gets stored. This is Stored property.

/*
class Student {
    var name : String!
}

let student = Student()
student.name = "Akash"
print(student.name)

 

//2- Lazy Stored Properties - It means as the initial value of a lazy property is not calculated until the first time it’s used. In other words: It’s lazy initialization. This could be a great way to optimize your code to prevent doing any unnecessary work.

struct filePrinter {
    lazy var filesRepository: FileRepository! = {
        return FileRepository()
    }()
    
    mutating func printAllFiles() {
        for file in filesRepository.files {
            print("Files Path: \(file)")
        }
    }
}
let filePrinter = FilePrinter()
struct FileRepository{
    var files: [String]!
}
 
 

//3- Computed Properties - They dont store any value in them, they just calculate the value dynamically

struct Employee{
    var numberOfWorkingDaysInWeek : Float = 5.0
    
    var numberOfWorkingHours : Float!
    
    var averageWorkingHourPerDay : Float{
        return numberOfWorkingHours/numberOfWorkingDaysInWeek
    }
}
let employee = Employee(numberOfWorkingDaysInWeek: 6, numberOfWorkingHours: 110)
print(employee.averageWorkingHourPerDay)

struct bikeSpeed{
    var distance : Float = 50.0
    var time : Float!
    var speed: Float {
        return distance/time
    }
}
let speed = bikeSpeed(distance: 50, time: 2)
print("The bike travelled at the speed of \(speed.speed)")
 
 

//4- Read Only Computed Properties - A read-only computed property can be handy in cases where you want to safely give read access to some property but want to be sure it can’t be modified.

//  A getter, denoted by the get keyword, is used to retrieve the value of a property. A setter, denoted by the set keyword, is used to set the value of a property.

struct Employee{
    var numberOfWorkingDaysInWeek : Float = 5.0
    
    var numberOfWorkingHours : Float!
    
    var bonus : Float!
    
    var averageWorkingHourPerDay : Float{
        
        get {
        return numberOfWorkingHours/numberOfWorkingDaysInWeek
        }
        
        set {
            if newValue > 9{
                bonus = 5000
            }
        }
        
    }
}
var employee = Employee(numberOfWorkingDaysInWeek: 6, numberOfWorkingHours: 110)
print(employee.averageWorkingHourPerDay)

employee.averageWorkingHourPerDay = 9.5
print(employee.bonus)
 
 

//5- willSet and didSet -

struct Printer{
    
    var performance : Float! = 0
    
    var numberOfLinesPerMinute: Int = 0{
        
        willSet{
            
            if newValue < 0 {
                print("Invalid value is being set for the numberOfLinesPerMinute")
            }
        }
        
        didSet{
            performance = Float(numberOfLinesPerMinute)/100.0
        }
    }
}
var printer = Printer()
printer.numberOfLinesPerMinute = 200
 
print(printer.performance)
printer.numberOfLinesPerMinute = -1
*/
