//
//  TabBarView.swift
//  Bootcamp1000
//
//  Created by ibrahim almutiry on 11/02/2022.
//

import SwiftUI

struct TabBarView: View {
    
    @AppStorage("selectedTabed") var selectedTabed: Tab = .MainView
    @State var color: Color = .teal
    @State var tabItemWidth: CGFloat = 0
    
    var body: some View {
        HStack {
            buttons
        }
        .padding(.top, 14)
        .frame(height: 88, alignment: .top)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 34, style: .continuous))
        .frame(maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()

    }
    var buttons: some View {
        ForEach(tabItems) { item in
            Button {
                withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                    selectedTabed = item.tab
                    color = item.color
                }
            } label:{
                    Image(systemName: item.icon)
                    .font(.title2)
                        .symbolVariant(.fill)
                        .font(.body.bold())
                        .frame(width: 50, height: 50)
                        .frame(maxWidth: .infinity)
            }
            .foregroundStyle(selectedTabed == item.tab ? Color("Background") : .secondary)
            .overlay(
                GeometryReader { proxy in
                    Color.clear.preference(key: TabPreferenceKey.self, value: proxy.size.width)
                }
            )
            .onPreferenceChange(TabPreferenceKey.self) { value in
                tabItemWidth = value
            }
        }
    }
}
struct TabPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
