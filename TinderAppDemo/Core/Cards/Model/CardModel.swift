//
//  CardModel.swift
//  TinderAppDemo
//
//  Created by Antoine on 10/10/2024.
//

import Foundation

struct CardModel {
    let user: User
}

extension CardModel: Identifiable, Hashable {
    var id: UUID {return user.id}
}
