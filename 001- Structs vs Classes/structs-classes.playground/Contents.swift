import UIKit


struct Student {
    var name: String
    let id: Int
    var dgree: Double
}


class Teacher {
    var name: String
    var id: Int
    let classes: [TeachingClass]
    
    init(name: String, id: Int, classes: [TeachingClass]) {
        self.name = name
        self.id = id
        self.classes = classes
    }
}

struct TeachingClass {
    let name: String
    let id: Int
}


var mohamed = Student(name: "Mohamed Mahmoud", id: 345, dgree: 89.3)

mohamed.dgree = 45
mohamed.name = "mohamed Ahmed"
print(mohamed.dgree)

var yehia = mohamed
print(yehia.name)

yehia.name = "Yehia Younes"

print(yehia.name)
print(mohamed.name)

let ahmed = Teacher(name: "Ahmed Ali", id: 1234, classes: [])

let faris = ahmed

ahmed.id = 2315


faris.name = "Faris"
print(faris.name)
print(ahmed.name)

#imageLiteral(resourceName: "mzMfb.gif")
