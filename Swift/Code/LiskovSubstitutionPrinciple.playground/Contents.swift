import UIKit

protocol DuckProtocol {
    func swim()
}

class Duck: DuckProtocol {
    
    func swim() {
        print("I am swimming")
    }
}

class ElectricDuck: Duck {
    
    var turnedOn = false
    
    override func swim() {
        if(!turnedOn) {
            turnOn(true)
        }
        super.swim()
    }
    
    func turnOn(_ turnOn: Bool) {
        turnedOn = turnOn
    }
}


let ducks = [Duck(),ElectricDuck(), Duck(), ElectricDuck()]

for duck in ducks {
//    if let electricDuck = duck as? ElectricDuck  {
//        electricDuck.turnOn(true)
//    }
    duck.swim()
}
