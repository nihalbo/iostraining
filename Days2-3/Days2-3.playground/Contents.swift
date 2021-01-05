import UIKit

var str = "Hello, playground"

var line = """
owief
weifj
wefioj
"""

var bool1 = true
var score = 85
var results = "the test results are here: \(score)"

let taylor = "swfit" //constant


let album: String = "Reputation"
let age: Int = 9

let beatles = ["john","paul","george","ringo"]
beatles[1]
//for sets items aren't stored in any order and items are all unique

let colors = Set(["red","green","blue"])

//tuples allow me to store several values in a single value, fixed in size, no change in type of items in a tuple
var name = (first: "Taylor", last: "Swift")
name.0

//dictionaries

let heights = [
    "Taylor swift": 1.78,
    "Ed Sheeran": 1.73
]

heights["Taylor Swift"]

let favIceCreawm = [
    "paul":"Chocolate",
    "sophie":"vanilla"
]


//enumers

enum Result {
    case Success
    case failure
}

let result4 = Result.failure

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

//enum raw values

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)


//simple arithmetics stuff

var scoree = 95
scoree -= 5
//score turns into 90

var boolone = true
var bool2 = true
if boolone && bool2{
    print("yepp")
}else{
    print("Regular Cards")
}

//ranges on ..< and ... depending on whether the last number should be excluded or included

//day 4

var count = [0,4,2,1,54,6]

for number in count{ //for loop
    print("number is \(number)")
}

//while

var number = 0
while number <= 20{
    print(number)
    number+=1
}

//repeat loops
repeat {
    print(number)
    number+=1
} while number <= 20

while(true){
    break
}

for i in 1...10{
    if i%2 == 1{
        continue //in order to skip items
    }
    print(i)
}
//day 6

//fucntion example

func square(number: Int){ //can also return values by specifying -> INt after
    print(number * number)
}

print(square(number: 4))



//closures
let driving = {print("I'm Driving")}
//shrthand parameter names $0 and $1

//structs

struct Sport {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}


let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)




//property observers

struct Progress {
    var task: String
    var amount: Int {
        didSet{
            print("\(task) is now\(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

//in order to change a property inside method, mutating must be used

//string.sort, string. count, strong.has prefix, bunch of properties

var something = ["weofij"]
something.append("wiefj")

// initializers

struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}
//var user = user()
//user.username = "twostraws"

//reffering to current instance
//self to point to whatever instance being used
// kind of like this in java
struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}


//lazy properties

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Personn {
    var name: String
    lazy var familyTree = FamilyTree()// will only create the family tree struct when it's first accessed

    init(name: String) {
        self.name = name
    }
}

var ed = Person(name: "Ed")

//static properties, already understood from java class last yearmn same w access control, private vs public


//day 10

class Dog{
    var name: String
    init(name: String){
        self.name = name
    }
}
//similaar to structs, both allow you to create own types with properties and emthods


class Poodle: Dog{ //inheritance
    override init(name: String){//overiding allows a child class to replace parent
        super.init(name:name)
    }
}

//final keyword before class stop other classes from inheriting from it

//classes don't enforce constants as strongly as structs,and if a property is declared as a varible it an be cahgned regardles of how the class instance was created

//protocols and extensions

protocol Identifiable {
    var id: String { get set }
}

//protocols define what methods and properties a particular type must have, but not implementations

extension Int{
    func squared() -> Int{
        return self*self
    }
}
var inte = 5
print(inte.squared())

//can add extensions to protocols as well

var agee: Int? = nil//optionals
agee = 38


