//
//  Weather.swift
//  DripDrop2.0
//
//  Created by Steve Lederer on 12/13/18.
//  Copyright © 2018 trevorAdcock. All rights reserved.
//

import Foundation

struct WeatherService: Codable {
    let currentWeather: CurrentWeather
    let weeklyWeather: WeeklyWeather
    
    enum CodingKeys: String, CodingKey {
        case currentWeather = "currently"
        case weeklyWeather = "daily"
    }
}

struct CurrentWeather: Codable {
    let summary: String
    let temperature: Double
}

struct WeeklyWeather: Codable {
    let summary, iconName: String
    let dailyWeathers: [DailyWeather]
    
    enum CodingKeys: String, CodingKey {
        case summary
        case iconName = "icon"
        case dailyWeathers = "data"
    }
}

struct DailyWeather: Codable {
    let summary, iconName: String
    let temperatureHigh, temperatureLow: Double
    
    enum CodingKeys: String, CodingKey {
        case summary
        case iconName = "icon"
        case temperatureHigh
        case temperatureLow
    }
}
