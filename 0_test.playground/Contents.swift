import Foundation

// MARK: - input
let input = """
2
3 ABC
5 /HTP
"""

// MARK: - custom readLine()
// 한줄씩 입력 -> 읽으면 소멸됨

public let readLineInputArray = input.split(separator: "\n").map { String($0) }
public var readLineCounter = 0

@MainActor public func readLine() -> String? {
    if readLineCounter < readLineInputArray.count {
        let line = readLineInputArray[readLineCounter]
        readLineCounter += 1
        return line
    }
    return nil
}


if let t = Int(readLine()!) {
    for _ in 0..<t {
        if let input = readLine() {
            let part = input.split(separator: " ")
            let r = Int(part[0])!
            let s = String(part[1])
            var result = ""
            
            for char in s {
                result += String(repeating: char, count: r)
            }
            print(result)
        }
    }
}
