//
//  UserInfoViews.swift
//  TinderAppDemo
//
//  Created by Antoine on 10/10/2024.
//

import SwiftUI

struct UserInfoView: View {
    let user: User
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Text(user.fullname)
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text("\(user.age)")
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
            
            Text("Some test bio ...")
                .font(.subheadline)
                .lineLimit(2)
        }
        .foregroundStyle(.white)
        .padding()
        .background(){
            LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)
        }
    }
}

#Preview {
    UserInfoView(user: MockData.users[1])
}
