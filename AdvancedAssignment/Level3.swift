// 필수 문제 3
// Int 배열의 짝수번째 요소 제거 후 반환
func a(_ array: [Int]) -> [Int] {
    return array.enumerated()
                .filter { $0.offset.isMultiple(of: 2) }
                .map { $0.element }
}

// String 배열의 짝수번째 요소 제거 후 반환
func b(_ array: [String]) -> [String] {
    return array.enumerated()
                .filter { $0.offset.isMultiple(of: 2) }
                .map { $0.element }
}

// 모든 타입 가능한 제네릭 함수
func c<T>(_ array: [T]) -> [T] {
    return array.enumerated()
                .filter { $0.offset.isMultiple(of: 2) }
                .map { $0.element }
}

// Numeric 제약 있는 제네릭 함수
func d<T: Numeric>(_ array: [T]) -> [T] {
    return array.enumerated()
                .filter { $0.offset.isMultiple(of: 2) }
                .map { $0.element }
}

func level3() {
    print(a([1, 2, 3, 4, 5]))                 // [1, 3, 5]
    
    print(b(["가", "나", "다", "라", "마"]))     // ["가", "다", "마"]
    
    print(c([1, 2, 3, 4, 5]))                 // [1, 3, 5]
    print(c(["가", "나", "다", "라", "마"]))     // ["가", "다", "마"]
    
    print(d([1, 2, 3, 4, 5]))                 // [1, 3, 5]
}
