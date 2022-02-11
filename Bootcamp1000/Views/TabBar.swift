//
//  TabBar.swift
//  Bootcamp1000
//
//  Created by ibrahim almutiry on 09/02/2022.
//

import SwiftUI

struct TabBar: View {
    @AppStorage("selectedTabed") var selectedTabed: Tab = .ContentView
    
    var body: some View {
        
        ZStack(alignment: .bottom){
            Group{
                switch selectedTabed {
                case .ContentView:
                    MainView()
                case.ContentView2:
                    ProfileView(icon: "lock.doc")
                case.ContentView3:
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

