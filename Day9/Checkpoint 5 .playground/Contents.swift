import Cocoa

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

//var luckyNumbersFilter: [Int] = []

//for x in luckyNumbers {
//    if x.isMultiple(of: 2) {
//        luckyNumbersFilter.append(x)
//    }
//}

var luckyNumbersFilter = luckyNumbers.filter { $0 % 2 != 0 }

var luckyNumbersSorted = luckyNumbersFilter.sorted()

//map them to string
var luckyNumbersMap = luckyNumbersSorted.map { "\($0) is a lucky number" }


for y in luckyNumbersMap {
    print(y)
}

