//
//  LoadingView.swift
//  Progress-Indicator
//
//  Created by Salman_Macbook on 27/02/25.
//

import SwiftUI

struct LoadingView: View {
    @State private var isLoading = false
    
    var body: some View {
        VStack(spacing: 10) {
            Button("Toggle Loading") {
                isLoading.toggle()
            }
            .foregroundStyle(.black)
            .fontWeight(.bold)
            
            if isLoading {
                VStack {
                    // Lottie Animation
                    LottieAnimation(
                        name: "loading", // Lottie JSON file name
                        loopMode: .loop,
                        animationSpeed: 1.0
                    )
                    .frame(width: 50, height: 50)
                    
                    // Canvas Animation
                    RotatingGradientLoader()
                }
            }
        }
    }
}

#Preview {
    LoadingView()
}
