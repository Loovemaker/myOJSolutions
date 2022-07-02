extension ListNode {
    convenience init?(from array: [Int]) {
        var array_ = array
        
        var current: ListNode? = nil
        while let element = array_.popLast() {
            let newNode = ListNode(element, current)
            current = newNode
        }
        
        guard let current = current else { return nil }
        self.init(current.val, current.next)
    }
}

extension ListNode {
    var array: [Int]! {
        var result: [Int] = []
        
        var current = self
        result.append(current.val)
        
        while let next = current.next {
            current = next
            result.append(current.val)
        }
        
        return result
    }
    
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        lhs.array == rhs.array
    }
}

extension ListNode {
    func append(_ val: Int) -> ListNode {
        var current = self
        while let next = current.next {
            current = next
        }
        let next = ListNode(val)
        current.next = .init(val)
        return next
    }
}

extension ListNode: Equatable {
    
}
