//
//  ReverseLinkedList.swift
//  LearningAlgorithm
//
//  Created by super on 2021/6/9.
//  Copyright © 2021 王章仲. All rights reserved.
//

/**
 剑指 Offer 24. 反转链表
 定义一个函数，输入一个链表的头节点，反转该链表并输出反转后链表的头节点。

  

 示例:

 输入: 1->2->3->4->5->NULL
 输出: 5->4->3->2->1->NULL
  

 限制：

 0 <= 节点个数 <= 5000
 */

import Foundation


// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class ReverseLinkedList {
    
    class func reverseList(_ head: ListNode?) -> ListNode? {
        var dummyNode: ListNode?
        var currentHead: ListNode? = head
        
        while (currentHead != nil) {
            let tmp = currentHead?.next
            
            currentHead?.next = dummyNode
            
            dummyNode = currentHead
            currentHead = tmp
        }
        return dummyNode
    }
    
}
