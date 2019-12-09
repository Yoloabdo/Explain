import UIKit



/**
 
    #   Difference between a struct and a class in Swift
 
    ## ** An instance of a class is traditionally known as an object. But it is better to use the term Instance as we are dealing with struct and enum as well. **
 
 
 
    Common:
 
        - They can define properties to store values, and they can define functions
        - They can define subscripts to provide access to values with subscript syntax[Keypaths]Swift5.0.
        - They can define initializers to set up their initial state, with init()
        - They can be extended with extension (this is important!)
        - They can conform to protocols, for instance to support Protocol Oriented Programming
 
 
 
 
    Advantages of Value types over Reference types
        - Efficiency: Value types are faster than Reference types. This can be owed to reference types as they are allocated on heap, which is expensive compared to stack allocation. Also, in order to free up the allocated memory OS needs to keep track of reference count and when count is zero the memory is freed. This overhead is not seen in value types leading to efficient instance creation and copy.
        
        - Thread Safety: Value type instances are safe in a multi-threaded environment as multiple threads can mutate the instance without having to worry about the race conditions or deadlocks. Writing multi-threaded code with value types thus becomes simpler, safer and more efficient.
        
        - No memory leaks: Value types have no references unlike reference types. Hence there is no overhead of memory leaks in value types.
 
 */

protocol Human {
    var id: Int { get set }
    var age: Double { get set }
}

struct Teacher: Human {
    let name: String
    var id: Int
    var age: Double
    
    func teach() {
        
    }
}


extension Teacher {
    func addGrades() {
        
    }
}


final class TeacherClass: Human {
    let name: String
    var id: Int
    var age: Double
    
    init(name: String, id: Int, age: Double) {
        self.name = name
        self.id = id
        self.age = age
    }
    
    func teach() {
        
    }
}

extension TeacherClass {
    func addGrade() {
        
    }
}





enum Sex {
    case male, female, unknown
}


enum Rule {
    case teacher, student, manager, seniorStudent
}


// class, struct, enum?

struct User {
    let name: String
    let id: Int
    let gender: Sex
    let rule: Rule
}



let ahmed = User(name: "Ahmed Ali", id: 13, gender: .male, rule: .student)
