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
