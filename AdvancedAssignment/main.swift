// 필수 문제
for (index, function) in [level1, level2, level3, level4, level5].enumerated() {
    print("<필수 문제 \(index + 1)>")
    function()
    print("--------------------")
}

// 도전 문제
for (index, function) in [level6, level7, level8].enumerated() {
    print("<도전 문제 \(index + 1)>")
    function()
    print("--------------------")
}
