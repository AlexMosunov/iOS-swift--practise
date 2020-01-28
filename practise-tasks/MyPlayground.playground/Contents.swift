

//var str = "Hello, playground"
//var tupleOne = (200)
//var tupleTwo = (200, 201)
//var tupleThree: (Int, Int) = (1, 100)

//var tupleAddress = ("Vologda", "Russia", "Earth")
//tupleAddress.2 = "Mars"
//var (city, country, planet) = tupleAddress
//print(planet)

//var tupleAboutMe = ("Mike", 37)
//var (name, age) = tupleAboutMe
//tupleAboutMe.0 = "Eridar"
//print(name)
//tupleAboutMe
//

//let myName = "Alex"
//var myAge: UInt8 = 27
//var myTuple: (name: String, age: UInt8)
//myTuple.name = myName
//myTuple.age = myAge
//print(myTuple)
//

//
//var korteg: (Int16, Int16, Int16)
//let (num1, num2) = (10, 5)
//korteg = (Int16(num1), Int16(num2), Int16(num1 + num2))
//
//var tupleOne = (first: 1, second: 2)
//var tupleTwo = (3, 4)
//tupleTwo = tupleOne
//tupleTwo.0
//
//
//var v1 = 12
//var v2 = 21
//(v1, v2) = (v2, v1)
//
//let myTup = (movie: "Avengers", number: 25)
//let (movie, number) = myTup
//
//typealias Man = (film:String, number:Int)
//var tuple2: Man = ("Alice", 777)
//tuple2.film
//
//

//
//let rangeOne = ...10
//type(of: rangeOne) // PartialRangeThrough<Int>
//let rangeTwo = ..<10
//type(of: rangeTwo)
//var range = 1...10
//range.hashValue
//var range2 = 1..<10
//range2.hashValue
//
//var a = 1...9

//var range = "a"..."z"
//var rangeTwo = "1"..."y"
//range = rangeTwo
//range
////
//var range = 1..<10
//var range2 = 1...
//var range3 = ...5
//var range4 = -100...100
//type(of: range)
//let range = -100...100
//var item: UInt = 21
//var bool: Bool = range.contains(Int(item))
//
//
//var rangeFloat1: ClosedRange<Float> = 1.0...2.0
//var rangeFloat2 = Float(1)...2

//var arr1 = [1,2,3,4,5,6,7,8,9,10]
//var arr2 = Array(1...10)
//var arr3 = Array(arrayLiteral: 1,2,3,4,5,6,7,8,9,10)
//arr2 == arr1
//var arr4 = Array(repeating: 1, count: 5)

//var arr = [2, 5 ,10, 46]
//arr.insert((arr[0] + arr[3]), at: 2)
//arr.remove(at: 1)
//arr.remove(at: 3)

//let arr = Array(1...100)
//var arr2: [Int] = []
//arr2 = Array(arr[24]...arr[49])
//
//var arr: [Character] = ["a", "b", "c", "d", "e"]
//arr.insert("z", at: 1)
//var i: UInt8 = UInt8(arr.count)
//
//arr[arr.count - 2]

//var arr = [Array<Character>]()
//arr.append(["a", "b", "c"])
//arr.append(["d", "e", "f"])
//arr.remove(at:1)
//var arr2 = arr.remove(at: 0)
//print(arr2[0])
//var firstArray = [1,2,3,4,5]
//var secondArray = firstArray.dropLast()
//
//var set1 = [1, 2, 3, 4, 5]
//var set2: Set = [1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
//var set3: Set = ["a","c"]
//var set4 = Set(arrayLiteral: -0, +0, 1, 2, 3)
//var set5 = Set(arrayLiteral: 0, 1, 2, 3, 4)
//var mySet:Set<Double> = []
//mySet.insert(13.4)
//print( type (of: mySet.count ) )

//var setA: Set = [1, 2, 3, 4, 5]
//var setB = Set( arrayLiteral: 1, 2, 3, 4, 5 )
//type(of:setA) // Set<int>.Type
//type(of:setB)

//var setOne: Set = [0, 1, 2, 3]
//var setTwo: Set = [0, 2, 4, 6]
//var resultSet = setOne.union(setTwo)
//resultSet.remove(4)
//resultSet

//var taskSet1 = Set(1...10)
//var taskSet2 = Set(5...15)
//var taskSet3 = taskSet1.intersection(taskSet2)
//var taskSet4 = taskSet1.symmetricDifference(taskSet2)
//var count: UInt8 = UInt8(taskSet4.count)
//var dict4 = Dictionary(uniqueKeysWithValues: [(1,2), (3,4), (5,6)])

//var dict: Dictionary<String, Character> = ["String" : "A"]
//
//type(of: dict)
//var dict2 = ["str" : Character("a")]
//type(of: dict2)
//var dict3 = Dictionary(uniqueKeysWithValues: [("st", Character("a"))])
//type(of: dict3)
//var myArray1: Array<UInt> = [1,2,3,4,5]
//var myDict1 = [1:2, 3:4, 5:6]
//var result = myArray1.count + Int(myArray1[3]) + myDict1.count
//myDict1.count

//var dict: Dictionary<Int, String> = [1 : "AAA", 2 : "AAB", 3 : "ABB"]
//let nabor = Set(dict.keys)
//let massiv = Array(dict.values)

//let superDict = [2001: ["Алексей","Елена"], 2002:["Василий", "Ольга", "Евгений"]]
//type(of:superDict) //Dictionary<Int, Array<String>>.Type
////2)
//let dictElCount = superDict.count
////3)
//let arrayFromDict = Array(repeating: dictElCount, count: dictElCount)
//type(of: arrayFromDict) //Array<Int>.Type

var swift = "Swift"
let char: Character = "A"
var arr = Array(repeating: String(char), count: swift.count)
swift = String(char)
