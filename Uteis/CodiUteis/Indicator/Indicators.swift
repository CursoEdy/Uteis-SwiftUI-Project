//
//  Indicators.swift
//  Uteis
//
//  Created by ednardo alves on 03/12/24.
//

import SwiftUI

struct Indicators: View {
    let width: CGFloat
    let heigt: CGFloat
    let percent: CGFloat
    let amount: CGFloat
    let backgroundColor: Color
    
    var barColor: LinearGradient{
        LinearGradient(
            colors: [
                .red,
                .blue,
                .green
            ],
            startPoint: .leading,
            endPoint: .trailing
        )
    }
    
    init(width: CGFloat, heigt: CGFloat, percent: CGFloat, color: Color) {
        self.width = width
        self.heigt = heigt
        self.percent = percent
        self.amount = width * percent
        self.backgroundColor = color
    }
    
    init(width: CGFloat, heigt: CGFloat, amount: CGFloat, color: Color) {
        self.width = width
        self.heigt = heigt
        self.percent = amount / width
        self.amount = amount
        self.backgroundColor = color
    }
    
    var body: some View {
        ZStack (alignment: .leading) {
            Capsule()
                .fill(backgroundColor)
                .frame(width: width, height: heigt)
            Capsule()
                .fill(barColor)
                .frame(width: amount, height: heigt)
        }
    }
}

#Preview {
    VStack{
        Indicators(width: 250, heigt: 20, percent: 0.7, color: .gray)
        Indicators(width: 250, heigt: 20, amount: 65, color: .gray)
    }
}
