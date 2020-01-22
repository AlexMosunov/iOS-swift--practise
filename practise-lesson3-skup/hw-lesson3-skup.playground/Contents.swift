import UIKit

// TASK 1
// tuples
let serverData = (serverCode: 404, error: true, serverMessage: "Failed to load the page")
if serverData.error {
    print(serverData.serverCode, serverData.serverMessage)
}

// optionals
var a: Int = 2
var b: Int? = 3

if b != nil {
    print(a + b!)
}
// OR
if let b = b {
    a + b
}

var c = 10
var d: Int?
c + (d ?? 0)

// Example os usage Optionals
var data: String?
var error: String? = "No internet connection"

if error == nil {
    print("Data sent sucessfully")
    if data != nil {
        print("data has been received: \(data!)")
    } else {
        print("data has not been received")
    }
} else {
    print("Data has not been sent because of error: \(error!)")
}

// TASK 2
var num1 = 10
var num2 = 15

if num1 >= num2 {
    num1 - num2
} else {
    num2 - num1
}
let solution = num1 >= num2 ? num1 - num2 : num2 - num1

// TASK 3 is done in previous hw


// TASK 1 harder
// find max and min digit of 3-digit-number
var givenNumber: Int = 254


func getMaxDigit(threeDigitsNum: Int) -> (Int, Int) {
    let thirdDigit = threeDigitsNum % 10
    let secondDigit = (threeDigitsNum / 10) % 10
    let firstDigit = threeDigitsNum / 100

    let arrayOfDigits = [firstDigit, secondDigit, thirdDigit]
    let maxDigit = arrayOfDigits.max()
    let minDigit = arrayOfDigits.min()
    print("The given number is: \(givenNumber), minimum digit is \(minDigit!), maximum digit is \(maxDigit!)")
    return (minDigit!, maxDigit!)
}
getMaxDigit(threeDigitsNum: givenNumber)



// TASK 2 harder
// find whether there are equal digits in 3-digit-number
func findEqualDigits(threeDigitsNum: Int) {
    let thirdDigit = threeDigitsNum % 10
    let secondDigit = (threeDigitsNum / 10) % 10
    let firstDigit = threeDigitsNum / 100
    
    if firstDigit == secondDigit && thirdDigit == secondDigit {
        print("All three digits are equal and equals \(firstDigit)")
    } else if thirdDigit == secondDigit {
        print("Third digit: \(thirdDigit) and second digit: \(secondDigit) are equal")
    } else if thirdDigit == firstDigit {
        print("Third digit: \(thirdDigit) and first digit: \(firstDigit) are equal")
    } else if firstDigit == secondDigit {
        print("First digit: \(firstDigit) and second digit: \(secondDigit) are equal")
    } else {
        print("There are no equal digits")
    }
}
findEqualDigits(threeDigitsNum: givenNumber)


// TASK 3 harder
// check whether 5-digit-number is a palindrome
func findIfPalindrome(fiveDigitsNum: Int) {
    let fiveDigitsNumString = String(fiveDigitsNum)
    let reversedString = String(fiveDigitsNumString.reversed())
    let reversedNum = Int(reversedString)
    
    if fiveDigitsNum == reversedNum {
        print("The number \(fiveDigitsNum) is a palindrome")
    } else {
        print("The number \(fiveDigitsNum) is NOT a palindrome")
    }
}
findIfPalindrome(fiveDigitsNum: 12321)

