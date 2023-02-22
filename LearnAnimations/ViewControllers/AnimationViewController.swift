//
//  AnimationViewController.swift
//  LearnAnimations
//
//  Created by Yuriy on 21.02.2023.
//

import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {
    
    
    @IBOutlet var animationVeiw: SpringView!
    @IBOutlet var animationInfoLabel: UILabel!
    
    private var animations = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationVeiw.layer.cornerRadius = 10
    }

    @IBAction func runAnimationButton(_ sender: UIButton) {
        let animationRandomIndex = Int.random(in: 0..<animations.count)
        let curveRandomIndex = Int.random(in: 0..<animations.count)
        let force = Double.random(in: 1...1.5)
        let duration = Double.random(in: 2...4)
        
        let animation = animations[animationRandomIndex].animationName
        let curve = animations[curveRandomIndex].curveName
        
        sender.setTitle("Run \(animation)", for: .normal)
        animationVeiw.animation = animation
        animationVeiw.curve = curve
        animationVeiw.force = force
        animationVeiw.duration = duration
        animationVeiw.delay = 0.3
        animationVeiw.animate()
        
        
    }
    
    
    
}

