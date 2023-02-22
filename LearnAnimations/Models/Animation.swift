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
preset: \(animationName)
curve: \(curveName)
force: \(force)
duration: \(duration)
delay: \(delay)
"""
    }
    
    static func getAnimation() -> [Animation] {
        
        let dataStore = DataStore.shared
        
        var animations: [Animation] = []
        
        let count = min(dataStore.animations.count, dataStore.curves.count)
        
        for index in 0..<count {
            animations.append(
                Animation(
                    animationName: dataStore.animations[index].rawValue,
                    curveName: dataStore.curves[index].rawValue,
                    force: Double.random(in: 1...1.5),
                    duration: Double.random(in: 2...4),
                    delay: 0.5
                )
            )
        }
        
        return animations
    }
}
