
import Foundation



// функция генерации случайного массива банкнот
func generateWallet(walletLength: Int) -> [Int] {
//         существующие типы купюр
    let typesOfBanknotes = [50, 100, 500, 1000, 5000]
    // массив купюр
    var wallet: [Int] = []
    // цикл генерации массива случайных купюр
    for _ in 1...walletLength {
    let randomIndex = Int( arc4random_uniform( UInt32( typesOfBanknotes.count-1 ) ) )
        wallet.append( typesOfBanknotes[randomIndex] )
    }
    return wallet
}
func sumWallet(banknotsFunction wallet: (Int)->[Int], walletLength: Int ) -> Int? {
        // вызов переданной функции
        let myWalletArray = wallet( walletLength )
        var sum: Int = 0
        for oneBanknote in myWalletArray {
            sum += oneBanknote
        }
        return sum
}
// передача функции в функцию
sumWallet(banknotsFunction: generateWallet, walletLength: 20) // 6900”


// CLOSURES
var wallet = [10,50,100,100,5000,100,50,50,500,100]

func handle(wallet: [Int], closure: (Int) -> Bool) -> [Int] {
    var returnWallet = [Int]()
    for banknot in wallet {
        if closure(banknot) {
            returnWallet.append(banknot)
        }
    }
    return returnWallet
}
// функция сравнения с числом 100
func compare100(banknot: Int) ->Bool {
    return banknot==100
}
// функция сравнения с числом 1000
func compareMore1000(banknot:Int) -> Bool {
    return banknot>=1000
}
// отбор
let resultWalletOne = handle(wallet: wallet, closure: compare100)
let resultWalletTwo = handle(wallet: wallet, closure: compareMore1000)


// отбор купюр достоинством выше 1000 рублей
// аналог передачи compare100
handle(wallet: wallet, closure: {(banknot: Int) -> Bool in
    return banknot>=1000
})
// отбор купюр достоинством 100 рублей
// аналог передачи compareMore1000
handle(wallet: wallet, closure: {(banknot: Int) -> Bool in
    return banknot==100
})

handle(wallet: wallet, closure: {banknot in
    return banknot>=1000
})

handle(wallet: wallet, closure: {banknot in banknot>=1000})
handle(wallet: wallet, closure: {$0>=1000})
handle(wallet: wallet){$0>=1000}


var a = 1
var b = 2
let closureSum : () -> Int = {
    [a,b] in
    return a+b
}
closureSum() // 3
a = 3
b = 4
closureSum() // 3




func getStringFromBool (bool: Bool) -> String {
    return String(bool)
}
getStringFromBool(bool: true)

func getSumOfPositive (arr: [Int]) -> Int {
    var sum = 0
    for el in arr {
        if el >= 0 {
            sum += el
        }
    }
    return sum
}
getSumOfPositive (arr: [1,-2,3,4,-5])


func getMultiplication(arr: [Int]) -> Int {
    var mult = 1
    if arr.count > 0 {
        for el in arr {
            mult *= el
        }
    } else {
        mult = 0
    }
    return mult
}
getMultiplication(arr:[1,2,3,4])


func getMult(n1: Int, n2: Int) -> Int {
    return n1 * n2
}

func getMult(n1: Double, n2: Double) -> Double {
    return n1 * n2
}

getMult(n1: 4, n2: 5)
getMult(n1: 4.1, n2: 5.2)



// OPPOSITE NUM FUNCS
func reverseNum(num: Int) -> Int {
    var str = ""
    if num > 0 {
        str = "-\(num)"
    } else if num < 0 {
        str = String(num)
        str.remove(at: str.startIndex)
    } else {
        str = "0"
    }
    return Int(str) ?? 0
//    num > 0 ? Int("-\(num)")! : Int(String(num).remove(at: String(num).startIndex))
}
reverseNum(num: -4)
reverseNum(num: 50)


func opposite(_ a: Int) -> Int {
    return -a
}
opposite(-12) //12
opposite(32) //-32




func calcRent(days: Int) -> Int {
    let oneDayCost = 850
    var discount = 0
    
    if days >= 7 {
        discount = 1620
    } else if days >= 3 {
        discount = 550
    }

    return (days * oneDayCost) - discount
}
calcRent(days: 2)



func contains(arr: [Int], num: Int) -> Bool {
    let answer = arr.contains(num) ? true : false
    return answer
}
contains(arr: [1,2,3], num: 4)
contains(arr: [1,2,3], num: 3)



func repeatTimes(str: String, num: Int) -> String {
    var result = ""
    for _ in 0..<num {
        result += str
    }
    return result
}
repeatTimes(str: "Swift", num: 2)
repeatTimes(str: "Xcode", num: 0)

func repeatStr1(_ str: String, _ n: Int) -> String {
    return String(repeating: str, count: n)
}
repeatStr1("Swift", 2) //
repeatStr1("Xcode", 0)


func checkSameSymbols(str1: String, str2: String) -> Bool {
    var arr1 = [Character]
    var arr2 = [Character]
    for i in str1.count {
        arr1.append(i)
    }
    for i in str2.count {
        arr2.append(i)
    }
    return arr1.sorted() == arr2.sorted()
}



checkSameSymbols(str1: "abc", str2: "bca") // true

checkSameSymbols(str1: "abc", str2: "bcaa")
