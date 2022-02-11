//
//  ProfileView.swift
//  Bootcamp1000
//
//  Created by ibrahim almutiry on 11/02/2022.
//

import SwiftUI

struct ProfileView: View {
    var icon: String
    var body: some View {
        ZStack {
            LinearGradient(colors: [.orange, Color("Background")],
                           startPoint: .topLeading,
                           endPoint: .topTrailing)
                .ignoresSafeArea()
                .opacity(0.3)
            VStack {
                Image(systemName: icon)
                    .font(.system(size: 75, weight: .regular))
                    .imageScale(.large)
                    .padding()
                    .symbolVariant(.fill.circle)
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(
                        Color.white.opacity(0.8),
                        Color.blue,
                        LinearGradient(colors: [.orange, Color("Background")],
                                       startPoint: .topLeading,
                                       endPoint: .topTrailing)
                    )
                    .background(.regularMaterial, in:
                                    RoundedRectangle(cornerRadius: 40)
                    )
                Text("Soon")
                    .font(.largeTitle)
                    .foregroundStyle(
                        LinearGradient(colors: [.orange, Color("Background")],
                                       startPoint: .topLeading,
                                       endPoint: .topTrailing)
                    )
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(icon: "lock.doc")
    }
}
