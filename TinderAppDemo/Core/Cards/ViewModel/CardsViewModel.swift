//
//  CardsViewModel.swift
//  TinderAppDemo
//
//  Created by Antoine on 10/10/2024.
//

import Foundation

@MainActor
class CardsViewModel: ObservableObject {
    @Published var cardModels = [CardModel]()
    @Published var buttonSwipeAction: SwipeAction?
    
    private let service: CardService
    
    init(service: CardService) {
        self.service = service
        Task { await fetchCardModels() }
    }
    
    func fetchCardModels() async {
        do {
            self.cardModels = try await service.fetchCardModels()
        } catch {
            print("DEBUG: Failed to fetch cards with error: \(error)")
        }
    }
    
    func removeCard(_ card: CardModel) {
        guard let index = cardModels.firstIndex(where: {$0.id == card.id}) else { return }
        cardModels.remove(at: index)
    }
    
    // When we don't have access to withAnimation ( < IOS 17) We have to apply a delay
//    func removeCard(_ card: CardModel) {
//        Task {
//            try await Task.sleep(nanoseconds: 500_000_000)
//            guard let index = cardModels.firstIndex(where: {$0.id == card.id}) else { return }
//            cardModels.remove(at: index)
//        }
//    }
    
}
