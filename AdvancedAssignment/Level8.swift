// 도전 문제 3
protocol Introducible2 {
    var name: String { get set }
    
    func introduce() -> String
}

// Introducible2 기본 동작 제공
extension Introducible2 {
    func introduce() -> String {
        return "안녕하세요, 저는 \(name)입니다."
    }
}

// Robot2 클래스 - 커스텀 introduce() 사용
class Robot2: Introducible2 {
    var name: String {
        didSet {                   
            if oldValue != name {
                print("""
                    name 변경 알림
                    변경 이전 값: \(oldValue)
                    변경 이후 값: \(name)
                    """)
            }
        }
    }
    
    init(name: String) {
        self.name = name
    }
    
    // introduce() 오버라이드
    func introduce() -> String {
        return "안녕! 나는 \(name)이야~"
    }
    
    func batteryCharge() {
        print("배터리 충전 중...")
    }
}

// Cat2 클래스 - 기본 introduce() 사용
class Cat2: Introducible2 {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func hunt() {
        print("사냥 중...")
    }
}

// Dog2 클래스 - 기본 introduce() 사용
class Dog2: Introducible2 {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func walk() {
        print("산책 중...")
    }
}

func level8() {
    var introducibleArray: [Introducible2] = []
    
    introducibleArray.append(Robot2(name: "robot"))
    introducibleArray.append(Cat2(name: "ruru"))
    introducibleArray.append(Dog2(name: "dada"))
    
    for introducible in introducibleArray {
        print(introducible.introduce())
    }
}
