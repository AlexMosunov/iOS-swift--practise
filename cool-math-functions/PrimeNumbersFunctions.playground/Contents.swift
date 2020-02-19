

// function to find prime numbers
func calcPrime(arr: [Int], limit: Int, howMany: Int?) -> [Int] {
    var arrOfPrime = arr + [2,3]
    
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
        if howMany != nil, arrOfPrime.count == howMany! {
            break
        }
    }
    
    return arrOfPrime
}


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
        
        // Function to find prime numbers
        arrOfPrime += calcPrime(arr: arrOfPrime, limit: limit, howMany: nil)
        
    }
    
    print(arrOfPrime)
    return arrOfPrime
}
getPrimeNumbers(limit: 100)


//FUNCTION TO GET PARTICULAR NUMBER OF PRIME NUMBERS IN ASCENDING ORDER
func getPrimeNumber(howMany: Int) -> [Int] {
    var arrOfPrime:[Int] = []
    
    if howMany == 1 {
        arrOfPrime = [2]
    } else if howMany == 2 {
        arrOfPrime = [2,3]
    } else if howMany > 2 {
        
        // Function to find prime numbers
        arrOfPrime += calcPrime(arr: arrOfPrime, limit: Int.max, howMany: howMany)
    }
    print(arrOfPrime)
    return arrOfPrime
}
getPrimeNumber(howMany: 20)


//FUNCTION TO GET PARTICULAR NUMBER OF PRIME NUMBERS IN ASCENDING ORDER UNTIL THE GIVEN NUMBER
func getPrimeNumbersUntil(limit: Int, howMany: Int) -> [Int] {
    var arrOfPrime:[Int] = []
    if limit == 3 {
        arrOfPrime += [2]
    } else if limit == 4 {
        arrOfPrime += [2, 3]
    } else if limit < 3 {
        print("No primes")
    } else if limit > 4 {
        
        // Function to find prime numbers
        arrOfPrime += calcPrime(arr: arrOfPrime, limit: limit, howMany: howMany)
        
    }
    
    print(arrOfPrime)
    return arrOfPrime
}
getPrimeNumbersUntil(limit: 100, howMany: 20)



//FUNCTION TO GET ALL PRIME NUMBERS UNTIL THE GIVEN NUMBER - DIFFERENT SOLUTION
func getPrimeNumbers2(limit: Int) -> [Int] {
    var arr = [Int]()
    
    for i in 0...limit {
        arr.append(i)
    }
    
    arr[1] = 0
    var i = 3
    
    while i <= limit {
        if arr[i] != 0 {
            var j = i + i
            while j <= limit {
                arr[j] = 0
                j += i
            }
        }
        i += 1
    }
    
    var setFromArr = Set(arr)
    setFromArr.remove(0)
    setFromArr.remove(4)
    let result = setFromArr.sorted()
    
    print(setFromArr.sorted())
    return result
}

getPrimeNumbers2(limit: 100)
