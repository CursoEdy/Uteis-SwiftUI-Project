//
//  TestIndicator.swift
//  Uteis
//
//  Created by ednardo alves on 03/12/24.
//

import SwiftUI

struct TestIndicatorView: View {
    @State private var percent: CGFloat = 0.7
    
    var body: some View {
        Text("Gradient indicator")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding()
        
        Spacer()
        Indicators(
            width: 250,
            heigt: 20,
            percent: percent,
            color: .gray
        )
        Spacer()
        Slider(value: $percent, label: {})
            .padding()
    }
}

#Preview {
    TestIndicatorView()
}
