//
//  Cat.swift
//  Adopte Un Chat
//
//  Created by Bryan Battu on 27/01/2021.
//

import UIKit

struct Cat {
    var name: String
    var age: Int
    var gender: Gender
    var image: String
    
    var desc: String {
        return "\(gender.rawValue) agé de \(age) ans."
    }
    
    var color: UIColor {
        switch gender {
        case .Male: return UIColor.systemTeal
        case .Femelle: return UIColor.systemPink
        }
    }
    var cgColor: CGColor {
        return color.cgColor
    }
    
    func setImage() -> UIImage? {
        return UIImage(named: image)
    }
}

enum Gender: String {
    case Male
    case Femelle
}
