//
//  MoveZeroes.swift
//  StudyAlgorithm
//
//  Created by super on 2021/2/20.
//

/*
 移动零
 给定一个数组 nums，编写一个函数将所有 0 移动到数组的末尾，同时保持非零元素的相对顺序。

 示例:

 输入: [0,1,0,3,12]
 输出: [1,3,12,0,0]
 说明:

 必须在原数组上操作，不能拷贝额外的数组。
 尽量减少操作次数。


 作者：力扣 (LeetCode)
 链接：https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2ba4i/
 来源：力扣（LeetCode）
 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
 */

import Foundation

class MoveZeroes: NSObject {
    class func moveZeroes(_ nums: inout [Int]) {
        
        var currentIndex = 0
        
        for _ in 0..<nums.count {
            
            if nums[currentIndex] == 0 {
                nums.remove(at: currentIndex)
                nums.append(0)
            } else {
                currentIndex = currentIndex + 1
            }
            
        }
        
    }
    
    class func moveZeroes0(_ nums: inout [Int]) {
        
        var currentIndex = 0
        
        for index in 0..<nums.count {
            
            if nums[index] != 0 {
                nums[currentIndex] = nums[index]
                currentIndex = currentIndex + 1
            }
            
        }
        
        while currentIndex < nums.count {
            nums[currentIndex] = 0
            currentIndex = currentIndex + 1
        }
        
    }
}
