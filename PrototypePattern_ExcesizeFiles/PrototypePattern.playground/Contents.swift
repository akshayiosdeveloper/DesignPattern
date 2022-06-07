import UIKit
import Foundation

// In prototype pattern value types get this behaviour for free
// value types gets automatically copied upon assignment..

struct Candiate {
    var name: String
    let address: String
}
let joe = Candiate(name: "joe", address: "House no 1507")
var roy = joe
print("->\(joe.name)")
print("->\(roy.name)")

roy.name  = "roy1"
print("->\(roy.name)")

// Cloning the refrence type
// For refrence type we  NSCopying protocol and using its copy function to create clone objects ..

class Student: NSCopying {
    
    var name: String
    var address: String
    init(name: String , address: String) {
        self.name = name
        self.address = address
    }
    func copy(with zone: NSZone? = nil) -> Any {
        return Student(name: self.name, address: self.address)
    }
    func clone() -> Student {
        return self.copy() as! Student
    }
}
let student = Student(name: "Ramna", address: "1507")
let student2 = student.clone()
print("student->\(student.name)")
print("student2->\(student2.name)")
student2.name = "Neha"
student2.address = "1999"
print("student->\(student.name),\(student.address)")
print("student2->\(student2.name),\(student2.address)")
