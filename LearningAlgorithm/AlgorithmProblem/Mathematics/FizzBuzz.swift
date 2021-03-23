//
//  FizzBuzz.swift
//  LearningAlgorithm
//
//  Created by super on 2021/3/23.
//  Copyright © 2021 王章仲. All rights reserved.
//

/*
 Fizz Buzz
 写一个程序，输出从 1 到 n 数字的字符串表示。

 1. 如果 n 是3的倍数，输出“Fizz”；

 2. 如果 n 是5的倍数，输出“Buzz”；

 3.如果 n 同时是3和5的倍数，输出 “FizzBuzz”。

 示例：

 n = 15,

 返回:
 [
     "1",
     "2",
     "Fizz",
     "4",
     "Buzz",
     "Fizz",
     "7",
     "8",
     "Fizz",
     "Buzz",
     "11",
     "Fizz",
     "13",
     "14",
     "FizzBuzz"
 ]

 作者：力扣 (LeetCode)
 链接：https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xngt85/
 来源：力扣（LeetCode）
 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
 */

import UIKit

class FizzBuzz: NSObject {
    class func fizzBuzz(_ n: Int) -> [String] {
        var result = [String]()
        
        for item in 1...n {
            
            result.append("")
            
            if item % 3 == 0 {
                result[item-1] += "Fizz"
            }
            
            if item % 5 == 0 {
                result[item-1] += "Buzz"
            }
            
            if result[item-1] == "" {
                result[item-1] = "\(item)"
            }
        }
        
        return result
    }
    
    func fizzBuzz2(_ n: Int) -> [String] {
        var result = [String]()
        
        for item in 1...n {
            
            result.append("")
            
            if item % 3 == 0 {
                result[item-1] = "Fizz"
            }
            
            if item % 5 == 0 {
                result[item-1] = result[item-1] + "Buzz"
            }
            
            if result[item-1] == "" {
                result[item-1] = "\(item)"
            }
        }
        
        return result
    }
    
    func fizzBuzz1(_ n: Int) -> [String] {
        var result = [String]()
        
        for item in 1...n {
            
            var tmp = ""
            
            if item % 3 == 0 {
                tmp = tmp + "Fizz"
            }
            
            if item % 5 == 0 {
                tmp = tmp + "Buzz"
            }
            
            if tmp == "" {
                tmp = "\(item)"
            }
            
            result.append(tmp)
        }
        
        return result
    }
    
}
