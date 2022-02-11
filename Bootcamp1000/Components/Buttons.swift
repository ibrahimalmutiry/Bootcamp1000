//
//  Buttons.swift
//  Bootcamp1000
//
//  Created by ibrahim almutiry on 09/02/2022.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        HStack(spacing: 15) {
            ButtonWithStrok(titleButton: "Chat")
            
            ButtonWithBackground(titleButton: "Add to Cart")
            
        }
        .padding()
        .frame(maxWidth: .infinity)
    }
}
struct CustomStepper: View {
    var body: some View {
        HStack(spacing: 15){
            Button {} label: {
                Image(systemName: "minus.circle")
                    .font(.headline)
                    .foregroundColor(.orange)
            }
            Text("1")
                .font(.headline)
                .foregroundColor(.primary)
            Button {} label: {
                Image(systemName: "plus.circle.fill")
                    .font(.headline)
                    .foregroundColor(.orange)
            }
        }
        .padding()
        .background(.regularMaterial)
        .cornerRadius(15)
    }
}

struct ButtonWithStrok: View {
    var titleButton: String
    var body: some View {
        Button {} label: {
            Label {
                Text(titleButton)
                    .font(.headline)
                    .padding(.horizontal)
            } icon: {
                Image(systemName: "ellipsis.bubble")
            }
            
        }
        .foregroundColor(.orange)
        .padding()
        .frame(width: 160, height: 65)
        .overlay(
            RoundedRectangle(cornerRadius: 30)
                .stroke(.orange, lineWidth: 1)
            
        )
    }
}

struct ButtonWithBackground: View {
    var titleButton: String
    var body: some View {
        Button {} label: {
            Text(titleButton)
                .font(.headline)
                .foregroundColor(.white)
                .padding(.horizontal)
        }
        .padding()
        .frame(width: 160, height: 65)
        .background(.orange)
        .cornerRadius(30)
    }
}

struct BackButton: View {
    var title: String
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        Button { dismiss() } label: {
            Image(systemName: title)
                .font(.headline)
                .foregroundColor(.primary)
                .padding()
                .background(.regularMaterial)
                .cornerRadius(15)
        }
    }
}
struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Buttons()
            CustomStepper()
            ButtonWithStrok(titleButton: "Test")
            ButtonWithBackground(titleButton: "Test")
            BackButton(title: "xmark")
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
