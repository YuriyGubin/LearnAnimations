//
//  Animation.swift
//  LearnAnimations
//
//  Created by Yuriy on 22.02.2023.
//

struct Animation {
    
    let animationName: String
    let curveName: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
state: \(animationName)
curve: \(curveName)
force: \(String(format: "%.2f", force))
duration: \(String(format: "%.2f", duration))
delay: \(String(format: "%.2f", delay))
"""
    }
    
    static func getAnimation() -> Animation {
        
        let dataStore = DataStore.shared
        
        let animation = Animation(
            animationName: dataStore.animations.randomElement()?.rawValue ?? "pop",
            curveName: dataStore.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 0.5...1),
            delay: 0.3
        )
        
        return animation
    }
}
