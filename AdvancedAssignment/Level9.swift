// 도전 문제 4
class A {
    // 클래스 B 참조(약한 참조로 순환 참조 방지)
    weak var b: B?
    
    deinit {
        print("클래스 A 메모리 해제")
    }
}

class B {
    // 클래스 A 참조
    var a: A?
    var closure: (() -> Void)?
    
    deinit {
        print("클래스 B 메모리 해제")
    }
}

func level9() {
    var a: A? = A()
    var b: B? = B()
    
    // 서로 참조 연결
    a?.b = b
    b?.a = a
    
    // 클로저에 A를 캡처(순환 참조 방지 위해 [weak a])
    b?.closure = { [weak a] in
        print(a ?? "nil")
    }
    b?.closure?()
    
    // 인스턴스 해제
    a = nil
    b = nil
}
