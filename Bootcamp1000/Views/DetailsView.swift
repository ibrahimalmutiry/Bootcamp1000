//
//  DetailsView.swift
//  Bootcamp1000
//
//  Created by ibrahim almutiry on 09/02/2022.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
                ScrollView {
                    VStack(spacing: 20) {
                    
                        Image("Food1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 420, height: 500)
                            .cornerRadius(35)
                        VStack(alignment:  .leading, spacing: 10) {
                            HStack(spacing: 25) {
                                Text("Grilled Cheese Salad with Cream")
                                    .font(.system(size: 26))
                                    .bold()
                                    .foregroundColor(.primary)
                                CustomStepper()
                            }
                        }
                        .padding(.leading, 13)
                        
                        HStack(spacing: 35) {
                            Label {
                                Text("2.3 Km")
                                    .foregroundColor(.secondary)
                            } icon: {
                                Image(systemName: "mappin")
                                    .foregroundColor(.orange)
                            }
                            .font(.headline)
                            Label {
                                Text("4.7 Ratings")
                                    .foregroundColor(.secondary)
                            } icon: {
                                Image(systemName: "star")
                                    .foregroundColor(.orange)
                            }
                            .font(.headline)
                            Label {
                                Text("20-24 Min")
                                    .foregroundColor(.secondary)
                            } icon: {
                                Image(systemName: "clock")
                                    .foregroundColor(.orange)
                            }
                            .font(.headline)
                        }
                        .frame(maxWidth: .infinity, alignment: .center)
                        
                        VStack(alignment:  .leading, spacing: 10)  {
                            Text("Description")
                                .font(.headline)
                                .foregroundColor(.primary)
                            Text("This is my Exploration for Food Delivery App. How about you ? Let me know your Awesome Feedback ")
                                .lineLimit(2)
                                .font(.body)
                                .foregroundColor(.primary)
                        }
                        
                        MapExample()
                            .frame(height: 350)
                        Buttons()
                    }
                    .padding(.horizontal)
                }
            
            BackButton(title: "xmark")
                .padding(.horizontal)
                .frame(maxWidth: .infinity , alignment: .leading)
                .padding()
            
        }
        .navigationBarHidden(true)
        
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
        
    }
}
