//
//  UserInfoViews.swift
//  TinderAppDemo
//
//  Created by Antoine on 10/10/2024.
//

import SwiftUI

struct UserInfoViews: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Text("Jane")
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text("32")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    print ("DEBUG: Show profile here...")
                } label: {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                }
            }
            
            Text("Lawyer | Businesswoman")
                .font(.subheadline)
                .lineLimit(2)
        }
        .padding()
    }
}

#Preview {
    UserInfoViews()
}
