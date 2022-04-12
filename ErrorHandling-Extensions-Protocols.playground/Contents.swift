//Error Handling - An error (exception) is an unexpected event that occurs during program execution.

//Steps For Error Handling in Swift
//- Create an enum that represents the types of errors.
//- Create a throwing function using the throws keyword.
//- Call the function using the try keyword.
//- Wrap the code with try in the do {...} block and add the catch {...} block to handle all errors.


import Foundation
let userInputNumber = "Akash"

func convertStringToInt(_ numberString: String) throws -> Int?{
    if let convertedNumber = Int(numberString){
        return convertedNumber
    }
    throw NSError(domain: "StringToIntConversionDomain", code: 101, userInfo: nil)
}

do {
    if let result = try convertStringToInt(userInputNumber){
        print("Value with string data type has been converted to integer data type and value is \(result)")
    } else{
        print("No successful conversion happened")
    }
} catch {
    print("Got error and its handled here and description is \(error)")
}

//Extensions - It means adding some extra features to the existing types. Extensions must not contain stored properties.

struct Student{
    var firstName: String!
    var lastName: String!
    
    func printFullName(){
        print(fullName())
    }
}

extension Student{
    func fullName() -> String{
        return firstName + " " + lastName
    }
}

let student = Student(firstName: "Akash", lastName: "Singh")
student.printFullName()

//Protocols - A protocol defines a blueprint of methods or properties that can then be adopted by classes (or any other types).

//-The protocol just holds the method or properties definition, not their actual body.
//-The protocol must specify whether the property will be gettable or gettable and settable.


protocol Flyable {
    func numberOfKMsPerHour() -> Float
}

struct Bird {
    
}

struct Machine{
    
}

extension Machine: Flyable{
    func numberOfKMsPerHour() -> Float {
        return 700.0
    }
}

extension Bird: Flyable {
    func numberOfKMsPerHour() -> Float {
        return 10.0
    }
}
