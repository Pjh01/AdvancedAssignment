// 필수 문제 2
let numbers = [1, 2, 3, 4, 5]
var result = [String]()

// 짝수만 필터링한 뒤, 문자열로 변환
let intArray = Array(1...10)
let stringArray = intArray.filter { $0 % 2 == 0 }.map{ String($0) }

func myMap(_ array: [Int], closure: (Int) -> String) -> [String] {
    var mappedArray: [String] = []
    for number in array {
        mappedArray.append(closure(number))
    }
    return mappedArray
}

// myMap을 사용하여 numbers 배열의 각 요소를 문자열로 변환
let result2 = myMap(numbers) {
    String($0)
}

func level2() {
    // for-in문을 map 사용 코드로 변환
    result = numbers.map { String($0) }
    print(result)           // ["1", "2", "3", "4", "5"]
    
    print(stringArray)      // ["2", "4", "6", "8", "10"]
    
    print(result2)          // ["1", "2", "3", "4", "5"]
}
