//
//  AddOne.swift
//  StudyAlgorithm
//
//  Created by super on 2021/2/8.
//

/*
 加一
 给定一个由 整数 组成的 非空 数组所表示的非负整数，在该数的基础上加一。

 最高位数字存放在数组的首位， 数组中每个元素只存储单个数字。

 你可以假设除了整数 0 之外，这个整数不会以零开头。

  

 示例 1：

 输入：digits = [1,2,3]
 输出：[1,2,4]
 解释：输入数组表示数字 123。
 示例 2：

 输入：digits = [4,3,2,1]
 输出：[4,3,2,2]
 解释：输入数组表示数字 4321。
 示例 3：

 输入：digits = [0]
 输出：[1]


 作者：力扣 (LeetCode)
 链接：https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2cv1c/
 来源：力扣（LeetCode）
 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
 */

import Foundation

class AddOne: NSObject {
    
    class func plusOne(_ digits: [Int]) -> [Int] {
        var tempDigits = digits
        
        for i in 0..<digits.count {
            
            let index = digits.count - 1 - i
            
            tempDigits[index] = tempDigits[index] + 1
            tempDigits[index] = tempDigits[index] % 10
            if tempDigits[index] != 0 {
                return tempDigits
            }
        }
        
        tempDigits.insert(1, at: 0)
        
        return tempDigits
    }
    
    class func plusOne0(_ digits: [Int]) -> [Int] {
        
        var tempDigits = digits
        AddOne.reverse(&tempDigits, start: 0, end: tempDigits.count - 1)
        
//        var integer = 0
        
        for index in 0..<tempDigits.count {
                     
            tempDigits[index] = tempDigits[index] + 1
            tempDigits[index] = tempDigits[index] % 10
            if tempDigits[index] != 0 {
                break
            }
            
            
//            var remainder = tempDigits[index]
//
//            if index == 0 {
//                remainder = remainder + 1
//            } else {
//                remainder = remainder + integer
//            }
//
//            integer = remainder / 10
//            tempDigits[index] = remainder % 10
//
//            if integer == 0 {
//                break
//            }
            
        }
        
        if tempDigits[tempDigits.count - 1] % 10 == 0 {
            tempDigits.append(1)
        }
        
        AddOne.reverse(&tempDigits, start: 0, end: tempDigits.count - 1)
        return tempDigits
    }
    
    class func reverse(_ nums: inout [Int], start: Int, end: Int) {
        var s = start
        var e = end
        var tmp: Int
        
        while s < e {
            tmp = nums[s]
            nums[s] = nums[e]
            nums[e] = tmp
            
            s += 1
            e -= 1
        }
    }
}
