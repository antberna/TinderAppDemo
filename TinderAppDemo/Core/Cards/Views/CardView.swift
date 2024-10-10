//
//  CardView.swift
//  TinderAppDemo
//
//  Created by Antoine on 10/10/2024.
//

import SwiftUI

struct CardView: View {
    @State private var xOffset: CGFloat = 0
    @State private var degrees: Double = 0
    @State private var currentImageIndex = 0
    
    @State private var mockImages = [
        "jane1",
        "jane2",
        "jane3"
    ]
    
    var body: some View {
        ZStack (alignment: .bottom){
            ZStack (alignment: .top){
                Image(mockImages[currentImageIndex])
                //Image(.jane3)
                    .resizable()
                    .scaledToFill()
                    .overlay {
                        ImageScrollingOverlay(currentImageIndex: $currentImageIndex, imageCount: mockImages.count)
                    }
                
                CardImageIndicatorView(currentImageIndex: currentImageIndex, imageCount: mockImages.count)
                
                SwipeActionIndicatorView(xOffset: $xOffset)
            }
            
            UserInfoView()
                //.padding(.horizontal)
                .frame(width: SizeConstants.cardWidth)
        }
        .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x: xOffset)
        .rotationEffect(.degrees(degrees))
        .animation(.snappy, value: xOffset)
        .gesture(
            DragGesture()
                .onChanged(onDragChanged)
                .onEnded(onDragEnded)
        )
    }
}

private extension CardView {
    func returnToCenter() {
        xOffset = 0
        degrees = 0
    }
    
    func swipeRight() {
        xOffset = 500
        degrees = 12
    }
    
    func swipeLeft() {
        xOffset = -500
        degrees = -12
    }
}

private extension CardView {
    func onDragChanged(_ value: _ChangedGesture<DragGesture>.Value) {
        xOffset = value.translation.width
        degrees = Double(value.translation.width / 25)
    }
    
    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value) {
        let width = value.translation.width
        
        if abs(width) < abs(SizeConstants.screenCutOff) {
            returnToCenter()
            return
        }
        
        if width >= SizeConstants.screenCutOff {
            swipeRight()
        } else {
            swipeLeft()
        }
    }
}

#Preview {
    CardView()
}
