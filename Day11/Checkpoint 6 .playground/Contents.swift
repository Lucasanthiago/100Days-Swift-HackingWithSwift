import Cocoa


//To check your knowledge, here’s a small task for you: create a struct to store information about a car, including its model, number of seats, and current gear, then add a method to change gears up or down. Have a think about variables and access control: what data should be a variable rather than a constant, and what data should be exposed publicly? Should the gear-changing method validate its input somehow?


struct car {
    let model: String
    let numberOfSeats: Int
    var currentGear: Int = 0
    
    
    private let minGear = 1
    private let maxGear = 10
    
    
    mutating func changeGear(up: Bool) {
            if up {
                if currentGear < maxGear {
                    currentGear += 1
                } else {
                    print("Você já está na marcha máxima (\(maxGear)).")
                }
            } else {
                if currentGear > minGear {
                    currentGear -= 1
                } else {
                    print("Você já está na marcha mínima (\(minGear)).")
                }
            }
        }
    
}


var chevet = car(model: "Chevrolet", numberOfSeats: 4, currentGear: 1)
chevet.changeGear(up: false)
chevet.changeGear(up: false)


