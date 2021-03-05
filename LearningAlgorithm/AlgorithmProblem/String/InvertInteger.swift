//
//  InvertInteger.swift
//  StudyAlgorithm
//
//  Created by super on 2021/2/20.
//

/*
 给你一个 32 位的有符号整数 x ，返回 x 中每位上的数字反转后的结果。

 如果反转后整数超过 32 位的有符号整数的范围 [−231,  231 − 1] ，就返回 0。

 假设环境不允许存储 64 位整数（有符号或无符号）。
  

 示例 1：

 输入：x = 123
 输出：321
 示例 2：

 输入：x = -123
 输出：-321
 示例 3：

 输入：x = 120
 输出：21
 示例 4：

 输入：x = 0
 输出：0
  

 提示：

 -231 <= x <= 231 - 1

 作者：力扣 (LeetCode)
 链接：https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnx13t/
 来源：力扣（LeetCode）
 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
 */

import Foundation

class InvertInteger: NSObject {
    
    class func reverse(_ x: Int) -> Int {
        if x == 0 {
            return 0
        }
        
        var tmp = abs(x)
        var result = 0
        
        while tmp > 0 {
            let remainder = tmp % 10
            result = result * 10 + remainder
            
            tmp = tmp / 10
        }
        
        if x < 0 {
            result = -result
        }
        
        if ((-2147483648) <= result && result <= (2147483647)) {
            return result
        } else {
            return 0
        }

    }
    
}
