	//
//  Model.swift
//  Bootcamp1000
//
//  Created by ibrahim almutiry on 11/02/2022.
//

import SwiftUI


// Custom Tab Bar
struct TabItem: Identifiable {
    var id = UUID()
//    var text: String
    var icon: String
    var tab: Tab
    var color: Color
}
var tabItems = [
    TabItem(icon: "house", tab: .ContentView, color: .teal),
    TabItem(icon: "doc.plaintext", tab: .ContentView2, color: .blue),
    TabItem(icon: "magnifyingglass", tab: .ContentView3, color: .red),
    TabItem(icon: "person", tab: .ProfileView, color: .pink)
]
enum Tab: String {
    case ContentView
    case ContentView2
    case ContentView3
    case ProfileView
}

// to make custom corner
struct CustomCorners : Shape {
    var corners: UIRectCorner
    var size: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: size, height: size))
        
        return Path(path.cgPath)
    }
}
