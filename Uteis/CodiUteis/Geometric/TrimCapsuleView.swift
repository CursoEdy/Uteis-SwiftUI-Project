//
//  TrimCapsuleView.swift
//  Uteis
//
//  Created by ednardo alves on 03/12/24.
//

import SwiftUI

struct TrimCapsuleView: View {
    let width: CGFloat?
    let heigt: CGFloat?
    let leftColor: Color
    let BGLeftColor: Color
    let rigthColor: Color
    let BGrigthColor: Color
    let lineWith: CGFloat
    let strokeColor: Color
    
    
    var body: some View {
        HStack (spacing: 0) {
            Rectangle()
                .fill(leftColor)
                .padding()
                .background(BGLeftColor)
            Rectangle()
                .fill(rigthColor)
                .padding()
                .background(BGrigthColor)
        }
        .clipShape(Capsule())
        .overlay(
            Capsule()
                .trim(from: 0.0, to: 1/4)
                .stroke(
                strokeColor,
                lineWidth: lineWith)
        )
        .overlay(
            Capsule()
                .trim(from: 0.75, to: 1)
                .stroke(strokeColor, lineWidth: lineWith)
        )
        .frame(width: width, height: heigt)
    }
}

#Preview {
    ZStack {
        LinearGradient(colors: [.purple, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(0.2)
            .ignoresSafeArea()
        
        VStack {
            TrimCapsuleView(
                width: nil,
                heigt: 50,
                leftColor: .blue,
                BGLeftColor: .blue.opacity(0.7),
                rigthColor: .white,
                BGrigthColor: .gray.opacity(0.2),
                lineWith: 2,
                strokeColor: .black
            ).padding()
            TrimCapsuleView(
                width: 200,
                heigt: 50,
                leftColor: .green,
                BGLeftColor: .blue.opacity(0.7),
                rigthColor: .yellow,
                BGrigthColor: .red.opacity(0.2),
                lineWith: 3,
                strokeColor: .purple
            )
        }
    }
}
