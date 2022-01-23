/*
 이름 : 신고 결과 받기
 레벨 : 1
 유형 : 2022 KAKAO BLIND RECRUITMENT
 링크 : https://programmers.co.kr/learn/courses/30/lessons/92334?language=swift
 날짜 : 21.1.23
 */

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var answer = [Int]()
    var idDict = Dictionary(uniqueKeysWithValues: id_list.map { ($0, 0) })
    var reportSet = [String: Set<String>]()

    for one in report {
        let splited = one.split(separator: " ")
        let reporter = String(splited[0])
        let reportee = String(splited[1])
        if reportSet[reportee] == nil {
            reportSet[reportee] = [reporter]
        } else {
            reportSet[reportee]!.insert(reporter)
        }
    }
    for report in reportSet {
        if report.1.count >= k {
            for one in report.1 {
                let name = String(one)
                idDict[name]! += 1
            }
        }
    }
    for id in id_list {
        answer.append(idDict[id]!)
    }
    return answer
}
