import Cocoa

/*
 Now that you understand how classes work, and, just as importantly, how they are different from structs, it’s time to tackle a small challenge to check your progress.

Your challenge is this: make a class hierarchy for animals, starting with Animal at the top, then Dog and Cat as subclasses, then Corgi and Poodle as subclasses of Dog, and Persian and Lion as subclasses of Cat.

But there’s more:

The Animal class should have a legs integer property that tracks how many legs the animal has.
The Dog class should have a speak() method that prints a generic dog barking string, but each of the subclasses should print something slightly different.
The Cat class should have a matching speak() method, again with each subclass printing something different.
The Cat class should have an isTame Boolean property, provided using an initializer.
 */


class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Woof!")
    }
}

class Cat: Animal {
    func speak() {
        print("Meow!")
    }
    
    let isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
}


class Corgi: Dog {
    override func speak() {
        print("Corgi! Woof!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Poodle! Woof!")
    }
}

class Persian: Cat {
    override func speak() {
        print("Persian! Meow!")
    }
}

class Lion: Cat {
    override func speak() {
        print("Lion! Roar!")
    }
}
