//
//  OnboardingView.swift
//  MontraDev
//
//  Created by MACBOOK PRO on 18/04/24.
//

import SwiftUI

struct OnboardingView: View {
    var tabData: [Onboarding] = Onboarding.data
    let dotIndicator = UIPageControl.appearance()
    @State private var selectedTab = 0
    
    var body: some View {
        VStack {
            TabView(selection: $selectedTab, content: {
                ForEach(tabData) { tab in
                    OnboardingComponent(content: tab)
                        .tag(tab.tag)
                }
            })
            .tabViewStyle(PageTabViewStyle())
            .animation(.easeInOut, value: selectedTab)
            //.onAppear(perform: {
            //    dotIndicator.currentPageIndicatorTintColor = UIColor(named: "Violet100")
            //    dotIndicator.pageIndicatorTintColor = UIColor(named: "Violet20")
            //})
            // .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
            CustomDotIndicatorComponent(count: tabData.count, selectedTab: $selectedTab)
        }
    }
}

#Preview {
    OnboardingView()
}
