
//TASK 1
//calculate sum and multiplication of all the digits of any random given number
func sumOfDigitsOfThe(number: Int) {
    var number = number
    var array: [Int] = []
    var sum = 0
    var multiplication = 1
    
    for _ in 1...String(number).count {
        array.append(number % 10)
        number /= 10
    }
    for digit in array {
        sum += digit
        multiplication *= digit
    }
    
    print("Sum: \(sum), Multiplication: \(multiplication)")
}

sumOfDigitsOfThe(number: 9999999999)


//TASK2
//raise given number to given power
func raise(number: Int, toPowerOf: Int) {
    
    var raisedNumber = 1
    for _ in 1...toPowerOf{
        raisedNumber *= number
    }
    print(raisedNumber)
}
raise(number: 9, toPowerOf: 10)


//TASK 3
// Given array type float with random number of elements. calculate average of the elements.
func calcAverage(array: [Float]) {
    var sum: Float = 0
    for i in 0..<array.count{
        sum += array[i]
    }
    print("Sum: \(sum)")
    let average = sum / Float(array.count)
    print("average is: \(average)")
}

calcAverage(array: [1.2, 3.4, 4.566, 1.95])




