//
//  Recomended.swift
//  Bootcamp1000
//
//  Created by ibrahim almutiry on 06/02/2022.
//

import SwiftUI

struct RecomendedView: View {
    @State var isShow = false
    var body: some View {
            ScrollView(.vertical) {
                VStack {
                    //MARK: -Section 1
                    HStack {
                        Text("Recomended")
                            .font(.system(size: 22))
                            .foregroundColor(.primary)
                        Spacer()
                        Text("See All")
                            .font(.headline)
                            .bold()
                            .foregroundColor(Color("Background"))
                    }
                    .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0 ..< 5) { item in
                                RestaurantCard(isShow: $isShow)
                                  
                            }
                            .padding()
                        }
                    }
                    
                    //MARK: -Section 2
                    HStack {
                        Text("Near of you")
                            .font(.title2)
                            .foregroundColor(.primary)
                        Spacer()
                        Text("See All")
                            .font(.headline)
                            .bold()
                            .foregroundColor(Color("Background"))
                    }
                    .padding()
                    
                    ForEach(0 ..< 5) { item in
                        RestaurantNearCard(isShow: $isShow)
                    }
                    
                    Spacer()
                }
                .background(.white)
            }
         
        
    }
}

struct RecomendedView_Previews: PreviewProvider {
    static var previews: some View {
        RecomendedView()
    }
}
