//
//  RotateArray.swift
//  StudyAlgorithm
//
//  Created by super on 2021/2/8.
//

/*
 旋转数组
 给定一个数组，将数组中的元素向右移动 k 个位置，其中 k 是非负数。

  

 进阶：

 尽可能想出更多的解决方案，至少有三种不同的方法可以解决这个问题。
 你可以使用空间复杂度为 O(1) 的 原地 算法解决这个问题吗？
  

 示例 1:

 输入: nums = [1,2,3,4,5,6,7], k = 3
 输出: [5,6,7,1,2,3,4]
 解释:
 向右旋转 1 步: [7,1,2,3,4,5,6]
 向右旋转 2 步: [6,7,1,2,3,4,5]
 向右旋转 3 步: [5,6,7,1,2,3,4]
 示例 2:

 输入：nums = [-1,-100,3,99], k = 2
 输出：[3,99,-1,-100]
 解释:
 向右旋转 1 步: [99,-1,-100,3]
 向右旋转 2 步: [3,99,-1,-100]
  

 作者：力扣 (LeetCode)
 链接：https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2skh7/
 来源：力扣（LeetCode）
 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
 */

import Foundation

class RotateArray: NSObject {
    // 使用数组翻转的方式实现
    class func rotate(_ nums: inout [Int], _ k: Int) {
        
        reverse(&nums, start: 0, end: nums.count-1)
        reverse(&nums, start: 0, end: k-1)
        reverse(&nums, start: k, end: nums.count-1)
        
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
    
    // 使用额外数组存储旋转次数个值
    class func rotate(_ nums: inout [Int], _ k: Int, _ turnLeft: Bool = false) {
        // 数组元素少于2，没有旋转的必要
        if nums.count < 2 {
            return
        }
        
        // 可能旋转次数多余数组个数，取余计算可省略数组个数倍数次的旋转
        var rotateNum = k % nums.count
        
        // 实际需要旋转次数如果为0，直接退出
        if rotateNum == 0 {
            return
        }
        
        // 旋转防线
        var direction = turnLeft
        // 如果换防线位移次数少的话，更换旋转方向和旋转次数
        if nums.count - rotateNum < rotateNum {
            direction = !turnLeft
            rotateNum = nums.count - rotateNum
        }
        
        var temp = [Int]()
        
        for i in 0..<nums.count {
            
            if direction {
                
                // 向左旋转
                if i < rotateNum {
                    temp.append(nums[i])
                }

                if i + rotateNum >= nums.count {
                    nums[i] = temp[i + rotateNum - nums.count]
                } else {
                    nums[i] = nums[i + rotateNum]
                }
                
            } else {
                
                // 向右旋转
                let index = nums.count - 1 - i;
                
                if i < rotateNum {
                    temp.append(nums[index])
                }
                
                if index - rotateNum < 0 {
                    nums[index] = temp[ abs(index - rotateNum + 1) ]
                } else {
                    nums[index] = nums[index - rotateNum]
                }
              
            }
            
        }
        
    }
    
    
    
    
}
