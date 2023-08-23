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
    ZStack {
      Color("ColorBlue")
        .ignoresSafeArea(.all, edges: .all)
      
      VStack(spacing: 20) {
        // mark: - header
        
        Spacer()
        VStack(spacing: 0) {
          Text("Share.")
            .font(.system(size: 60))
            .fontWeight(.heavy)
            .foregroundColor(.white)
          
          Text("It's no t how much we give but how much love we put into giving.")
            .font(.title3)
            .fontWeight(.light)
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 10)
        } // header
        
        
        // mark: - body
        ZStack {
          ZStack {
            Circle()
              .stroke(.white.opacity(0.2), lineWidth: 40)
              .frame(width: 260, height:  260, alignment: .center)
            Circle()
              .stroke(.white.opacity(0.2), lineWidth: 80)
              .frame(width: 260, height:  260, alignment: .center)
          }
          
          Image("character-1")
            .resizable()
            .scaledToFit()
        } //: body
        
        
        Spacer()
        
        // mark: - footer
        ZStack {
          
        }
      } //: vstack
    } //: zstack
  }
}

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}
