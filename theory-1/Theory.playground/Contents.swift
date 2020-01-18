import UIKit

var str = "Hello, playground"
let defaultName = "Steve"
var name: String? = nil

let myName = name ?? defaultName

let arrayOne = Array<Int>()
let arrayTwo = [Int]()
let arrayThree: [Int] = []  //most often
var arrayFour = [1, 2, 3, 4, 5, 6, 7]
var arrayFive = [Int](repeating: 10, count: 10)

//arrayFour += arrayFive

//arrayFour[2]
arrayFour[1...3] = [15]
arrayFour
arrayFour.count
arrayFour.append(100)
arrayFour.insert(105, at: 1)
var deletedValue = arrayFour.remove(at: 4)
arrayFour
deletedValue


//dictionaries
var dictOne = Dictionary<String, String>()
var dictTwo = [String: String]()
var dictThree: [String: String] = [:]
var nameAges = [
    "Ivan"     :   30,
    "Vitalik"  :   30,
    "John"     :   26
]

nameAges.count
nameAges.isEmpty
nameAges["Ivan"] = 35

let deletedAge = nameAges.updateValue(40, forKey: "Ivan")
nameAges

nameAges["Ivan"] = nil
nameAges


let deletedValue2 = nameAges.removeValue(forKey: "Vitalik")
nameAges

nameAges = [:]


// Sets
// Хранят только значения (неупорядочные) и содержат только уникальные значения одного типа
let setOne = Set<String>()
let setTwo: Set<String> = []
var setThree: Set = [1, 2, 3, 4]
 
setThree.insert(5)
setThree.insert(6)

setThree.isEmpty
setThree.count
setThree.remove(6)
setThree

let boolValue1 = setThree.contains(1)

let setUno: Set = [1, 2, 3, 4]
let setDos: Set = [1, 5, 6, 7, 8, 9]

let unitedArray = setUno.union(setDos).sorted()
let commonValuesSet = setUno.intersection(setDos)

let notRepeatedValuesArray = setUno.symmetricDifference(setDos)
let substracetdValAr = setUno.subtracting(setDos).sorted()
let substracetdValAr2 = setDos.subtracting(setUno).sorted()


// if else statements
let a = 1
let b = 5

if a == b { // создает новую область видимости, все что в фигурных скобках - имеет свою область видимости недоуступную снааружи
    print("a equals b")
} else if a < b {
    print("b exceeds a by \(b - a)")
}

if 1...5 ~= b { // принадлежит ли этому диапазону
    print("b is in the diapason")
}

// guard

func someFunc(a: Int, b: Int) {
    guard a == b else { return } // если а равно б то продолжать выполнеине функции, в противном случае возвратить
    guard a == 11 else { return }
}

for i in 1...5 {
    guard i != 3 else {continue}
    print(i)
}


// switch
let totalScore = 50

switch totalScore {
case 10, 15:
    print("not a jedi")
case 20:
    print("still not a jedi")
case 50..<100:
    print("almost a jedi")
case 100:
    print("you're a jedi")
default:
    break
}


// for in cycle
let arrayOfStrings = ["Alex", "Stev", "Brad"]
for i in arrayOfStrings {
    print(i)
}

let numberTest = 195
var newNumArray: [Character] = []

for num in String(numberTest) {
    print(num)
    newNumArray.append(num)
}
print(newNumArray)



let dictOfNames = ["Ivan": 20, "Max": 15, "Daniel": 4]
for (name, age) in dictOfNames {
    print("\(name) is \(age) years old")
}


// while

var myTimer = 5
while myTimer > 0 {
    print("for", myTimer)
    myTimer -= 1
}

var variable = 0
repeat {
    print("while", variable)
    variable += 1
} while variable < 0

// Функции

// ничкего не принимает и ничего не возвращает

func sayHello() {
    print("Hello")
}
sayHello()

// принимает один параметр
func oneParam(param: Int) {
    var param = param
    param += 1
}
oneParam(param: 10)

// не принмает праметры , но возарвщвет значение

func returnValue() -> Int {
    return 15
}
let someVal = returnValue()

// принимает несколько параметров и возвращает значение
func giveMeYour(name: String, andSecondName: String) -> String {
    return "Your full name is \(name) \(andSecondName)"
}
giveMeYour(name: "Alex", andSecondName: "Moso")

// принимает массив в качестве параметра и использует вложенную функцмю для работы
func calcMoneyIn(array: [Int]) -> Int {
    var sum = 0
    func sayMoney() {
        print(sum)
    }
    
    for i in array {
        sum += i
    }
    sayMoney()
    return sum
    
}
calcMoneyIn(array: [100, 50, 200, 30])


// принимает переменное число параметров
func findSum(ofIntegers integers: Int...) -> Int {
//    print(integers)
    var sum = 0
    
    for item in integers {
        sum += item
    }
    return sum
}

findSum(ofIntegers: 1, 2, 3, 4, 5, 6, 7)

// имена параметров функции

func sum(_: Int) -> Int {
    return 10
}

// функция в качестве возвращаемого значения

func whatToDo(missed: Bool) -> ((Int) -> Int) {
    func missedCountUp(input: Int) -> Int { return input + 1}
    func missedCountDown(input: Int) -> Int { return input - 1}
    
    return missed ? missedCountUp : missedCountDown
}

var missedCount = 0
missedCount = whatToDo(missed: true)(missedCount)
missedCount = whatToDo(missed: false)(missedCount)
