/*
 이름 : 신규 아이디 추천
 레벨 : 1
 유형 : 2021 KAKAO BLIND RECRUITMENT
 링크 : https://programmers.co.kr/learn/courses/30/lessons/72410?language=swift
 날짜 : 21.1.18
 */

func solution(_ new_id:String) -> String {
    var answer = new_id

    answer = answer.lowercased()

    let exception = ["-","_","."]
    answer = answer.filter { $0.isLetter || $0.isNumber || exception.contains( String($0) )}.map{ String($0) }.joined()

    while answer.contains("..") {
        answer = answer.replacingOccurrences(of: "..", with: ".")
    }

    if answer.hasPrefix(".") {
        answer.removeFirst()
    }

    if answer.isEmpty {
        answer.append("a")
    }

    while answer.contains(" ") {
        answer = answer.replacingOccurrences(of: " ", with: "")
    }

    while answer.count >= 16 {
        answer.removeLast()
    }

    if answer.hasSuffix(".") {
        answer.removeLast()
    }

    while answer.count < 3 {
        answer.append(answer.last!)
    }

    return answer
}
