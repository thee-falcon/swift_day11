import UIKit

/*
 Structs sit at the core of every SwiftUI app, so it’s really important you take some extra time to make sure you understand what they do and how they work.

 To check your knowledge, here’s a small task for you: create a struct to store information about a car, including its model,
 number of seats, and current gear, then add a method to change gears up or down.
 Have a think about variables and access control: what data should be a variable rather than a constant, and what data should be exposed publicly? Should the gear-changing method validate its input somehow?
 */
struct  Car {
    var model: String;
    var numberOfSeats: Int;
    private(set) var currentGear: Int; // Private set, only accessible within the struct
    
    init(model: String, numberOfSeats: Int, currentGear: Int = 1) {
        self.model = model
        self.numberOfSeats = numberOfSeats
        self.currentGear = currentGear // Assuming starting gear is 1
    }
    
    // Method to change geear Up
    mutating func   changeGearUp() {
        if currentGear < 10 {
            currentGear += 1
            print("Change gear Up to \(currentGear)")
        } else {
            print("Already in highest gear")
        }
    }
    
    mutating func   changeGearDown() {
        if currentGear > 1 {
            currentGear -= 1
            print("Change gear Down to \(currentGear)")
        } else {
            print("Already in lowest gear")
        }
    }
}

// example usage
var myCar = Car(model: "Supra", numberOfSeats: 4)
print("Model: \(myCar.model), numberOfSeat: \(myCar.numberOfSeats), Gear: \(myCar.currentGear)")

myCar.changeGearUp()
myCar.changeGearUp()
myCar.changeGearDown()
