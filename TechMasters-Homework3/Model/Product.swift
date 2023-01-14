//
//  Product.swift
//  TechMasters-Homework3
//
//  Created by admin on 14.01.2023.
//

import UIKit

struct Product{
    let name: String
    var image: UIImage?{
        switch name{
        case "Java Berry Frappuccino":
            return UIImage(named:"java-berry-frappuccino")
        case "Love Bean Frappuccino":
            return UIImage(named: "love-bean-frappuccino")
        case "Valentine Frappuccino":
            return UIImage(named: "valentine-frappuccino")
        default:
            return UIImage(named: "")
        }
    }
}
