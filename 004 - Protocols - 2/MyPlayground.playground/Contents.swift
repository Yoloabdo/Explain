import UIKit

/*
 ## Inheritance and Protocols
 
 Protocols can be inherited by classes, structs, enums or other protocols
 
 A class, struct or protocol can inherit multiple protocols
 
 A class on the other hand can only inherit from one Super class(Base class)
 
*/



// Protocol Definitions

protocol CanRead {}
protocol CanSwim {}
protocol CanFly {}


struct Human: CanSwim, CanRead {
    
}

struct Fish: CanSwim { }


/*:

## Protocol Extensions

Protocols on their own do not have any functionality, they define contracts
that an conformer must adhere to. To add functionality to a protocol, we can
extend it.
*/


protocol GameCharcter {
    var health: Int { get set }
    var strenght: Int { get }
    var aim: Int { get set }
}


struct Player: GameCharcter {
    var health: Int
    var aim: Int
}

struct Hero: GameCharcter {
    var health: Int
    var strenght: Int
    var aim: Int
}


/*:
 ## Restricting Protocols to specific types
 
 We can restrict protocols to specific instance types by using the ```where``` keyword and ```Self``` referring to the conforming instance
 
*/


extension GameCharcter where Self == Player {
    var strenght: Int {
        return 200
    }
}


let player = Player(health: 200, aim: 50)

let char = player as GameCharcter

//char.strenght = 200
char.strenght


protocol TapDetectionDelegate: AnyObject {
    func didTapView(_ view: UIView)
}


