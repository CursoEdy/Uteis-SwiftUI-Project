//
//  TabView.swift
//  Uteis
//
//  Created by ednardo alves on 05/12/24.
//

import SwiftUI

struct TabExemploView: View {
    @State private var selectedTab = "One"
    
    var body: some View {
        ZStack {
            
            Color.red.opacity(0.3).ignoresSafeArea()
            
            TabView(selection: $selectedTab) {
                Text("Hello")
                    .tag("One")
                
                Text("Good morning")
                    .tag("Two")
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .ignoresSafeArea()
        }
    }
}

#Preview {
    TabExemploView()
}
