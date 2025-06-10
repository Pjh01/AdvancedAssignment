// 필수 문제 4
// Introducible 프로토콜
protocol Introducible {
    var name: String { get set }
    
    func introduce() -> String
}

// Introducible 채택한 Robot class
class Robot: Introducible {
    var name: String {
        didSet {                    // name 값 변경 시 메시지 출력
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
    
    func introduce() -> String {
        return "안녕하세요, 저는 \(name)입니다."
    }
    
    func batteryCharge() {
        print("배터리 충전 중...")
    }
}

// Introducible 채택한 Cat class
class Cat: Introducible {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func introduce() -> String {
        return "야옹, 저는 \(name)입니다."
    }
    
    func hunt() {
        print("사냥 중...")
    }
}

// Introducible 채택한 Dog class
class Dog: Introducible {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func introduce() -> String {
        return "멍멍, 저는 \(name)입니다."
    }
    
    func walk() {
        print("산책 중...")
    }
}

func level4() {
    var introducibleArray: [Introducible] = []
    
    introducibleArray.append(Robot(name: "robot1"))
    introducibleArray.append(Cat(name: "ruru"))
    introducibleArray.append(Dog(name: "dada"))
    
    introducibleArray[0].name = "robot1"        // 동일한 이름 → 출력 없음
    introducibleArray[0].name = "robot2"        // 이름 변경 → didSet 작동
    
    for introducible in introducibleArray {
        print(introducible.introduce())
        
        // // 타입에 따라 다운캐스팅하여 고유 메서드 호출
        if let robot = introducible as? Robot {
            robot.batteryCharge()               // 배터리 충전 중...
        } else if let cat = introducible as? Cat {
            cat.hunt()                          // 사냥 중...
        } else if let dog = introducible as? Dog {
            dog.walk()                          // 산책 중...
        }
    }
}
