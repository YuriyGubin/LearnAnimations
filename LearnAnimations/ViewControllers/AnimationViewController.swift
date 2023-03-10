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
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationVeiw.layer.cornerRadius = 10
        animationInfoLabel.text = animation.description
    }

    @IBAction func runAnimationButton(_ sender: UIButton) {
        animationInfoLabel.text = animation.description
        
        animationVeiw.animation = animation.name
        animationVeiw.curve = animation.curve
        animationVeiw.force = animation.force
        animationVeiw.duration = animation.duration
        animationVeiw.delay = animation.delay
        animationVeiw.animate()
        
        animation = Animation.getAnimation()
    
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
}

