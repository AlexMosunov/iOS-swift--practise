///////////////////////////////
// TASK 1
class Tile {
    var brand: String
    var sizeHeight: Double
    var sizeWidth: Double
    var price: Double
    
    init(brand: String, sizeHeight: Double, sizeWidth: Double, price: Double) {
        self.brand = brand
        self.sizeHeight = sizeHeight
        self.sizeWidth = sizeWidth
        self.price = price
    }
    
    func description() {
        print("This is \(brand) tile, with height of \(sizeHeight) cm and width of \(sizeWidth) cm. It costs \(price) dollars")
    }
}

let tile1 = Tile(brand: "Costco", sizeHeight: 24.5, sizeWidth: 10.3, price: 20.5)
let tile2 = Tile(brand: "Superbrand", sizeHeight: 20.0, sizeWidth: 20.5, price: 32)

tile1.description()
tile2.description()

///////////////////////////////
// TASK 2

class Student {
    var surname: String
    var initials: String
    var groupNum: Int
    var grades: [Int]
    
    init(surname: String, initials: String, groupNum: Int, grades: [Int]) {
        self.surname = surname
        self.initials = initials
        self.groupNum = groupNum
        self.grades = grades
    }
}

let student1 = Student(surname: "Smith", initials: "A.W.", groupNum: 2, grades: [4, 5, 5, 4, 5])
let student2 = Student(surname: "Smith2", initials: "A.W.", groupNum: 3, grades: [4, 5, 5, 4, 5])
let student3 = Student(surname: "Smith3", initials: "A.W.", groupNum: 24, grades: [4, 2, 3, 1, 5])
let student4 = Student(surname: "Smith4", initials: "A.W.", groupNum: 21, grades: [4, 5, 5, 2, 5])
let student5 = Student(surname: "Smith5", initials: "A.W.", groupNum: 2, grades: [4, 5, 3, 4, 5])
let student6 = Student(surname: "Smith6", initials: "A.W.", groupNum: 42, grades: [4, 5, 2, 4, 5])
let student7 = Student(surname: "Smith7", initials: "A.W.", groupNum: 24, grades: [4, 5, 2, 4, 5])
let student8 = Student(surname: "Smith8", initials: "A.W.", groupNum: 3, grades: [4, 5, 5, 4, 5])
let student9 = Student(surname: "Smith9", initials: "A.W.", groupNum: 3, grades: [4, 2, 1, 4, 5])
let student10 = Student(surname: "Smith10", initials: "A.W.", groupNum: 2, grades: [4, 5, 5, 4, 5])

var arrayOfStudents = [student1, student2, student3, student4, student5, student6, student7, student8, student9, student10]

func highGraders(arr: [Student]) {
    
    for student in arrayOfStudents {
        if student.grades.allSatisfy({$0 >= 3}) {
            print("\(student.surname), group number: \(student.groupNum)")
            
        }
    }
}
highGraders(arr: arrayOfStudents)


///////////////////////////////
// extra TASK 1

class miniCalc {
    var num1: Int
    var num2: Int
    
    init(num1: Int, num2: Int) {
        self.num1 = num1
        self.num2 = num2
    }
    
    func printNums() {
        print("num1: \(num1), num2: \(num2)")
    }
    
    func change(num1: Int, num2: Int) {
        self.num1 = num1
        self.num2 = num2
    }
    
    func getSum() -> Int {
        return num1 + num2
    }
    
    func getBiggestNum() -> Int {
        return num1 > num2 ? num1 : num2
    }
}

var example1 = miniCalc(num1: 4, num2: 8)
example1.change(num1: 15, num2: 5)
example1.printNums()
example1.getSum()
example1.getBiggestNum()



///////////////////////////////
// extra TASK 2

class Book {
    var numOfPages: Int
    var author: String
    var genre: String
    
    init(numOfPages: Int, author: String, genre: String) {
        self.numOfPages = numOfPages
        self.author = author
        self.genre = genre
    }
}


class Library {
    
    var arrayOfBooks = [
        Book(numOfPages: 230, author: "Tolstoy", genre: "novel"),
        Book(numOfPages: 120, author: "Dan Brown", genre: "science-fiction"),
        Book(numOfPages: 540, author: "Mark Twayne", genre: "adventure")
    ]
    
    func addBook (book: Book) {
        arrayOfBooks.append(book)
    }
    
    func deleteBook (index: Int) {
        arrayOfBooks.remove(at: index)
    }
    
    func getBooks (author: String?, genre: String?) -> [Book] {
        var searchingBooks = [Book]()
        author ?? ""
        genre ?? ""
        
        for book in arrayOfBooks {
            if author == book.author || genre == book.genre {
                searchingBooks.append(book)
            }
        }
        return searchingBooks
    }
    
    func sortByNumOfPages(increasing: Bool) {
        if increasing {
            arrayOfBooks.sort(by: { (val1, val2) -> Bool in return val1.numOfPages < val2.numOfPages})
        } else {
            arrayOfBooks.sort(by: { (val1, val2) -> Bool in return val1.numOfPages > val2.numOfPages})
        }
    }
    
}


let myLibrary = Library()

myLibrary.sortByNumOfPages(increasing: true)
myLibrary.arrayOfBooks

myLibrary.addBook(book: Book(numOfPages: 390, author: "George Washington", genre: "Declaration of Independence"))
myLibrary.arrayOfBooks
myLibrary.getBooks(author: "Dan Brown", genre: nil)
myLibrary.getBooks(author: "George Orwell", genre: "adventure")



// extra TASK 3

class Triangle {
    var side1: Double
    var side2: Double
    var base: Double
    var height: Double
    
    init(side1: Double, side2: Double, base: Double, height: Double) {
        self.side1 = side1
        self.side2 = side2
        self.base = base
        self.height = height
    }
    
    func getArea () -> Double {
        return 0.5 * base * height
    }
    
    func getPerimeter () -> Double {
        return side1 + side2 + base
    }
    
    func findType() -> String {
        var type = ""
        if side1 == side2 && side1 == base {
            type = "Equilateral Triangle"
        } else if side1 == side2 || side1 == base || side2 == base {
            type = "Isosceles Triangle"
        } else {
            type = "Scalene Triangle"
        }
        return type
    }
    
}
