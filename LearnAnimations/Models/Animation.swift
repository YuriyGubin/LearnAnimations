//
//  Animation.swift
//  LearnAnimations
//
//  Created by Yuriy on 22.02.2023.
//

struct Animation {
    
    let animationName: String
    let curveName: String
    
    static func getAnimation() -> [Animation] {
        
        let dataStore = DataStore.shared
        
        var animations: [Animation] = []
        
        let count = min(dataStore.animations.count, dataStore.curves.count)
        
        for index in 0..<count {
            animations.append(
                Animation(
                    animationName: dataStore.animations[index].rawValue,
                    curveName: dataStore.curves[index].rawValue
                )
            )
        }
        
        return animations
    }
}
