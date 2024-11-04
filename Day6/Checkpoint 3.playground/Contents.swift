import Cocoa



for x in 1...100 {

    if x.isMultiple(of: 3) && x.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if x.isMultiple(of: 5) {
        print("Buzz")
    } else if x.isMultiple(of: 3) {
        print("Fizz")
    } else {
        print(x)
    }
}


