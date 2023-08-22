//
//  HomeView.swift
//  Restart
//
//  Created by Hye Sung Park on 2023/08/22.
//

import SwiftUI

struct HomeView: View {
  // MARK: - PROPERTY
  
  @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
  
  
  // MARK: - BODY
  
    var body: some View {
      VStack(spacing: 20) {
        Text("Home")
          .font(.largeTitle)
        
        Button {
          isOnboardingViewActive = true
        } label: {
          Text("Restart")
        }

      }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
