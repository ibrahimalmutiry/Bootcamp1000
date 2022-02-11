//
//  ContentView.swift
//  Bootcamp1000
//
//  Created by ibrahim almutiry on 06/02/2022.
//

import SwiftUI

struct MainView: View {
    @State var search = ""
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            VStack {
                HStack {
                    Image(systemName: "text.justify.right")
                    Spacer()
                    Image(systemName: "bell.badge")
                        .padding(.horizontal, 15)
                    Image(systemName: "bag")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.white)
                .padding(.horizontal, 20)
                .padding(.vertical, 15)
                .font(.title)
                
                Text("Delicious food ready to delovered for you 🍜 ")
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                // Custom Search Bar
                HStack (spacing: 16){
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .font(.title)
                            .foregroundColor(.white.opacity(0.5))
                        ZStack(alignment: .leading) {
                            if search.isEmpty {
                                Text("Search food would you like to eat")
                                    .foregroundColor(.white.opacity(0.5))
                            }
                            TextField("", text: $search)
                        } .padding(12)
                    }
                    .padding(12)
                    .background (.ultraThinMaterial)
                    .cornerRadius(25)
                    .overlay(RoundedRectangle(cornerRadius: 25).strokeBorder(Color.white.opacity(0.5), lineWidth: 1.5))
                }
                .padding()
                
                RecomendedView()
                    .clipShape(CustomCorners(corners: [.topLeft, .topRight], size: 30))
                    .ignoresSafeArea(.all, edges: .bottom)
                
                
                Spacer()
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


