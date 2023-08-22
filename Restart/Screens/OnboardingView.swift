//
//  OnboardingView.swift
//  Restart
//
//  Created by Hye Sung Park on 2023/08/22.
//

import SwiftUI

struct OnboardingView: View {
  // MARK: - PROPERTY
  
  @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
  
  // MARK: - BODY
  
  var body: some View {
    VStack(spacing: 20) {
      Text("Onboarding")
        .font(.largeTitle)
      
      Button(action:{
        isOnboardingViewActive = false
      }) {
        Text("Start")
      }
    }
  }
}

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}
