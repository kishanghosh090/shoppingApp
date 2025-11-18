//
//  DetailsView.swift
//  shoppingApp
//
//  Created by kishan rana ghosh on 18/11/25.
//

import SwiftUI

struct RoundenedCornerShape: Shape{
    let corders: UIRectCorner
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corders , cornerRadii:
                                    CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct Counter: View {
    @State var count = 0
    
    var body: some View{
        HStack(spacing: 25){
            Button{
                count += 1
            }label: {
                Image(systemName: "plus")
            }
            Text("\(count)")
                .font(.title)
            Button{
                if count != 0 {count += 1}
            }label: {
                Image(systemName: "minus")
            }
            
        }
        .foregroundStyle(.black)
        .frame(width: 100, height: 40)
        .padding()
        .background(Color("bgColor").opacity(0.15))
        .cornerRadius(12)
        
    }
}

struct DetailsView: View {
    @State var fruit: fruitTitle
    var body: some View {
        VStack(alignment: .leading, spacing: 25){
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.top)
                .clipShape(RoundenedCornerShape.init(corders: [.bottomLeft, .bottomRight], radius: 50))
//                .frame(width: .infinity, height: .infinity, alignment: .top)
                .frame(alignment: .topLeading)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .overlay(
                    Image("\(fruit.rawValue)")
                        .resizable()
                        .frame(width: 250, height: 250, alignment: .center)
                        .offset(y: 50)
                        .shadow(color: .gray, radius: 5, x: 5, y: 5)
                )
            Spacer()
            Text("\(fruit.rawValue) - Medium")
                .fontWeight(.medium)
                .font(.system(.title2))
                .padding(.horizontal)
                .textCase(.uppercase)
            Text("Each (500g - 700g)")
                .padding(.horizontal)
            Text("Fruits are the seed-bearing part of a flowering plant and are a vital part of a healthy diet, providing essential vitamins, minerals, fiber, and antioxidants")
                .fontWeight(.regular)
                .font(.body)
                .multilineTextAlignment(.leading)
                .lineLimit(6)
                .padding(.horizontal)
            HStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color("bgColor"))
                    .opacity(0.15)
                    .overlay(Image(systemName: "hourglass"))
                    .font(.system(size: 40))
                    .frame(width: 50, height: 50)
                VStack(alignment: .leading, spacing: 5){
                    Text("Delivery Time")
                    Text("25-30 Min")
                }
            }.padding(.horizontal)
            HStack{
                Text("$1.99")
                    .fontWeight(.medium)
                    .font(.title)
                    .padding(.horizontal)
                Spacer()
                Counter()
            }
            Image("bg")
                .resizable()
                .frame(width: 350, height: 50, alignment: .center)
                .cornerRadius(15)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .overlay{
                    Text("Add to cart")
                        .font(.system(.title3))
                        .fontWeight(.medium)
                }.padding(.horizontal)
        }
    }
}

#Preview {
//    DetailsView()
}
