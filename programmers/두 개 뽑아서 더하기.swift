/*
 이름 : 두 개 뽑아서 더하기
 레벨 : 1
 유형 : 완전탐색
 링크 : https://programmers.co.kr/learn/courses/30/lessons/68644?language=swift
 날짜 : 21.1.7
 */

// 1. 모든 원소를 돌며 더하고
// 2. 정답열set에 넣고 정렬 후 반환

func solution(_ numbers:[Int]) -> [Int] {
    var answer = Set<Int>()
    for index in 0..<numbers.count {
        for insideIndex in index + 1..<numbers.count{
            answer.insert(numbers[index] + numbers[insideIndex])
        }
    }
    return answer.sorted()
}
