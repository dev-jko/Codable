//
//  main.swift
//  Codable
//
//  Created by Jaedoo Ko on 2020/06/25.
//  Copyright © 2020 jko. All rights reserved.
//

import Foundation


let landmark: Landmark = Landmark(name: "경복궁",
                                  foundingYear: 1395,
                                  location: Coordinate(latitude: 37.579578, longitude: 126.977026))

//  먼저 JSONEncoder를 생성해줍니다
let encoder: JSONEncoder = JSONEncoder()
encoder.outputFormatting = .prettyPrinted // 사람이 보기 좋은 형태로 만들기 위해 옵션을 줬습니다

//  이제 변환해줍니다
let jsonData: Data = try encoder.encode(landmark)

//  잘 변환됐는지 데이터를 출력해봅시다
if let jsonString: String = String(data: jsonData, encoding: .utf8) {
    print(jsonString)
}


//  JSONDecoder를 생성해줍니다
let decoder: JSONDecoder = JSONDecoder()

//  decode 메서드에 변환될 Swift 타입과 json 데이터를 넣어줍니다
let landmarkFromJSON: Landmark = try decoder.decode(Landmark.self, from: jsonData)

// Landmark(name: "경복궁", foundingYear: 1395, location: Codable.Coordinate(latitude: 37.579578, longitude: 126.977026))
print(landmarkFromJSON)




let landmark2: Landmark2 = Landmark2(name: "경복궁",
                                     foundingYear: 1395,
                                     location: Coordinate(latitude: 37.579578, longitude: 126.977026))

let jsonDataFromLandmark2: Data = try encoder.encode(landmark2)

if let jsonString: String = String(data: jsonDataFromLandmark2, encoding: .utf8) {
    print(jsonString)
}
