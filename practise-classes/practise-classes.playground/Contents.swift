
// get, set

class Person {
    var name: String
    var surname: String
    
    var fullName: String {
        get {
            return name + " " + surname
        }
        set(anotherNewValue) {
            let array = anotherNewValue.split(separator: " ")
            name = String(array[0])
            surname = String(array[1])
        }
    }
    
    init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
}

let person = Person(name: "Jack", surname: "Ma")
person.fullName
person.name
person.surname
person.fullName = "Zinaida Petrovna"
person.name
person.surname


// class properties

class Car {
    
    //properties
    let products: Int
    let people: Int
    let pets: Int
    class var selfWeight: Int { return 1500 }
    class var maxWeight: Int { return 2000 }
    
    //computed property
    var totalWeight: Int {
        return products + people + pets + Car.selfWeight
    }
    
    // Initializer
    init(products: Int, people: Int, pets: Int) {
        self.products = products
        self.people = people
        self.pets = pets
    }
}


let car = Car(products: 300, people: 300, pets: 50)
car.totalWeight
let maxWeight = Car.maxWeight

if car.totalWeight > maxWeight {
    print("Your car is overloaded by \(car.totalWeight - maxWeight) kg")
}


// Lazy properties

func bigDataProcessingFunc() -> String {
    return "very long process"
}

class Processing {
    let smallData = "small data processing"
    let averageData = "average data processing"
    lazy var bigData = bigDataProcessingFunc()
    
}

let process = Processing()
process
process.bigData
process


// Propery observers
class SecretLabEmployee {
    
    var accessLevel = 0 {
        willSet {
            print("new boss is about to come")
            print("new access level is \(newValue)")
        }
        
        didSet {
            accessToDB = accessLevel > 0 ? true : false
            print("new boss has just come")
            print("last access level was \(oldValue)")
        }
    }
    
    var accessToDB = false
}

let employee = SecretLabEmployee()
employee.accessLevel
employee.accessToDB
employee.accessLevel = 1
employee.accessToDB


// access levels - private or internal



// type aliases

typealias Meter = Int
let length: Meter = 50
let length2 = 20
let lengthSum = length + length2



