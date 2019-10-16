//
//  ViewController.swift
//  GuzhavinA_HW2.9
//
//  Created by Саша Гужавин on 16/10/2019.
//  Copyright © 2019 Гужавин Александр. All rights reserved.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var viewAnimation: SpringView!
    @IBOutlet var lableView: [UILabel]!
    @IBOutlet weak var buttionAnimation: UIButton!
    
    var number: [CGFloat] = [2, 3, 4, 5, 6]
    var animation = [
        "shake",
        "pop",
        "morph",
        "squeeze",
        "wobble",
        "swing",
        "flipX",
        "flipY",
        "fall",
        "squeezeLeft",
        "squeezeRight",
        "squeezeDown",
        "squeezeUp",
        "slideLeft",
        "slideRight",
        "slideDown",
        "slideUp",
        "fadeIn",
        "fadeOut",
        "fadeInLeft",
        "fadeInRight",
        "fadeInDown",
        "fadeInUp",
        "foomIn",
        "foomOut",
        "flash"
    ]
    var animationCurve = [
        "easeIn",
        "easeOut",
        "easeInOut",
        "linear",
        "spring",
        "easeInSine",
        "easeOutSine",
        "easeInOutSine",
        "easeInQuad",
        "easeOutQuad",
        "easeInOutQuad",
        "easeInCubic",
        "easeOutCubic",
        "easeInOutCubic",
        "easeInQuart",
        "easeOutQuart",
        "easeInOutQuart",
        "easeInQuint",
        "easeOutQuint",
        "easeInOutQuint",
        "easeInExpo",
        "easeOutExpo",
        "easeInOutExpo",
        "easeInCirc",
        "easeOutCirc",
        "easeInOutCirc",
        "easeInBack",
        "easeOutBack",
        "easeInOutBack"
    ]
    
    @IBAction func goAnimation() {
        
        viewAnimation.animation = animation.first!
        viewAnimation.curve = animationCurve.first!
        viewAnimation.force = number.first!
        viewAnimation.duration = number.first! - 1
        
        
        lableView[0].text = "Animation = \(animation.first!)"
        lableView[1].text = "Curve = \(animationCurve.first!)"
        lableView[2].text = "Force = \(viewAnimation.force.binade)"
        lableView[3].text = "Duration = \(viewAnimation.duration.binade)"
        
        animation.shuffle()
        animationCurve.shuffle()
        number.shuffle()
        
        buttionAnimation.setTitle(animation.first!, for: .normal)
        
        viewAnimation.animate()
    }
}
