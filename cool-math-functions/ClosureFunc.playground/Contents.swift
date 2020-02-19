
// по имени глобальной/вложенной функции.
func outerFunc(arr: [String]) {
    
    for i in arr {
        innerFunc(el: i)
    }
}

func innerFunc(el: String) -> String {
    print(el.uppercased())
    return el.uppercased()
}
outerFunc(arr: ["Alex", "Peter", "Jason"])





// через замыкание
func filterWithClosure(closure: (String) -> String, arr: [String]) {
    for el in arr {
        closure(el)
    }
}

filterWithClosure(closure: { (el) -> String in
    print(el.uppercased())
    return el.uppercased()
}, arr: ["Alex", "Peter", "Jason"])

