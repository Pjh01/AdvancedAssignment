// 필수 문제 1
let sum: (Int, Int) -> String = {
    return "두 수의 합은 \($0 + $1)입니다."
}

func calculate(number1: Int, number2: Int, closure: (Int, Int) -> String) {
    print(closure(number1, number2))
}

func level1() {
    // 클로저 sum 직접 호출
    print(sum(10, 20))      // 출력: "두 수의 합은 30입니다."
    
    // calculate 함수에 sum을 인자로 전달하여 실행
    calculate(number1: 10, number2: 20, closure: sum)   // 출력: "두 수의 합은 30입니다."
}
