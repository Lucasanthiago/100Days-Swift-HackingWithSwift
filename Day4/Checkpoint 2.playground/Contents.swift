import Cocoa

var palavras:[String] = ["Alien","Lobo","Gato","Cachorro","Alien"]


print("Array")
for x in 0..<palavras.count{
    print(palavras[x], x)
}
 


var uniqueWords = Set(palavras)
var uniquePlavras = Array(uniqueWords)


print("Set")
for x in 0..<uniquePlavras.count{
    print(uniquePlavras[x], x)
}


