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


