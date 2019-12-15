import UIKit


/*:
 ## Protocol methods and conformation, Required vs Optional
 
 By default when you conform to a protocol, you are required to implement all methods defined by the protocol.
 Using the @optional keyword, we can mark a method or variable in a protocol as an optional method
 
 To to this, we must mark our protocol with @objc, even though we are not interacting with Objective-C.
 Doing this imposes some restrictions, one of them being that we can only use the protocol on reference types.
 
*/


@objc protocol Purchasable {
    @objc optional var discount: Double {get set}
    @objc optional func purchase()
}


protocol Purchasable2 {
    var discount: Double {get set}
    func purchase()
}

extension Purchasable2 {
    func purchase() {
        
    }
}


struct Item: Purchasable2 {
    var discount: Double

}


/*:
 ## Multiple Protocol Restriction
 
 Remember, protocols are also *types* and we can return them when a type in a function signature is expected
*/


protocol Biped {
    func name() -> String
    func walk()
}


protocol Hairy {
    func hairColor() -> String
}

class Dog: Hairy {
    func hairColor() -> String {
        return "Brown"
    }
}


class Ostrich: Biped, Hairy {
    func name() -> String {
        return "Ostrich"
    }
    
    func walk() { }
    
    func hairColor() -> String {
        return "Black"
    }
}


func describe(item: Biped & Hairy) -> String {
    return ("\(item.name()) 's hair color is: \(item.hairColor())")
}


describe(item: Ostrich())

//describe(item: Dog())

/*:
 
 ## Challenges
 
 1. a. Create a model of a car, it should have a max speed, number of wheels, doors and model properties.
    b. Generalize the car, create a model for a vehicle which will represent all vehicles, a truck, motorcycle & bus are vehicles
    c. Create a model(struct or class or enum) an instances of truck, motorcycle and bus
 
 2.
 */

 protocol CanMakeNoise {
    func makeNoise()
 }
 
 class Elephant {
 
 }
 
 class Pig {
 
 }
 
 class Cow {
 
 }
 
 
 let elephant = Elephant()
 let pig = Pig()
 let cow = Cow()
 
 // let arrayOfNoiseMaker: [CanMakeNoise] = [human, pig, cow]


/*:
 
 2 a. Uncomment above line and make the code compile. This can be achieved by implementing the `CanMakeNoise` protocol in all the classes above. Think about a noise each class could make and print it to the console using `print`.
 
 b. Iterate over `arrayOfNoiseMaker` and let each object make their noise
 
 */

/*:
 3.
 
 Take at look at the protocol definition for Equatable by Apple:
 
 ```
 public protocol Equatable {
 
  Returns a Boolean value indicating whether two values are equal.
 
  Equality is the inverse of inequality. For any values `a` and `b`,
  `a == b` implies that `a != b` is `false`.
 
  - Parameters:
    - lhs: A value to compare.
    - rhs: Another value to compare.
 public static func ==(lhs: Self, rhs: Self) -> Bool
 }
 ```
 
 Given the Artist struct below, implement the Equatable protocol
 
 ### Hint
 
 With Equatable, you define what makes two instances equal. Imagine you have two colored balls.
 What makes them equal? Is it their colors? Their sizes? Its up to you to determine that.
 
 */

// Used by Artist to determine style of Artist
enum Style: String {
    case impressionism
    case surrealism
    case cubism
    case popArt
}

struct Artist {
    let name: String
    let style: Style
    let yearBorn: Int
}

// Example instances of Artists, use for testing your equatable
let monet = Artist(name: "monet", style: .impressionism, yearBorn: 1840)
let dali = Artist(name: "Salvador Dali", style: .surrealism, yearBorn: 1904)
let andy = Artist(name: "Andy Warhol", style: .popArt, yearBorn: 1928)


/*:
 
 4. Write an iterator for a 2Dimentional array. Eg. Given [[2,5,9], [0, 4, 2], [6, 8, 3]],
 you should be able to iterate through each element sequentially 2,5,9,0,4,2,6,8,3.
 
 ### Hint
 
 There are some protocols you can leverage in the collection data types to help guide you.
 
 
*/

