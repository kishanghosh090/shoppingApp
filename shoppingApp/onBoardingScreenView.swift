//
//  onBoardingScreenView.swift
//  shoppingApp
//
//  Created by kishan rana ghosh on 17/11/25.
//

import SwiftUI

struct onBoardingScreenView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 30){
                Spacer()
                Image("img")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding()
                VStack(alignment: .leading,spacing: 10){
                    Text("Order your Favourite fruits")
                        .fontWeight(.bold)
                        .font(.system(.largeTitle))
                    Text("Eat fresh fruits and try to be healthy")
                        .font(.system(.title3))
                        .foregroundStyle(Color.black.opacity(0.6))
                }
                Spacer()
                NavigationLink(destination: HomeScreen()) {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("6"))
                        .overlay{
                            HStack{
                                Text("Next")
                                    .font(.system(.title))
                                    .fontWeight(.bold)
                                Image(systemName: "chevron.right")
                            }.foregroundStyle(.black)
                        }.frame(width: 280,height: 60, alignment: .trailing)
                }
                Spacer()
            }
            
            
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            
            
        }
    }
}

#Preview {
    onBoardingScreenView()
}
