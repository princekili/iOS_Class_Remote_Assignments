import UIKit
/*:
  # Object-Oriented Swift
 1. Declare a class` ​Animal`​ with property ​gender​ and method ​`eat()​`. The data type of gender should be enum `Gender` as below and when you call `eat()` method, it will print 'I eat everything!'
*/
enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    var gender: Gender
    
    init(gender: Gender) {
        self.gender = gender
    }
    
    func eat() {
        print("I eat everything!")
    }
}

let dog = Animal(gender: Gender.female)
dog.eat()
/*:
 2. Declare three classes: `​Elephant`​, `T​iger`, `Horse`​ that inherits from `Animal` and override the `eat` method to print what they usually eat.
*/
class Elephant: Animal {
    override func eat() {
        print("I eat grass!")
    }
}
let elephant = Elephant(gender: Gender.female)
elephant.eat()


class Tiger: Animal {
    override func eat() {
        print("I eat meat!")
    }
}
let tiger = Tiger(gender: Gender.female)
tiger.eat()


class Horse: Animal {
    override func eat() {
        print("I eat grass and wheat!")
    }
}
let horse = Horse(gender: Gender.male)
horse.eat()
/*:
 3. Declare a class ​`Zoo`​ with a property ​weeklyHot​ which means the most popular one in the zoo this week. The codes below can’t work correctly, please find what data type should A be and solve the problem. Be ​noticed that ​tiger​, ​elephant​, ​horse​ are instances of class `Tiger`, `Elephant` and `Horse`.
*/
class Zoo {
    var weeklyHot: Animal
    
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: Tiger(gender: Gender.female))

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse
/*:
 4. What’s the difference between ​Struct​ and ​Class​ ?
    - Classes are reference type; Structs are value type.
    - Copies of structs are always unique, whereas copies of classes actually point to the same shared data.
    - You can define a class as being based off another class, adding new properties and methods you want.
    - Classes don't come with memberwise initializers. This means if you have properties in your class, you must always create your own initializer.
    - Classes have deinitializers, which are methods that are called 'when an instance of the class is destroyed', but structs do not.
    - Variable properties in constant classes can be modified freely, but variable properties in constant structs cannot.
*/
/*:
 5. What’s the difference between ​instance method​ and ​type method​ ?

    - 'Instance methods' are called on an instance of a particular type; whereas 'type methods' are called on the type itself.
    - You indicate type methods by writing the 'static' keyword before the method’s 'func' keyword. Classes can use the 'class' keyword instead, to allow subclasses to override the superclass’s implementation of that method.
*/
/*:
 6. What does ​Initilizer​ do in class and struct ?
    - Classes and structures must set all of their stored properties to an appropriate initial value by the time an instance of that class or structure is created. So you can set an initial value for a stored property within an initializer.
    - Initializers are special methods (or func) that provide different ways to create a new instance of a particular type.
    - Their primary role is to ensure that new instances of a type are correctly initialized before they are used for the first time.
*/
/*:
 7. What does ​self​ mean in an instance method and a type method ?
    - For instance methods, every instance of a type has an implicit property called 'self', which is exactly equivalent to the instance itself. You use the 'self' property to refer to the current instance within its own instance methods.
    - For type methods, the implicit 'self' property refers to the type itself, rather than an instance of that type.
    - You use the 'self' property to distinguish between the property name and the parameter name when they are same. 'self.name' refers to the property, whereas 'name' refers to the parameter.
*/
/*:
 8. What’s the difference between ​reference type​ and ​value type​ ?
    - Swift calls classes "reference types" because objects are just shared references to the real value. When you copy a class, each copy of an object points at the same original object, so if you change one they all change.
    - Swift calls structs "value types" because they just point at a value. When you copy a struct, the whole thing is duplicated, including all its values. This means that changing one copy of a struct doesn't change the other copies – they are all individual.
*/
/*:
 # Enumerations and Optionals in Swift

 1. There are several gasoline types, 92, 95, 98, and diesel that we can use enum to model them.
     - Please create enum named ​Gasoline​ to model gasoline.
     - Every kind of gasoline has its price. Please create a method named ​getPrice in Gasoline enum that will return different price depending on different gasoline.
     - Please establish for . The data type of raw value should be String. For example, should be “92”.
*/
enum Gasoline: String {
    case oilDiesel = "D"
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case others = "N/A"
    
