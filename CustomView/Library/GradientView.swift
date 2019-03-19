//
//  GradientView.swift
//  CustomView
//
//  Created by Geonu Jeon on 19/03/2019.
//  Copyright © 2019 Geonu Jeon. All rights reserved.
//

import UIKit

class GradientView: CustomView {
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    var gradientLayer: CAGradientLayer {
        return layer as! CAGradientLayer
    }
    
    @IBInspectable var startColor: UIColor = UIColor.white {
        didSet {
            updateGradientColors()
        }
    }
    
    @IBInspectable var startPoint: CGPoint = CGPoint(x: 0, y: 0.5) {
        didSet {
            gradientLayer.startPoint = startPoint
        }
    }
    
    @IBInspectable var endColor: UIColor = UIColor.white {
        didSet {
            updateGradientColors()
        }
    }
    
    @IBInspectable var endPoint: CGPoint = CGPoint(x: 1, y: 0.5) {
        didSet {
            gradientLayer.endPoint = endPoint
        }
    }
    
    private func updateGradientColors() {
        gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
    }
}
