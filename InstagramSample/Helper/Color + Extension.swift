//
//  Color + Extension.swift
//  GameOfChat
//
//  Created by Ayanbola Felix on 07/11/2017.
//  Copyright © 2017 Ayanbola Felix. All rights reserved.
//

import UIKit

extension UIColor {
    
    
    convenience init(r:CGFloat, g:CGFloat, b:CGFloat){
         self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
    
    static func rgb(r:CGFloat, g:CGFloat, b:CGFloat)-> UIColor {
        
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
