//
//  ReverseLinkedList.swift
//  LearningAlgorithm
//
//  Created by super on 2021/6/9.
//  Copyright © 2021 王章仲. All rights reserved.
//

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
