//
//  ThePowerOfThree.swift
//  LearningAlgorithm
//
//  Created by super on 2021/3/25.
//  Copyright © 2021 王章仲. All rights reserved.
//

import UIKit

class ThePowerOfThree: NSObject {
    
    class func isPowerOfThree(_ n: Int) -> Bool {
        return isPowerOfThree2(n)
    }
    
    class func isPowerOfThree2(_ n: Int) -> Bool {
        if n<=0 {
            return false
        }
        
        var num = n
        
        while num > 1 {
            if num % 3 != 0 {
                return false
            }
            num = num / 3
        }
        
        return num == 1
        
    }
    
    class func isPowerOfThree1(_ n: Int) -> Bool {
        return (n > 0) && (n == 1 || (n%3 == 0 && isPowerOfThree1(n/3)))
        
    }
    
    class func isPowerOfThree0(_ n: Int) -> Bool {
        if (n<=0) {
            return false;
        }

        return 1162261467%n==0;
    }
    
    
}
