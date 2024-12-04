//
//  Animations.swift
//  Uteis
//
//  Created by ednardo alves on 04/12/24.
//

import SwiftUI

struct animateProperties: Equatable {
    let color: Color
    let bgColor: Color
    let font: Font
    let fontWeight: Font.Weight
    let cornerRadius: CGFloat
    let xScale: CGFloat
    let yScale: CGFloat
    let offSety: CGFloat
    let rotate: CGFloat
}
    

struct Animations: View {
    @State private var animateMe = false
    
    var phases : [animateProperties] = [
        .init(
            color: .cyan,
            bgColor: .blue,
            font: .largeTitle,
            fontWeight: .bold,
            cornerRadius: 15,
            xScale: 1.5,
            yScale: 1.2,
            offSety: 20,
            rotate: 30
        ),
        .init(
            color: .white,
            bgColor: .blue.opacity(0.5),
            font: .largeTitle,
            fontWeight: .bold,
            cornerRadius: 15,
            xScale: 1.0,
            yScale: 1.0,
            offSety: 0.0,
            rotate: 0.0
        ),
    ]
    
    var body: some View {
        VStack {
            Spacer()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .phaseAnimator(phases, trigger: animateMe){
//                    ou para animation infinity
//                    .phaseAnimator(phases){
                    view, phase in
                     view
                        .foregroundStyle(phase.color)
                        .font(phase.font)
                        .fontWeight(phase.fontWeight)
                        .padding()
                        .background(
                            RoundedRectangle(
                                cornerRadius: phase.cornerRadius
                            )
                            .fill(phase.bgColor)
                        )
                        .scaleEffect(x: phase.xScale, y: phase.yScale, anchor: .center)
                        .offset(y: phase.offSety)
                        .rotation3DEffect(
                            Angle(degrees: phase.rotate),
                            axis: (x: 0.1, y: 0.0,z: 0.0)
                        )
                }
                
            
            Spacer()
            
            Button(action: {
                    animateMe.toggle()
            }, label: {
                Text(animateMe ? "Stop" : "Play")
            })
        }
    }
}

#Preview {
    Animations()
}
