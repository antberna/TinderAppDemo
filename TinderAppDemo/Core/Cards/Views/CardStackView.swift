//
//  CardStackView.swift
//  TinderAppDemo
//
//  Created by Antoine on 10/10/2024.
//

import SwiftUI

struct CardStackView: View {
    var body: some View {
        ZStack{
            ForEach(0 ..< 10) { card in
                CardView()
            }
        }
    }
}

#Preview {
    CardStackView()
}
