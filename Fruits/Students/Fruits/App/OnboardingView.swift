//
//  OnboardingView.swift
//  Fruits
//
//  Created by Karthik Palusa on 2/7/24.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - PREVIEW

#Preview {
    OnboardingView()
}
