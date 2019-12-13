import Foundation

/*:
 
 # Protocols
 
 A protocol defines a blueprint of methods, properties, and other requirements that
 suit a particular task or piece of functionality.
 
 The protocol can then be adopted by a class, structure, or enumeration to provide
 an actual implementation of those requirements. Any type that satisfies the
 requirements of a protocol is said to conform to that protocol.

 ## Defining and conforming to a Protocol
 
*/



enum Food {
    case fish
    case sandwish
}


protocol Mammal {
    func eat() -> Food
}


struct Orka: Mammal {
    func eat() -> Food {
        return .fish
    }
}


class Human: Mammal {
    func eat() -> Food {
        return .sandwish
    }
}


let peter = Human()
peter.eat()


let myOrka = Orka()
myOrka.eat()


protocol Sandwish {
    var diameter: Int { get set }
}


// Protocol Oriented Programming
