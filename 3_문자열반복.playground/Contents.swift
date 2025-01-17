import Foundation

let testInput = """
2
3 ABC
5 /HTP
"""

// 하드코딩된 입력값을 줄 단위로 나누어 배열로 변환
let inputs = testInput.split(separator: "\n").map { String($0) }

// `readLine()` 대체 함수
var inputIndex = 0

@MainActor func readLine() -> String? {
    if inputIndex < inputs.count {
        let line = inputs[inputIndex]
        inputIndex += 1
        return line
    }
    return nil
}

//if let t = Int(readLine()!) {
//    for _ in 0..<t {
//        if let input = readLine() {
//            let parts = input.split(separator: " ")
//            let r = Int(parts[0])!
//            let s = String(parts[1])
//            
//            var result = ""
//            for char in s {
//                result += String(repeating: char, count: r)
//            }
//            print(result)
//        }
//    }
//}

while let input = readLine() {
    let parts = input.split(separator: " ")
    let r = Int(parts[0])!
    let s = String(parts[1])
    
    var result = ""
    for char in s {
        result += String(repeating: char, count: r)
    }
    print(result)
}
