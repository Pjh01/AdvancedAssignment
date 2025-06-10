// 필수 문제 5
// 배송 상태를 나타내는 열거형
enum DeliveryStatus {
    case notStarted                     // 배송 전
    case inTransit(dayRemaining: Int)   // 배송 중(남은 일 수)
    case error                          // 오류 발생
}

// 배송 관련 오류 타입
enum DeliveryError: Error {
    case invalidAddress                 // 주소가 잘못된 경우
    case notStarted                     // 배송이 아직 시작되지 않은 경우
    case systemError(reason: String)    // 시스템 서버 에러로 예측이 불가능한 경우
}

// 배송 예측 함수
func predictDeliveryDay(for address: String, status: DeliveryStatus) throws -> String {
    guard !address.isEmpty else {
        throw DeliveryError.invalidAddress      // 주소가 없으면 오류 발생
    }
    
    switch status {
    case .notStarted:
        throw DeliveryError.notStarted
    case .inTransit(let dayRemaining):
        return "배송까지 \(dayRemaining)일 남았습니다."
    case .error:
        throw DeliveryError.systemError(reason: "시스템 에러가 발생했습니다.")
    }
}

func level5() {
    do {
        let result = try predictDeliveryDay(for: "서울특별시 강남구", status: .inTransit(dayRemaining: 3))
        //let result = try predictDeliveryDay(for: "", status: .inTransit(dayRemaining: 3))
        //let result = try predictDeliveryDay(for: "서울특별시 강남구", status: .notStarted)
        //let result = try predictDeliveryDay(for: "서울특별시 강남구", status: .error)
        
        print(result)
    } catch let error as DeliveryError {
        switch error {
        case .invalidAddress:
            print("주소가 올바르지 않습니다.")
        case .notStarted:
            print("배송이 아직 시작되지 않았습니다.")
        case .systemError(let reason):
            print(reason)
        }
    } catch {
        print("알 수 없는 오류: \(error)")
    }
}
