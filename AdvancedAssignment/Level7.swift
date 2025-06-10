// 도전 문제 2
struct SortableBox<T> {
    var items: [T] = []
    
    // T가 Comparable을 만족해야 호출 가능
    mutating func sortItems() where T: Comparable {
        guard !items.isEmpty else {
            print("값이 없습니다.")
            return
        }
        items.sort()
    }
}

func level7() {
    var box = SortableBox(items: [8, 3, 2, 16, 24, 6])
    box.sortItems()
    print(box.items)       // [2, 3, 6, 8, 16, 24]
}
