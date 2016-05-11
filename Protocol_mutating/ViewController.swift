//
//  ViewController.swift
//  Protocol_mutating
//
//  Created by 张昭 on 16/5/11.
//  Copyright © 2016年 张昭. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var myStruct: UIButton!

    @IBOutlet var myEnum: UIButton!
    
    @IBOutlet var myClass: UIButton!
    
    var theStruct = StructProtocol()
    var theEnum: EnumProtocol?
    var theClass = ClassProtocol()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myStruct.backgroundColor = theStruct.color
        
        theEnum = EnumProtocol.first(UIColor.blueColor())
        myEnum.backgroundColor = theEnum?.color
        
        myClass.backgroundColor = theClass.color
    }
    
    // 结构体实现
    @IBAction func dealStruct(sender: UIButton) {
        theStruct.changeColor()
        myStruct.backgroundColor = theStruct.color
    }
    
    // 枚举实现
    @IBAction func dealEnum(sender: UIButton) {
        theEnum?.changeColor()
        myEnum.backgroundColor = theEnum?.color
    }
    
    // 类实现
    @IBAction func dealClass(sender: UIButton) {
        theClass.changeColor()
        myClass.backgroundColor = theClass.color
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

