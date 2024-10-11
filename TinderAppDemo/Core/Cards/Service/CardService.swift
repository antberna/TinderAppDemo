//
//  CardService.swift
//  TinderAppDemo
//
//  Created by Antoine on 10/10/2024.
//

import Foundation

struct CardService {
    func fetchCardModels() async throws -> [CardModel] {
        let users = MockData.users
        return users.map({CardModel(user: $0)})
    }
}
