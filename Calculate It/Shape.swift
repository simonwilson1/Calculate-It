//
//  Shape.swift
//  Calculate It
//
//  Created by Simon Wilson on 05/03/2024.
//

import UIKit

class BaseShape {
    
    let shapeName: String
    let icon: UIImage
    
    init(shapeName: String, icon: UIImage) {
        self.shapeName = shapeName
        self.icon = icon
    }
    
}

class Circle : BaseShape {

    private let pi = 3.14159265359
    
    func area(radius: Double) -> Double {
        
        return pi * pow(radius, 2)
        
    }
    
    func perimeter(radius: Double) -> Double {
        
        return 2 * pi * radius
        
    }
    
}

class RightTriangle : BaseShape {
    
    func area(a: Double, b: Double) -> Double{
        
        return (a * b) / 2
        
    }
    
    func perimeter(a: Double, b: Double, c: Double) -> Double{
        
        return a + b + c
        
    }
    
}

class ScaleneTriangle : BaseShape {
    
    func area(base: Double, height: Double) -> Double {
        
        return (base * height) / 2
        
    }
    
    func perimeter(base: Double, side1: Double, side2: Double) -> Double {
        
        return base + side1 + side2
        
    }
    
}

class EquilateralTriangle : BaseShape {
    
    func area(area: Double) -> Double {
        
        return (sqrt(3) / 4) * pow(area, 2)
        
    }
    
    func perimeter(side: Double) -> Double {
        
        return 3 * side
        
    }
    
}
