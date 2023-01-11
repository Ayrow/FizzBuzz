//
//  MainView.swift
//  FizzBuzz
//
//  Created by Aymeric Pilaert on 10/01/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            BackgroundText(text: "FizzBuzzView", color: .red)
                .tabItem {
                    Label("FizzBuzz",
                           systemImage: "bubbles.and.sparkles")}
            
            BackgroundText(text: "CodeCreatorView", color: .green)
                .tabItem {
                    Label("Code",
                           systemImage: "note.text")}
            
            BackgroundText(text: "AboutView", color: .blue)
                .tabItem {
                    Label("About",
                           systemImage: "info.bubble.fill")}
        }
    }
}

struct BackgroundText: View {
    let text: String
    let color: Color
    
    var body: some View {
        ZStack {
            color.opacity(0.3).ignoresSafeArea()
            Text(text)
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
