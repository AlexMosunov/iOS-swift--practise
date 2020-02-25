
protocol AdvancedLifeSupport {
    func performCPR()
}


class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what happened?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}


struct Paramedic: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The Paramedic does chest compression")
    }
}

class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The Doctor does chest compression")
    }
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sings song")
    }
}

let emilio = EmergencyCallHandler()
let pete = Paramedic(handler: emilio)
let john = Doctor(handler: emilio)
let angela = Surgeon(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()






protocol CanFly {
    func fly()
}

extension CanFly {
    func fly() {
        print("The object flies")
    }
}

class Bird {
    var isFemale = true
    
    func layEggs() {
        if isFemale {
            print("Bird layed eggs")
        }
    }
    
}


class Eagle: Bird, CanFly {
    func fly() {
        print("Eagle flaps its wings")
    }
    
    func soar() {
        print("eagle soars")
    }
}


class Penguin: Bird {
    func swim() {
        print("Penguin swims")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
//    func fly() {
//        print("Airplane uses engine to fly")
//    }
}

let museum = FlyingMuseum()

let myEagle = Eagle()

museum.flyingDemo(flyingObject: myEagle)
let plane = Airplane()
plane.fly()
