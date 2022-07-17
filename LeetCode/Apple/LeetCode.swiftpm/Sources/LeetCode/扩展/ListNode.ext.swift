extension ListNode {
    convenience init?<S>(from sequence: S)
    where S: Sequence, S.Element == Int {
        let root: ListNode = .init(0)
        var current: ListNode? = root
        
        for element in sequence {
            current?.next = .init(element)
            current = current?.next
        }
        
        guard let result = root.next else { return nil }

        self.init(result.val, result.next)
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
