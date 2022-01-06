/*
 이름 : 없는 숫자 더하기
 레벨 : 1
 유형 :
 링크 : https://programmers.co.kr/learn/courses/30/lessons/86051
 날짜 : 22.1.6
 */

func solution(_ numbers:[Int]) -> Int {
    return 45 - numbers.reduce(0, +)
}

// 제시된 범위가 손으로 계산할 수 없다면
//func solution(_ numbers:[Int]) -> Int {
//    return (0...9).filter { !numbers.contains($0) }.reduce(0, +)
//}
