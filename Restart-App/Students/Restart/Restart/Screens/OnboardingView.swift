//
//  OnboardingView.swift
//  Restart
//
//  Created by Karthik Palusa on 1/30/24.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTY
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true;
    
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Onboarding")
                .font(.largeTitle)
            
            Button(action: {
                // Some action
                isOnboardingViewActive = false
                
            }, label: {
                Text("Button")
            }
            )
            
        } //: VSTACK
    }
}

#Preview {
    OnboardingView()
}
