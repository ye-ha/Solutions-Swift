/*
 이름 : 숫자 문자열과 영단어
 레벨 : 1
 유형 : 2021 카카오 채용연계형 인턴십
 링크 : https://programmers.co.kr/learn/courses/30/lessons/81301?language=swift
 날짜 : 21.1.18
 */

func solution(_ s:String) -> Int {
    let number = ["zero","one","two","three","four","five","six","seven","eight","nine"]
    var answer = s

    for num in 0...9 {
        answer = answer.replacingOccurrences(of: number[num], with: "\(num)")
    }

    return Int(answer)!
}
