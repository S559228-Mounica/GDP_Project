import UIKit

var greeting = "Hello, playground"

struct Town{
    var population = 5_422
    var numberOfStopLights = 4
    
    func printDescription(){
        print("Population: \(myTown.population), number of stoplights: \(myTown.numberOfStopLights)")
    }
    
    mutating func changePopulation(by amount:Int){
        population += amount
        print("invoked")
    }
}

//myTown.printDescription()


class Monster{
    var town: Town?
    var name = "Monster"
    
    func terrorizeTown(){
        if town != nil{
            print("\(name) is terrorizing a town!")
        }else{
            print("\(name) is not found in town!")
        }
    }
}

let genericMonster = Monster()
genericMonster.town = myTown
//print(genericMonster)
print(myTown)
genericMonster.terrorizeTown()


class Zombie: Monster{
    var walksWithLimp = true
    
    final override func terrorizeTown() {
        town?.changePopulation(by: -10)
        super.terrorizeTown()
    }
}
var myTown = Town()
myTown.changePopulation(by: 500)
//myTown.printDescription()
let fredZombie = Zombie()
fredZombie.town = myTown
fredZombie.town?.printDescription()
fredZombie.terrorizeTown()
myTown.printDescription()
fredZombie.town?.printDescription()
