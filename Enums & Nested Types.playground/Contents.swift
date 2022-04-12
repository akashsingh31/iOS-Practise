import UIKit

//Enums - are nothing but states or types of an object can have
/*
--------
 Code 1
--------
struct Employee{
    var name: String!
    var role: employeeRole!
}

enum employeeRole : String {
    case contributor = "Contributor"
    case admin = "Admin"
}

let employee1 = Employee(name: "Akash", role: .contributor)
let employee2 = Employee(name: "Sneh", role: .admin)

print(employee2.role.rawValue)

--------
 Code 2
--------
struct students{
    var name: String!
    var status: employmentStatus!
}

enum employmentStatus : String{
    case placed = "PLACED"
    case notplaced = "NOT-PLACED"
}

let student1 = students(name: "AKASH", status: .placed)
let student2 = students(name: "SNEH", status: .placed)
let student3 = students(name: "XYZ", status: .notplaced)

print(student1.status.rawValue)
print(student2.status.rawValue)
print(student3.status.rawValue)

//Initialization - Initialization is the process of preparing an instance of a class, structure, or enumeration for use. This process involves setting an initial value for each stored property on that instance and performing any other setup or initialization that's required before the new instance is ready for use.


struct Student{
    
    let role : String!
    init() {
        role = "student"
    }

}



//Type Casting - Typecast is a way of changing an object from one data type to the next. It is used in computer programming to ensure a function handles the variables correctly.
//A typecast example is the transformation of an integer into a string.

class Media{
    var name: String!
    var type: mediaType!
}

class Audio: Media{
    
}
class Video: Media{
    
}
enum mediaType{
    case audio, video
}

let media1 = Audio()
let media2 = Video()
let media3 = media1 as Media //casting media1 to the media type

if media1 is Media{
    print("Media1 is a Media Type")
}
 */
//Nested Type - We can group types together.  Enumerations are often created to support a specific class or structure’s functionality. Similarly, it can be convenient to define utility classes and structures purely for use within the context of a more complex type. To accomplish this, Swift enables you to define nested types, whereby you nest supporting enumerations, classes, and structures within the definition of the type they support.

class Media{
    var name: String!
    var type: mediaType!
    
    enum mediaType{
        case audio, video
    }
     
}

class Audio: Media{
    
}
class Video: Media{
    
}

let media1 = Audio()
media1.name = "Audio1 Name"
media1.type = .audio

let media2 = Video()
media2.type = .video

let media3 = media1 as Media

