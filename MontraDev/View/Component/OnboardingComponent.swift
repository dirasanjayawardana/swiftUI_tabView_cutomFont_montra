//
//  OnboardingSingleView.swift
//  MontraDev
//
//  Created by MACBOOK PRO on 18/04/24.
//

import SwiftUI

struct OnboardingComponent: View {
    var content: Onboarding
    
    var body: some View {
        VStack {
            Image(content.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 312, height: 312)
            
            VStack(spacing: 16, content: {
                Text(content.title)
                    .font(.custom("Inter", size: 32))
                    .fontWeight(.bold)
                    .lineLimit(2, reservesSpace: true)
                
                Text(content.description)
                    .font(.custom("Inter", size: 16))
                    .fontWeight(.regular)
                    .foregroundStyle(.gray)
            })
            .frame(width: 280, height: 150)
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    OnboardingComponent(content: Onboarding.data[1])
}
