//
//  TabBar.swift
//  Bootcamp1000
//
//  Created by ibrahim almutiry on 09/02/2022.
//

import SwiftUI

struct TabBar: View {
    @AppStorage("selectedTabed") var selectedTabed: Tab = .MainView
    var body: some View {
        
        ZStack(alignment: .bottom){
            Group{
                switch selectedTabed {
                case .MainView:
                    MainView()
                case.SecondView:
                    ProfileView(icon: "lock.doc")
                case.ThirdView:
                    ProfileView(icon: "xmark.icloud")
                case.ProfileView:
                    ProfileView(icon: "figure.wave.circle")
                }
                
                TabBarView()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}



struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

