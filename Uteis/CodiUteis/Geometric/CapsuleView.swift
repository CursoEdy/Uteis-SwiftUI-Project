//
//  CapsuleView.swift
//  Uteis
//
//  Created by ednardo alves on 03/12/24.
//

import SwiftUI

struct CapsuleView: View {
    let color: [Color] = [
        .red,
        .purple,
        .blue
    ]
    var body: some View {
        ZStack {
            Capsule()
                .trim(from: 0.0, to: 1/3)
                .stroke(color[1], lineWidth: 5)
                .frame(width: 200, height: 300)
            Capsule()
                .trim(from: 1/3, to: 2/3)
                .stroke(color[2], lineWidth: 5)
                .frame(width: 200, height: 300)
        }
    }
}

#Preview {
    CapsuleView()
}
