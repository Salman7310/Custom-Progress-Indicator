//
//  RotatingGradientLoader.swift
//  Progress-Indicator
//
//  Created by Salman_Macbook on 27/02/25.

import Foundation
import SwiftUI
import Lottie

struct RotatingCanvas: View {
    let timeline: TimelineViewDefaultContext
    
    var body: some View {
        Canvas { context, size in
            let lineWidth: CGFloat = 8
            let radius = min(size.width, size.height) / 2 - lineWidth
            let center = CGPoint(x: size.width / 2, y: size.height / 2)
            let date = timeline.date.timeIntervalSinceReferenceDate
            
            // Define a linear gradient
            let gradient = Gradient(colors: [.blue, .purple, .blue])
            let startPoint = CGPoint(x: 0, y: 0) // Top-left corner
            let endPoint = CGPoint(x: size.width, y: size.height) // Bottom-right corner
            
            let path = Path { path in
                path.addArc(
                    center: center,
                    radius: radius,
                    startAngle: .degrees(0),
                    endAngle: .degrees(360),
                    clockwise: false
                )
            }
            .strokedPath(StrokeStyle(lineWidth: lineWidth, lineCap: .round))
            
            // Apply transformations
            context.rotate(by: .degrees(date * 360))
            
            // Fill the path with a linear gradient
            context.fill(path, with: .linearGradient(gradient, startPoint: startPoint, endPoint: endPoint))
        }
        .frame(width: 80, height: 80)
    }
}

struct RotatingGradientLoader: View {
    var body: some View {
        TimelineView(.animation) { timeline in
            RotatingCanvas(timeline: timeline)
        }
    }
}
