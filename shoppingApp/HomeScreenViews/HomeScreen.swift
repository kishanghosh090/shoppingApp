//
//  HomeScreen.swift
//  shoppingApp
//
//  Created by kishan rana ghosh on 17/11/25.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        ZStack(){
            VStack(alignment: .leading, spacing: 10){
                HStack{
                    Image(systemName: "line.3.horizontal")
                    Spacer()
                    Image(systemName: "card.badge.plus")
                }.font(.system(.title3))
                Text("Hey")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Find fresh Fruits that you want")
                RoundedRectangle(cornerRadius: 15)
                    .fill(.gray.opacity(0.3))
                    .overlay(
                        HStack{
                            Image(systemName: "magnifyingglass")
                            Text("search fresh fruits")
                                .foregroundStyle(Color.gray)
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }.padding()
                    )
                    .frame(width: 350, height: 50, alignment: .center)
                Text("Top selling")
                    .font(.title)
                    .fontWeight(.bold)
                TopSellingView()
                Text("Near You")
                    .font(.title)
                    .fontWeight(.bold)
                NearYouView()
                Spacer()
            }.padding()
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    HomeScreen()
}
