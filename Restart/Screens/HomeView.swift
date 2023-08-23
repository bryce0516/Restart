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
      // mark: - header
      Spacer()
      
      ZStack {
        CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
        Image("character-2")
          .resizable()
          .scaledToFit()
        .padding()
      }
      // mark: - body
      
      Text(
        "The time that leads to mastery is dependent on the intensity of our focus.")
      .font(.title3)
      .fontWeight(.light)
      .foregroundColor(.secondary)
      .multilineTextAlignment(.center)
      .padding()
      
      // mark: - footer
      
      Spacer()
      
      
      Button {
        isOnboardingViewActive = true
      } label: {
        
        Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
          .imageScale(.large)
        
        Text("Restart")
          .font(.system(.title3, design: .rounded))
          .fontWeight(.bold)
      }
      .buttonStyle(.borderedProminent)
      .buttonBorderShape(.capsule)
      .controlSize(.large)
      
    } //: vstack
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
