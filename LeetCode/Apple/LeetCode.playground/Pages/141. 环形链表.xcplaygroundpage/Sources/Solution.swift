public extension Solution {
    
//    给 2 个指针，一个指针是另外一个指针的下一个指针。快指针一次走 2 格，慢指针一次走 1 格。如果存在环，那么前一个指针一定会经过若干圈之后追上慢的指针。
    // time beats 95%, space beats 63%
    func hasCycle(_ head: ListNode?) -> Bool {
        var slowPointer = head, fastPointer = head
        while slowPointer != nil && fastPointer != nil && fastPointer?.next != nil {
            slowPointer = slowPointer!.next
            fastPointer = fastPointer!.next!.next
            
            if slowPointer === fastPointer {
                return true
            }
        }
        
        return false
    }
}
