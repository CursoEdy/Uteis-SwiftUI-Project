//
//  AcrosticPoemView.swift
//  Uteis
//
//  Created by ednardo alves on 02/12/24.
//

import SwiftUI

struct lineOfPoetry: Identifiable {
    let id = UUID()
    let line: String
    
    var firstChar: String {
        if let first = line.first {
            return String(first)
        } else {
            return ""
        }
    }
    
    var remaining: String {
        String(line.dropFirst())
    }
}

struct AcrosticPoemView: View {
    let poem: [lineOfPoetry] = [
        .init(line: "Dreams"),
        .init(line: "Florest")
    ]
    
    var body: some View {
        Text("\(Text(poem[0].firstChar).foregroundStyle(.red))\(poem[0].remaining)")
    }
}

#Preview {
    AcrosticPoemView()
}
