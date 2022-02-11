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
    var icon: String
    var tab: Tab
    var color: Color
}
var tabItems = [
    TabItem(icon: "house", tab: .MainView, color: .teal),
    TabItem(icon: "doc.plaintext", tab: .SecondView, color: .blue),
    TabItem(icon: "magnifyingglass", tab: .ThirdView, color: .red),
    TabItem(icon: "person", tab: .ProfileView, color: .pink)
]
enum Tab: String {
    case MainView
    case SecondView
    case ThirdView
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
