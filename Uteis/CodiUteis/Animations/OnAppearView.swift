//
//  OnAppearView.swift
//  Uteis
//
//  Created by ednardo alves on 05/12/24.
//

import SwiftUI

struct OnAppearView: View {
    @State private var selectedTab = "One"
    var body: some View {
        TabView (selection: $selectedTab) {
            AppearUteisSecondView()
                .tag("One")
            
            AppearUteisView()
                .tag("Two")
        }.tabViewStyle(.page(indexDisplayMode: .always))
    }
}

struct AppearUteisView: View {
    
    @State private var transitionToggle = false
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("MacBook Pro")
                .font(transitionToggle ? .title : .largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(transitionToggle ? .red.opacity(0.5) : .secondary)
                .multilineTextAlignment(.leading)
                .offset(x: transitionToggle ? 0.0 : 500)
            Text("IPad 11 M3")
                .font(transitionToggle ? .title : .largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(transitionToggle ? .blue.opacity(0.5) : .secondary)
                .multilineTextAlignment(.leading)
                .offset(y: transitionToggle ? 0.0 : 500)
        }.onAppear {
//            transitionToggle.toggle()
            withAnimation (.easeIn(duration: 1)){
                transitionToggle.toggle()
            }
        }.onDisappear {
            withAnimation (.easeIn){
                transitionToggle.toggle()
            }
        }
    }
}

struct AppearUteisSecondView: View {
    var body: some View {
        Text("hello, world!")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundStyle(.blue.opacity(0.5))
    }
}

#Preview {
    OnAppearView()
}
