import UIKit

func numbers(_ array: [Int]) -> [Int] {
    var numbersArray = [Int]()
    array.forEach { element in
        if element < 0 {
            numbersArray.append(0)
        } else {
            numbersArray.append(element)
        }
    }
    numbersArray.sort {
        $0 < $1
    }
    return numbersArray
}

var test = [Int]()

for _ in 1...10 {
    let randomInt = Int.random(in: -10...10)
    test.append(randomInt)
}

print(test)
test = numbers(test)
print(test)


func papit(_ array1: [Int]) -> [Int] {
    var numberArray = array1
    numberArray.sort {
        $0 > $1
    }
    return numberArray
}

var test1 = [Int]()

for _ in 1...10 {
    let randomInt1 = Int.random(in: 1...10)
    test1.append(randomInt1)
}

print(test1)
test1 = papit(test1)
print(test1)


func funnyClosure(number: Int, closure: (Int) -> Void) {
    closure(number)
}

funnyClosure(number: 6) { number in
    if number == 1 {
        print("январь")
    } else if number == 2 {
        print("февраль")
    } else if number == 3 {
        print("март")
    } else if number == 4 {
        print("апрель")
    } else if number == 5 {
        print("май")
    } else if number == 6 {
        print("июнь")
    } else if number == 7 {
        print("июль")
    } else if number == 8 {
        print("август")
    } else if number == 9 {
        print("сентябрь")
    } else if number == 10 {
        print("октябрь")
    } else if number == 11 {
        print("ноябрь")
    } else if number == 12 {
        print("декабрь")
    } else {
        print("Такого месяца не бывает")
    }
}


func task4(number: [Int], clousure: (Int) -> Void) {
    if number.isEmpty {
        print("Месяцев нет")
    } else {
        number.forEach { item in
            if item == 1 {
                clousure(item)
                print("Январь")
            } else  if item == 2 {
                clousure(item)
                print("Февраль")
            } else if item == 3 {
                clousure(item)
                print("Март")
            } else if item == 4 {
                clousure(item)
                print("Апрель")
            } else if item == 5 {
                clousure(item)
                print("Май")
            } else if item == 6 {
                clousure(item)
                print("Июнь")
            } else if item == 7 {
                clousure(item)
                print("Июль")
            } else if item == 8 {
                clousure(item)
                print("Август")
            } else if item == 9 {
                clousure(item)
                print("Сентябрь")
            } else if item == 10 {
                clousure(item)
                print("Октябрь")
            } else if item == 11 {
                clousure(item)
                print("Ноябрь")
            } else if item == 12 {
                clousure(item)
                print("Декабрь")
            } else {
                clousure(item)
                print("Такого месяца нет")
            }
        }
    }
}

task4(number: []) { item in
   
}

let arrayFruits = ["orange", "apple", "banana", "grapefruit"]
let fruits = Set(arrayFruits)

let redFood: Set = ["apple", "tomato", "grapefruit", "strawberry"]

let productsRed: Set = fruits.intersection(redFood)

let notRedFruits: Set = redFood.subtracting(fruits)

let allFoodNotRed: Set = fruits.symmetricDifference(redFood)

