//
//  RestaurantCard.swift
//  Bootcamp1000
//
//  Created by ibrahim almutiry on 09/02/2022.
//

import SwiftUI

struct RestaurantCard: View {
    @Binding var isShow: Bool
    var body: some View {
        Button {
            isShow.toggle()
        } label: {
            ZStack(alignment: .topTrailing) {
                VStack(alignment:  .leading, spacing: 10) {
                    Image("Food1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 200)
                        .cornerRadius(30)
                    VStack(alignment:  .leading, spacing: 10) {
                        Text("Grilled Cheese Salad ...")
                            .font(.system(size: 26))
                            .bold()
                            .foregroundColor(.primary)
                        Text("$15.50")
                            .font(.headline)
                            .foregroundColor(Color("Background"))
                    }
                    .padding(.leading, 13)
                }
                star
            }
        }
        .fullScreenCover(isPresented: $isShow, content: {
            DetailsView()
        })
        .onTapGesture {
            isShow = true
        }
    }
    var star: some View {
        ZStack {
            Rectangle()
                .fill(Color.white)
                .frame(width: 80, height: 35)
                .cornerRadius(15)
                .padding()
            HStack(spacing: 3) {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Text("4.7")
                    .font(.body)
                    .foregroundColor(.primary)
                    .bold()
            }
            .padding()
        }
    }
}

struct RestaurantNearCard: View {
    @Binding var isShow: Bool
    var body: some View {
        Button {
            isShow.toggle()
        } label: {
            HStack{
                Image("Food1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 90)
                    .cornerRadius(25)
                VStack(alignment:  .leading, spacing: 8){
                    HStack {
                        Text("Big Fried Chicken")
                            .font(.title3)
                            .foregroundColor(.primary)
                            .bold()
                        Spacer()
                        Text("$15.50")
                            .font(.headline)
                            .foregroundColor(Color("Background"))
                    }
                    Text("Gaminbar . 9.2 Km")
                        .font(.callout)
                        .foregroundColor(.secondary)
                    HStack(spacing: 3) {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Text("4.7")
                            .foregroundColor(.primary)
                            .font(.body)
                            .bold()
                    }
                }
            }
          
        }
        .padding()
        .background(.ultraThinMaterial)
        .cornerRadius(30)
        .padding(.horizontal, 8)
        .fullScreenCover(isPresented: $isShow, content: {
            DetailsView()
        })
        .onTapGesture {
            isShow = true
        }
    }
}




struct RestaurantCard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RestaurantCard(isShow: .constant(false))
            RestaurantNearCard(isShow: .constant(false))
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
