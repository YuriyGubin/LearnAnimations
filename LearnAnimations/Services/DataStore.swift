//
//  DataStore.swift
//  LearnAnimations
//
//  Created by Yuriy on 22.02.2023.
//

import SpringAnimation

class DataStore {
    
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
