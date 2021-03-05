//
//  InvertInteger.swift
//  StudyAlgorithm
//
//  Created by super on 2021/2/20.
//

import Foundation

class InvertInteger: NSObject {
    
    class func reverse(_ x: Int) -> Int {
        if x == 0 || x < -2^31 - 1 || x > 2^31 - 1 {
            return 0
        }
        
        var tmp = abs(x)
        var result = 0
        
        while tmp > 0 {
            let remainder = tmp % 10
            result = result * 10 + remainder
            
            tmp = tmp / 10
        }
        
        if x > 0 {
            return result
        } else {
            return -result
        }
    }
    
}
