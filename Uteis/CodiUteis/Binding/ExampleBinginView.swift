//
//  ExempleBinginView.swift
//  Uteis
//
//  Created by ednardo alves on 05/12/24.
//

import SwiftUI

struct ExampleBinginView: View {
    @State private var color1: Color = .red
    @State private var color2: Color = .green
    @State private var color3: Color = .blue
    
    var body: some View {
        ZStack {
            Color(color1)
                .opacity(0.2)
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    RectangleView(color: color1)
                    RectangleView(color: color2)
                    RectangleView(color: color3)
                }
                
                CustomColorPickerView(
                    text: "Left rectangle",
                    selectedColor: $color1
                )
                CustomColorPickerView(
                    text: "Center rectangle",
                    selectedColor: $color2
                )
                CustomColorPickerView(
                    text: "Right rectangle",
                    selectedColor: $color3
                )
            }
        }
    }
}

#Preview {
    ExampleBinginView()
}
