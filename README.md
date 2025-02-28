# Custom Loading Animations in SwiftUI

![Demo](https://github.com/Salman7310/Custom-Progress-Indicator)

A SwiftUI project showcasing custom loading animations using **Lottie** and **Canvas**. Perfect for adding polished loading states to your iOS apps!

## Features
- 🎨 **Lottie Animations**: Smooth, complex animations using Lottie JSON files
- ✏️ **Canvas Animations**: Custom-drawn progress indicators with SwiftUI's Canvas
- 🎛️ **Configurable**: Easily customize colors, sizes, and animation speeds
- 📱 **iOS 15+**: Built with modern SwiftUI features

## Concepts Demonstrated
1. **Lottie Integration**
   - Wrapping Lottie in SwiftUI
   - Controlling animation playback
   - Customizing animation speed and loop modes

2. **Canvas Animations**
   - Drawing custom shapes with `Path`
   - Using `AngularGradient` for smooth color transitions
   - Animating with `TimelineView`

3. **Custom Progress Indicators**
   - Rotating gradient loader
   - Smooth transitions between states
   - Reusable components

## Requirements
- Xcode 15+
- iOS 15+
- Swift 5.9

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/Salman7310/Custom-Progress-Indicator
   
2. Open CustomLoadingAnimations.xcodeproj in Xcode
3. Add your Lottie JSON file to Resources/loading.json
4. Build and run on a simulator or physical device

Usage
Lottie Animation

LottieAnimationView(name: "loading", loopMode: .loop, animationSpeed: 1.0)
    .frame(width: 100, height: 100)
    
Canvas Animation

CanvasAnimationView(colors: [.blue, .purple, .blue], lineWidth: 8)
    .frame(width: 80, height: 80)
    
    
Contributing
Pull requests are welcome! For major changes, please open an issue first.

License
MIT License - see LICENSE for details.


🛠 Build and Run
Open the project in Xcode

Select a simulator or connect a physical device

Press Cmd + R to build and run

Tap "Start Loading" to see the animations
