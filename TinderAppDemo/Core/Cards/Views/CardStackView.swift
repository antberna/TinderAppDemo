//
//  CardStackView.swift
//  TinderAppDemo
//
//  Created by Antoine on 10/10/2024.
//

import SwiftUI

struct CardStackView: View {
    @StateObject var viewModel = CardsViewModel(service: CardService())
    
    var body: some View {
        VStack (spacing: 16) {
            ZStack{
                ForEach(viewModel.cardModels) { card in
                    CardView(viewModel: viewModel, model: card)
                }
            }
            
            SwipeActionButtonView(viewModel: viewModel)
        }
        //        .onChange(of: viewModel.cardModels) { oldValue, newValue in
        //            print("DEBUG: old value count is \(oldValue.count)")
        //            print("DEBUG: new value count is \(newValue.count)")
        //}
    }
}

#Preview {
    CardStackView()
}
