//
//  ContentView.swift
//  MontraDev
//
//  Created by MACBOOK PRO on 18/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .font(.system(size: 26, design: .rounded))
                .fontWeight(.bold)
            
            Text("Hello, world!")
                .font(.custom("Inter", size: 26))
                .fontWeight(.bold)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
