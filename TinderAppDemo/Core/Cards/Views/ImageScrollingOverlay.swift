//
//  ImageScrollingOverlay.swift
//  TinderAppDemo
//
//  Created by Antoine on 10/10/2024.
//

import SwiftUI

struct ImageScrollingOverlay: View {
    @Binding var currentImageIndex: Int
    
    let imageCount: Int
    
    var body: some View {
        HStack{
            Rectangle()
                .onTapGesture {
                    print("Go to previous image...")
                    updateImageIndex(increment: false)
                }
            
            Rectangle()
                .onTapGesture {
                    print("Go to next image...")
                    updateImageIndex(increment: true)
                }
        }
        .foregroundStyle(.white.opacity(0.01))
    }
}

private extension ImageScrollingOverlay {
    func updateImageIndex(increment : Bool) {
        if increment {
            guard currentImageIndex < imageCount - 1 else {return}
            currentImageIndex += 1
        } else {
            guard currentImageIndex > 0 else {return}
            currentImageIndex -= 1
        }
    }
}

#Preview {
    ImageScrollingOverlay(currentImageIndex: .constant(1), imageCount: 2)
}

