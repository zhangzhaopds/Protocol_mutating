//
//  Vehicle.swift
//  Tips
//
//  Created by 张昭 on 16/5/11.
//  Copyright © 2016年 张昭. All rights reserved.
//

import UIKit

// 协议
protocol VehicleProtocol {
    
    var color: UIColor{get set}
    
    mutating func changeColor()
    
}

// 结构体实现协议
struct StructProtocol: VehicleProtocol {
    
    var color: UIColor = UIColor.blueColor()
    
    mutating func changeColor() {
        color = UIColor.redColor()
    }
}

// 类实现协议
class ClassProtocol: VehicleProtocol {
    var color: UIColor = UIColor.blueColor()
    func changeColor() {
        color = UIColor.greenColor()
    }
}

// 枚举实现协议
enum EnumProtocol: VehicleProtocol {
    case first(UIColor)
    var color: UIColor {
        get {
            switch self {
            case .first(UIColor.blueColor()):
                return UIColor.blueColor()
            case .first(UIColor.redColor()):
                return UIColor.purpleColor()
            default:
                return UIColor.whiteColor()
            }
        }
        set {
            switch self {
            case .first(_):
                self = .first(newValue)
            }
        }
    }
    mutating func changeColor() {
        switch self {
        case .first(UIColor.blueColor()):
            self = .first(UIColor.redColor())
        default:
            self = .first(UIColor.whiteColor())
        }
    }
    
}

