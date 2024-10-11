//
//  MockData.swift
//  TinderAppDemo
//
//  Created by Antoine on 11/10/2024.
//

import Foundation

struct MockData {
    
    static let users: [User] = [
        .init(
            id: UUID(),
            fullname: "Jane",
            age: 32,
            profileImageURLs: ["jane1","jane2","jane3"]
        ),
        .init(
            id: UUID(),
            fullname: "Max",
            age: 61,
            profileImageURLs: ["max1","max2"]
        ),
        .init(
            id: UUID(),
            fullname: "Yoni",
            age: 36,
            profileImageURLs: ["yoni1","yoni2","yoni3","yoni4"]
        )
    ]
}
