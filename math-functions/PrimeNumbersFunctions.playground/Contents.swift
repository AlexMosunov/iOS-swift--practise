
//FUNCTION TO GET ALL PRIME NUMBERS UNTIL THE GIVEN NUMBER
func getPrimeNumbers(limit: Int) -> [Int] {
    var arrOfPrime:[Int] = []
    if limit == 3 {
        arrOfPrime += [2]
    } else if limit == 4 {
        arrOfPrime += [2, 3]
    } else if limit < 3 {
        print("No primes")
    } else if limit > 4 {
        arrOfPrime = [2,3]

        for num in 4..<limit {
            var notPrime = false
            for i in 2...num/2 {
                if(num % i == 0){
                    notPrime = true
                    break
                }
            }
            if notPrime == false {
                arrOfPrime += [num]
            }
        }
    }

    print(arrOfPrime)
    return arrOfPrime
}
getPrimeNumbers(limit: 4)


//FUNCTION TO GET PARTICULAR NUMBER OF PRIME NUMBERS IN ASCENDING ORDER
func getPrimeNumber(howMany: Int) -> [Int] {
    var arrOfPrime:[Int] = []
    
    if howMany == 1 {
        arrOfPrime = [2]
    } else if howMany == 2 {
        arrOfPrime = [2,3]
    } else if howMany > 2 {
        for num in 4...Int.max {
            var notPrime = false
            for i in 2...num/2 {
                if(num % i == 0){
                    notPrime = true
                    break
                }
            }
            if notPrime == false {
                arrOfPrime += [num]
            }
            if arrOfPrime.count == howMany {
                break
            }
        }
    }
    print(arrOfPrime)
    return arrOfPrime
}
getPrimeNumber(howMany: 20)