    func getPrice(of gasoline: Gasoline) -> String {
        switch gasoline {
        case .oilDiesel:
            return "20.0"
        case .oil92:
            return "24.0"
        case .oil95:
            return "28.0"
        case .oil98:
            return "30.0"
        default:
            return "Sorry, we don't provide this."
        }
    }
}

Gasoline.oil92.getPrice(of: .oil92)
Gasoline.getPrice(.oil92) // Why didn't it work?
//getPrice(of: .oil92) // For 'func' outside the enum

Gasoline.oil92.rawValue
/*:
 - Please explain what is enum ​associate value​ and how it works.

Associated values let you attach additional information to your enums so they can represent more nuanced data. For example, we might define an enum that stores various kinds of activities. With associated values, we can add additional details like following:
*/
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(song: String)
}

let singing = Activity.singing(song: "Perfect")
/*:
2. Optional is a very special data type in Swift. Take ​ ​var​ a: ​Int​? = ​10​ ​ ​for example, the value of ​a​ will be ​nil​ or I​ nt​. You should learn how to deal with optional data type.
 - People would like to have pets, but not everyone could have one. Declare a class ​Pet​ with ​name​ property and a class ​People​ with ​pet​ property which will store a Pet instance or nil​. Please try to figure out what data type is suitable for these properties in Pet and People.
 - Please create a People instance and use ​guard let​ to unwrap the ​pet property.
*/
class Pet {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class People {
    var pet: Pet?

    init(pet: Pet?) {
        guard let pet = pet else {
            print("No pet.")
            return
        }
        self.pet = pet
        print("Yes")
    }
}
let myDog = Pet(name: "Mei mei")
let people = People(pet: myDog)
people.pet
let people2 = People(pet: nil)
people2.pet
/*:
- Please create another People instance and use ​if let​ to unwrap the ​pet property.
*/
//class People {
//    var pet: Pet?
//
//    init(pet: Pet?) {
//        if let pet = pet {
//            self.pet = pet
//            print("Yes")
//        } else {
//            print("No pet")
//        }
//    }
//}
//
//let myDog = Pet(name: "Mei mei")
//let people = People(pet: myDog)
//people.pet
/*:
 # Protocol in Swift
1. Declare a struct ​Person​ with a ​name​ property type String and a protocol name PoliceMan​. There is only one method ​arrestCriminals​ with no argument and return void in the protocol.

2. Make struct ​Person​ conform to ​PoliceMan​ protocol.

4. Add a property ​toolMan​ to the struct Person with data type ​ToolMan​.
*/
protocol PoliceMan {
    func arrestCriminals()
}

struct Person: PoliceMan {
    var name: String
    var toolMan: ToolMan
    
    func arrestCriminals() { }
    
    init(name: String, toolMan: ToolMan) {
        self.name = name
        self.toolMan = toolMan
    }
}

/*:
3. Declare a protocol ​ToolMan​ with a method ​fixComputer​ that has no argument and return void.
*/
protocol ToolMan {
    var level: String { get set }
    
    func fixComputer()
}

/*:
5. Declare a struct named ​Engineer​ that conforms to the T​oolMan​ protocol.
*/
struct Engineer: ToolMan {
    var level: String
    
    func fixComputer() { }
}

/*:
6. Create a Person instance with the name Steven and also create the relative data you need to declare this instance.
 */
let engineer = Engineer(level: "Lv99")
let person = Person(name: "Steven", toolMan: engineer)
/*:
 # Error Handling in Swift
Read the code above first and paste it in the playground file, there is an error inside the code. Please solve the error ​by adding additional code​ in the file. Do not remove or modify the code above. Call ​guess(number:)​ and pass 20 as the argument after you fix the problem.
*/
enum GuessNumberGameError: Error {
    case ​wrongNumber
}

class GuessNumerGame {
    var targetNumber = 10
    
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.​wrongNumber
        }
        
        print("Guess the right number: \(targetNumber)")
    }
}

let round1 = GuessNumerGame()

do {
    try round1.guess(number: 20)
} catch {
    print("Wrong number!")
}
