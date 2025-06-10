// 도전 문제 1
// 엔진 타입을 정의
enum Engine {
    case ElectricEngine
    case HydrogenEngine
}

class Car {
    private var brand: String
    private var model: String
    private var year: String
    var engine: Engine
    
    init(brand: String, model: String, year: String, engine: Engine) {
        self.brand = brand
        self.model = model
        self.year = year
        self.engine = engine
    }
    
    public func drive() {
        print("\(brand), \(model), \(year), \(engine)으로 주행 중...")
    }
    
    public func stop() {
        print("정지 중...")
    }
}

class ElectricCar: Car {
    // 항상 전기 엔진으로 초기화
    init(brand: String, model: String, year: String) {
        super.init(brand: brand, model: model, year: year, engine: .ElectricEngine)
    }
}

class HybridCar: Car {
    init(brand: String, model: String, year: String) {
        super.init(brand: brand, model: model, year: year, engine: .HydrogenEngine)
    }
    
    // 엔진을 교체할 수 있는 기능
    public func switchEngine(to newEngine: Engine) {
        engine = newEngine
    }
}

func level6() {
    let car1 = ElectricCar(brand: "Tesla", model: "Model 3", year: "2025")
    car1.drive()
    
    let car2 = HybridCar(brand: "Hyundai", model: "Sonata", year: "2025")
    car2.drive()
    car2.switchEngine(to: .ElectricEngine)      // 엔진 변경
    car2.drive()
}

/*
 상속:
 - 클래스만 사용 가능
 - 하나의 부모 클래스만 상속 가능
 - 속성이나 메서드 재사용과 오버라이드 가능
 
 프로토콜:
 - 클래스, 구조체, 열거형 모두 사용 가능
 - 여러 개의 프로토콜 동시에 채택 가능
 - 요구하는 속성과 메서드는 반드시 구현해야 함
 */
