import UIKit

// TASK 1
var variable1 = ""
variable1 = "Hello"

var variable2 = "Hello again"

if variable1 != variable2 {
    variable1 = variable2
    print(variable1, variable2)
}


// TASK 2 - check which string is longer and print 1st and last char of the longest string
let stringConst1 = "My name is Alex"
let stringConst2 = "Today is a beautiful day"

func getCharsOfLongestString(string1: String, string2: String) {
    if string1.count > string2.count {
        print("First character: \(stringConst1[string1.startIndex])")
        print("Last character: \(stringConst1[string1.index(before: string1.endIndex)])")
    } else if string1.count < string2.count {
        print("First character: \(string2[string2.startIndex])")
        print("Last character: \(string2[string2.index(before: string2.endIndex)])")
    } else {
        print("Strings are of equal length")
    }
}
getCharsOfLongestString(string1: stringConst1, string2: stringConst2)


// TASK 3 - print each symbol of the reversed string
let sixCharLengthString = "Helloo"

func reverseAndPrintChar(str: String) {
    let reversedStr = String(str.reversed())
    for char in reversedStr {
        print(char)
    }
}

reverseAndPrintChar(str: sixCharLengthString)
