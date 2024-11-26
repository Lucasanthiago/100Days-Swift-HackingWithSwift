import Cocoa


enum NumeroError: Error {
    case outOfBonds, noSquareRoot
}

func raizQuadrada(numero: Int) throws -> Int {
    
    //CONFERE SE O NUMERO ESTA ENTRE 1 E 10000 SE NAO ERRO
    if numero > 10000 || numero < 1 { throw NumeroError.outOfBonds}
    
    //INICIA VAR RAIZ
    var raiz = 0
    
    //RAIZ QUADRADA
    for x in 1...100{
        if x * x == numero{
            raiz = x
            return raiz

        }
    }
    
    //SE NAO TIVER RAIZ QUADRADA ERRO
    if raiz == 0 { throw NumeroError.noSquareRoot }
    
    
}


// Test cases to validate the function
do {
    let result = try raizQuadrada(numero: 1000000)
    print("The integer square root is \(result).") // Should print "The integer square root is 5."
} catch NumeroError.outOfBonds {
    print("The number is out of bounds. Please enter a number between 1 and 10,000.")
} catch NumeroError.noSquareRoot {
    print("No integer square root found for the given number.")
} catch {
    print("An unexpected error occurred: \(error).")
}
