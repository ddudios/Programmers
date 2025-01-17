import Foundation

/*
 readLine() 직접 구현해보기
 줄바꿈(\n)이 나오기 전까지의 문자열을 읽어서 반환
 - 정상적으로 입력을 읽으면 문자열을 반환
 - 입력 스트림이 종료되면 nil을 반환
 - 기본값: 반환되는 문자열에서 줄바꿈(\n)을 제거
 */

var testInput = """
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
