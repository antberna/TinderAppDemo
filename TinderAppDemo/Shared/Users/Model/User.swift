//
//  User.swift
//  TinderAppDemo
//
//  Created by Antoine on 10/10/2024.
//

import Foundation

struct User: Identifiable, Hashable {
    let id: UUID
    let fullname: String
    let age: Int
    var profileImageURLs: [String]
}
