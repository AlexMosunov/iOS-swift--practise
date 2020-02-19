

class Appartment {
    var appartmentNumber: Int
    var floorNumber: Int
    
    init(appartmentNumber: Int, floorNumber: Int) {
        self.appartmentNumber = appartmentNumber
        self.floorNumber = floorNumber
    }
}




class House {
    var houseNumber: Int
    var numOfFloors: Int
    var numOfAppsOnTheFloor: Int {
        return appartments.count / numOfFloors
    }
    var numOfRoomsInApp: Int
    var appartments: [Appartment]
    
    init(houseNumber: Int, numOfFloors: Int, numOfRoomsInApp: Int, appartments: [Appartment]) {
        self.houseNumber = houseNumber
        self.numOfFloors = numOfFloors
        self.numOfRoomsInApp = numOfRoomsInApp
        self.appartments = appartments
  
    }
    
    
    func getHouseData() -> String {
        return "House number \(houseNumber) has \(numOfFloors) floors, each floor has \(numOfAppsOnTheFloor) appartments and each appartment has \(numOfRoomsInApp) rooms"
    }
    
    func getNumOfAppsInHouse() -> Int {
        return numOfFloors * numOfAppsOnTheFloor
    }
    
    func numOfRoomsInHouse() -> Int {
        let numOfAppsInHouse = getNumOfAppsInHouse()
        return numOfAppsInHouse * numOfRoomsInApp
    }
    
    func checkIfAppIsInTheHouse(appNumber: Int) -> Bool {
        var bool = false
        for app in appartments {
            bool = appartments.contains{_ in app.appartmentNumber == appNumber}
        }
        return bool
    }
    
    func onWhichFloorIs(appNumber: Int) -> Int {
        var floor = -1
        for app in appartments {
            if app.appartmentNumber == appNumber {
                floor = app.floorNumber
            }
        }
        return floor
    }
    
}

let house1 = House(houseNumber: 1, numOfFloors: 2, numOfRoomsInApp: 2, appartments: [
    Appartment(appartmentNumber: 12, floorNumber: 1),
    Appartment(appartmentNumber: 15, floorNumber: 1),
    Appartment(appartmentNumber: 23, floorNumber: 2),
    Appartment(appartmentNumber: 26, floorNumber: 2)
])

house1.appartments
house1.getHouseData()
house1.numOfAppsOnTheFloor
house1.checkIfAppIsInTheHouse(appNumber: 34)
house1.onWhichFloorIs(appNumber: 23)

