//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let arrayofOne = [1]

let median = arrayofOne.count / 2
let leftValues = Array(arrayofOne[0..<median])
let rightValues = Array(arrayofOne[median + 1 ..< arrayofOne.count])


struct Person {
    let name: String
}

struct PersonView {
    var person: Person
    var view: UIView
}

let personViewA = PersonView(person: Person(name: "Joe"), view: UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100)))
var personViewB = personViewA
personViewB.person = Person(name: "Julie")
assert(personViewA.view === personViewB.view)

print(personViewB.view.backgroundColor)
personViewA.view.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
print(personViewB.view.backgroundColor)
#imageLiteral(resourceName: "diagram.png")


