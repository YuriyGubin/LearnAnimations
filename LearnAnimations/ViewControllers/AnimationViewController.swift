//
//  AnimationViewController.swift
//  LearnAnimations
//
//  Created by Yuriy on 21.02.2023.
//

import UIKit

class AnimationViewController: UIViewController {
    
    
    @IBOutlet var animationVeiw: UIView!
    @IBOutlet var animationInfoLabel: UILabel!
    
    private var animations = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationVeiw.layer.cornerRadius = 10
    }


}

