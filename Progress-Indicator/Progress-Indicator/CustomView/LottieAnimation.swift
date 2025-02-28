//
//  LottieAnimation.swift
//  Progress-Indicator
//
//  Created by Salman_Macbook on 27/02/25.
//

import SwiftUI
import Lottie

// MARK: - Lottie Animation Wrapper
struct LottieAnimation: UIViewRepresentable {
    let name: String
    let loopMode: LottieLoopMode
    let animationSpeed: CGFloat
    
    func makeUIView(context: Context) -> Lottie.LottieAnimationView {
        let animationView = LottieAnimationView(name: name)
        animationView.loopMode = loopMode
        animationView.animationSpeed = animationSpeed
        animationView.play()
        return animationView
    }
    
    func updateUIView(_ uiView: Lottie.LottieAnimationView, context: Context) {}
}
