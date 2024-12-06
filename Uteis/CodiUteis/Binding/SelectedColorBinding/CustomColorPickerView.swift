//
//  CustomColorPickerView.swift
//  Uteis
//
//  Created by ednardo alves on 05/12/24.
//

import SwiftUI

struct CustomColorPickerView: View {
    let text: String
    
    @Binding var selectedColor: Color
    
    let colors: [Color] = [
        .red,
        .blue,
        .green,
        .brown,
        .pink,
        .indigo,
        .black,
        .gray,
        .orange,
        .cyan,
        .white,
        .yellow,
        .purple
        
    ]
    
    var body: some View {
        VStack (alignment: .leading, spacing: 3) {
            Text(text)
                .font(.headline)
                .fontWeight(.semibold)
            ScrollView (.horizontal, showsIndicators: false) {
                HStack {
                    
                    ForEach(colors, id: \.self) { color in
                        ColorCircleView(color: color, isSelected: color == selectedColor)
                            .onTapGesture {
                                withAnimation{
                                    selectedColor = color
                                }
                            }
                    }
                }
            }
            .padding(10)
            .background(.gray.opacity(0.2))
            .clipShape(.rect(cornerRadius: 20))
        }
        .padding()
    }
}

#Preview {
    CustomColorPickerView(text: "Color", selectedColor: .constant(.red))
}
