//
//  DeletesDuplicateValuesInArray.swift
//  StudyAlgorithm
//
//  Created by super on 2021/2/8.

/*
删除排序数组中的重复项
给定一个排序数组，你需要在 原地 删除重复出现的元素，使得每个元素只出现一次，返回移除后数组的新长度。

不要使用额外的数组空间，你必须在 原地 修改输入数组 并在使用 O(1) 额外空间的条件下完成。

 

示例 1:

给定数组 nums = [1,1,2],

函数应该返回新的长度 2, 并且原数组 nums 的前两个元素被修改为 1, 2。

你不需要考虑数组中超出新长度后面的元素。
示例 2:

给定 nums = [0,0,1,1,1,2,2,3,3,4],

函数应该返回新的长度 5, 并且原数组 nums 的前五个元素被修改为 0, 1, 2, 3, 4。

你不需要考虑数组中超出新长度后面的元素。

作者：力扣 (LeetCode)
链接：https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2gy9m/
来源：力扣（LeetCode）
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
*/

import Foundation

class DeletesDuplicateValuesInArray: NSObject {
    
    
    class func removeDuplicates(_ nums: inout [Int]) -> Int {
        // 判断数组元素个数少于2，直接返回原数组
        if nums.count < 2  {
            return nums.count
        }
        
        // 不重复的元素个数
        var unDuplicates = 0;
        
        // 使用快慢指针原理，慢指针从0开始，快指针从1开始；
        // 如果快慢指针所指元素不相等，快慢指针都+1，并且改变慢指针的下一位置参数值修改为快指针指向的值
        // 如果快慢指针所指元素相等，快指针+1，慢指针不变
        for i in 1..<nums.count {
            if nums[unDuplicates] != nums[i] {
                nums[unDuplicates + 1] = nums[i]
                unDuplicates = unDuplicates + 1
            }
        }
        
        return unDuplicates + 1
    }
    
    
    
}



