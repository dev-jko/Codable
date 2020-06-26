//
//  Structs.swift
//  Codable
//
//  Created by Jaedoo Ko on 2020/06/25.
//  Copyright © 2020 jko. All rights reserved.
//

import Foundation

/*
{
  "name": "경복궁",
  "foundingYear": 1395,
  "location": {
                "latitude": 37.579578,
                "longitutd": 126.977026
              }
}
*/
struct Landmark: Codable {
    let name: String
    let foundingYear: Int
    let location: Coordinate
}

struct Coordinate: Codable {
    let latitude: Double
    let longitude: Double
}



/*
{
  "title": "경복궁",
  "founding_date": 1395,
  "location": {
                "latitude": 37.579578,
                "longitutd": 126.977026
              }
}
*/
struct Landmark2: Codable {
    let name: String
    let foundingYear: Int
    let location: Coordinate
    
    //  json으로 변환될 때 사용할 프로퍼티 이름을 정해줍니다
    enum CodingKeys: String, CodingKey {
        case name = "title"
        case foundingYear = "founding_date"
        case location // location은 둘 다 같으니 그대로 두면 됩니다
    }
}
