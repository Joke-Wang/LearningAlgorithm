//
//  LongestCommonPrefix.swift
//  LearningAlgorithm
//
//  Created by super on 2021/3/8.
//  Copyright © 2021 王章仲. All rights reserved.
//

/*
 最长公共前缀
 编写一个函数来查找字符串数组中的最长公共前缀。

 如果不存在公共前缀，返回空字符串 ""。

  

 示例 1：

 输入：strs = ["flower","flow","flight"]
 输出："fl"
 示例 2：

 输入：strs = ["dog","racecar","car"]
 输出：""
 解释：输入不存在公共前缀。
  

 提示：

 0 <= strs.length <= 200
 0 <= strs[i].length <= 200
 strs[i] 仅由小写英文字母组成
 相关标签
 字符串

 作者：力扣 (LeetCode)
 链接：https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnmav1/
 来源：力扣（LeetCode）
 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
 */

import Foundation

class LongestCommonPrefix: NSObject {
    class func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 0 {
            return ""
        }
        
        if strs.count == 1 {
            return strs.first!
        }
        
        var prefix = ""
        
        for prefixIndex in 0..<strs[0].count  {
            
            let firstStr = strs[0] as NSString
            
            if firstStr.length == 0 {
                return ""
            }
            
            for stringItem in 1..<strs.count {
                
                let tmp = strs[stringItem] as NSString
                
                if tmp.length <= prefixIndex {
                    return prefix
                }
                
                if !tmp.substring(with: NSMakeRange(prefixIndex, 1)).elementsEqual(firstStr.substring(with: NSMakeRange(prefixIndex, 1))) {
                    return prefix
                }
            }
            
            prefix.append(firstStr.substring(with: NSMakeRange(prefixIndex, 1)))
            
        }
        return prefix
    }
}
