import Foundation

var testInput = """
5 7
0010000
0111010
1111111
0111010
0010000
"""
let inputs = testInput.split(separator: "\n").map { String($0) }  // 줄 단위로 나누어 배열로 변환
var inputIndex = 0

@MainActor func readLine() -> String? {
    if inputIndex < inputs.count {
        let line = inputs[inputIndex]
        inputIndex += 1
        return line
    }
    return nil
}

// 전체 문자열 뒤집기 -> 상하좌우 대칭
/*
if let count = readLine() {
    let part = count.split(separator: " ")
    let n = Int(part[0])!
    let m = Int(part[1])!
    var reverseArray: [Character] = []
    
    while let input = readLine() {
        for char in input {
            reverseArray.append(char)
        }
    }
    
    reverseArray.reverse()
    
    let stringArray = reverseArray.map { String($0) }
    
    let result = stride(from: 0, to: stringArray.count, by: m).map { startIndex in
        let endIndex = min(startIndex + m, stringArray.count)
        return stringArray[startIndex..<endIndex].joined()
    }.joined(separator: "\n")
    
    print(result)
}
 */

// 행마다 뒤집기 -> 좌우 대칭
if let count = readLine() {
    let part = count.split(separator: " ")
    let n = Int(part[0])!
    let m = Int(part[1])!
    var result: [String] = []

    while let input = readLine() {
        let reversedRow = String(input.reversed())
        result.append(reversedRow)
    }
    print(result)
    print(result.joined(separator: "\n"))
}
