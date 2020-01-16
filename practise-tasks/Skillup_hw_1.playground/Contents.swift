import UIKit
import Foundation

///////////////////
// LEVEL 1

// Integer variables
var a: Int = 1, b: Int = 2, c: Int = 3, d: Int = 4

// Variables with decimal point
var x: Double = 0.02, y: Double = 120.8

// Multiply integers
let constantaInt = Int(x) * a

// Multiply decimals
let constantaDec = x * Double(a)

// Arifmetic operations with +, -, *, /, %
var sum = a + b + c + d
var subtr = a - b - c - d
var multip = a * b * c * d
var divis = d / b
var reminder = c % b

// Arifmetic operations with +=, -=, *=, /=, %=
sum += 1
subtr -= 1
multip *= 2
divis /= 2
reminder %= 2

//////////////////
//LEVEL 2
//a * x^2 + b * x + c = 0

func calcSolutionsToQuadraticEq(a: Double, b: Double, c: Double) -> String {
    let discriminant = b * b - 4 * a * c

    let x1: Double, x2: Double
    if discriminant > 0 {
        let underSquareRoot = Double(b) * Double(b) - 4 * Double(a) * Double(c)
        let denominator = 2 * Double(a)

        x1 = (Double(-b) + sqrt(underSquareRoot)) / denominator
        x2 = (Double(-b) - sqrt(underSquareRoot)) / denominator
        print("discriminant = \(discriminant), x1 = \(x1), x2 = \(x2)")
        return "x1 = \(x1), x2 = \(x2)"
    } else if discriminant == 0 {
        x1 = Double(-b) / 2 * Double(a)
        x2 = x1
        print("discriminant = \(discriminant), x1 = \(x1), x2 = \(x2)")
        return "x1 = \(x1), x2 = \(x2)"
    } else {
        print("discriminant = \(discriminant), This equation has no solutions")
        return "This equation has no solutions"
    }
}

calcSolutionsToQuadraticEq(a: 2, b: 4, c: 1)

