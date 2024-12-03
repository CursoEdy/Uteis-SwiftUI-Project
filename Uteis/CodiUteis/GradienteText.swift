//
//  GradienteText.swift
//  Uteis
//
//  Created by ednardo alves on 03/12/24.
//

import SwiftUI

struct GradienteText: View {
    
    let raibow = LinearGradient(
        colors: [.brown, .yellow,.blue,.red,.green,.black],
        startPoint: .leading,
        endPoint: .trailing
    )
    
    var body: some View {
        Text("Edy Alves").foregroundStyle(raibow)
    }
}

#Preview {
    GradienteText()
}
